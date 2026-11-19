package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAcceptBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAppointmentDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCancellationBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceConfirmAddressBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationResponseDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceShortDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u0018\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000eH§@¢\u0006\u0002\u0010\u000fJ$\u0010\u0010\u001a\u00020\u00112\b\b\u0001\u0010\b\u001a\u00020\t2\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H§@¢\u0006\u0002\u0010\u0014J\"\u0010\u0015\u001a\u00020\u00112\b\b\u0001\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0012\u001a\u00020\u0016H§@¢\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\u00020\u00112\b\b\u0001\u0010\b\u001a\u00020\t2\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0002\u0010\u001bJ$\u0010\u001c\u001a\u00020\u00112\b\b\u0001\u0010\b\u001a\u00020\t2\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H§@¢\u0006\u0002\u0010\u0014J$\u0010\u001d\u001a\u00020\u00112\b\b\u0001\u0010\b\u001a\u00020\t2\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001fH§@¢\u0006\u0002\u0010 ¨\u0006!À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;", "", "getRepairs", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRepairDetail", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;", "repairId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createRepair", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;", "careServiceCreateDto", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;", "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateRepairAddress", "", "body", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmRepairAddresses", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelRepair", "careServiceCancellationBodyDto", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acceptRepair", "updateRepairAppointment", "appointmentDto", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CareServicesBffApi {
    @POST("repairs/{repairId}/accept")
    Object acceptRepair(@Path("repairId") String str, @Body CareServiceAcceptBodyDto careServiceAcceptBodyDto, Continuation<? super Unit> continuation);

    @POST("repairs/{repairId}/cancel")
    Object cancelRepair(@Path("repairId") String str, @Body CareServiceCancellationBodyDto careServiceCancellationBodyDto, Continuation<? super Unit> continuation);

    @POST("repairs/{repairId}/confirm-address")
    Object confirmRepairAddresses(@Path("repairId") String str, @Body CareServiceConfirmAddressBodyDto careServiceConfirmAddressBodyDto, Continuation<? super Unit> continuation);

    @POST("repairs")
    Object createRepair(@Body CareServiceCreationDto careServiceCreationDto, Continuation<? super CareServiceCreationResponseDto> continuation);

    @GET("v2/repairs/{repairId}")
    Object getRepairDetail(@Path("repairId") String str, Continuation<? super CareServiceDetailDto> continuation);

    @GET("repairs")
    Object getRepairs(Continuation<? super List<CareServiceShortDto>> continuation);

    @PATCH("repairs/{repairId}")
    Object updateRepairAddress(@Path("repairId") String str, @Body CareServiceAcceptBodyDto careServiceAcceptBodyDto, Continuation<? super Unit> continuation);

    @PUT("repairs/{repairId}/appointment")
    Object updateRepairAppointment(@Path("repairId") String str, @Body CareServiceAppointmentDto careServiceAppointmentDto, Continuation<? super Unit> continuation);
}
