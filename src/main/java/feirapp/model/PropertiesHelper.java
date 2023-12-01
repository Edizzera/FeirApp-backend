package feirapp.model;

import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;

import lombok.experimental.UtilityClass;

@UtilityClass
public class PropertiesHelper {
    
    public static void copyNonNullProperties(Object source, Object destination) {
        if (source == null || destination == null) {
            throw new IllegalArgumentException("Source and destination objects must not be null");
        }

        Class<?> sourceClass = source.getClass();
        Class<?> destinationClass = destination.getClass();

        Field[] sourceFields = sourceClass.getDeclaredFields();
        Set<String> nullPropertyNames = getNullPropertyNames(source);

        for (Field sourceField : sourceFields) {
            try {
                sourceField.setAccessible(true);
                Object value = sourceField.get(source);
                if (value != null && !nullPropertyNames.contains(sourceField.getName())) {
                    Field destinationField;
                    try {
                        destinationField = destinationClass.getDeclaredField(sourceField.getName());
                    } catch (NoSuchFieldException e) {
                        continue;
                    }
                    destinationField.setAccessible(true);
                    destinationField.set(destination, value);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Could not copy properties from source to destination", e);
            }
        }
    }

    private static Set<String> getNullPropertyNames(Object source) {
        Set<String> nullPropertyNames = new HashSet<>();
        Field[] fields = source.getClass().getDeclaredFields();

        for (Field field : fields) {
            try {
                field.setAccessible(true);
                if (field.get(source) == null) {
                    nullPropertyNames.add(field.getName());
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Could not access properties of source object", e);
            }
        }

        return nullPropertyNames;
    }
}
