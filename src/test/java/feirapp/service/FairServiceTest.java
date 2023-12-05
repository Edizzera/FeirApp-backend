package feirapp.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Collections;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import feirapp.model.Fair;
import feirapp.model.FairFilter;
import feirapp.model.WeekDay;
import feirapp.repository.FairRepository;
import jakarta.ws.rs.NotFoundException;

@ExtendWith(MockitoExtension.class)
public class FairServiceTest {


    @Mock
    private FairRepository fairRepository;

    @InjectMocks
    private FairService fairService;

    private Fair fair;

    @BeforeEach
    void setUp() {
        fair = new Fair();
        fair.setId(1L);
    }

    @Test
    void findAll_ShouldReturnListOfFairs() {
        when(fairRepository.listAll()).thenReturn(Collections.singletonList(fair));

        List<Fair> result = fairService.findAll();

        assertNotNull(result);
        assertFalse(result.isEmpty());
        assertEquals(fair, result.get(0));
    }

    @Test
    void findFairByWeekDay_ShouldReturnFilteredFairs() {
        FairFilter filter = new FairFilter();
        filter.setWeekDay(WeekDay.SEXTA);
        when(fairRepository.findByFilter(filter)).thenReturn(Collections.singletonList(fair));

        List<Fair> result = fairService.findFairByWeekDay(filter);

        assertNotNull(result);
        assertFalse(result.isEmpty());
        assertEquals(fair, result.get(0));
    }

    @Test
    void update_ShouldUpdateFair() {
        Fair updatedFair = new Fair();
        updatedFair.setName("Novo nome");
        when(fairRepository.findById(fair.getId())).thenReturn(fair);

        Fair result = fairService.update(fair.getId(), updatedFair);

        assertNotNull(result);
        assertEquals(updatedFair.getName(), result.getName());
        verify(fairRepository).persist(fair);
    }

    @Test
    void update_ShouldThrowExceptionWhenFairNotFound() {
        when(fairRepository.findById(anyLong())).thenReturn(null);

        assertThrows(NotFoundException.class, () -> fairService.update(1L, new Fair()));
    }

    @Test
    void create_ShouldCreateFair() {
        Fair newFair = new Fair();
        newFair.setName("Nova Feira");

        fairService.create(newFair);

        verify(fairRepository).persist(any(Fair.class));
    }

    @Test
    void delete_ShouldDeleteFair() {
        when(fairRepository.deleteById(fair.getId())).thenReturn(true);

        fairService.delete(fair.getId());

        verify(fairRepository).deleteById(fair.getId());
    }

    @Test
    void delete_ShouldThrowExceptionWhenFairNotFound() {
        when(fairRepository.deleteById(anyLong())).thenReturn(false);

        assertThrows(NotFoundException.class, () -> fairService.delete(1L));
    }
    
}
