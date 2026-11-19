package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentAvailabilitiesDtoResponse;
import com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest;
import com.vuitton.android.data.dto.distantrepairs.PrebookAppointmentDtoRequest;
import com.vuitton.android.data.dto.distantrepairs.PrebookAppointmentDtoResponse;
import com.vuitton.android.data.dto.osa.twist.AppointmentItemDto;
import com.vuitton.android.data.dto.osa.twist.AppointmentsDto;
import com.vuitton.android.data.dto.osa.twist.CancelAppointmentDtoRequest;
import com.vuitton.android.data.dto.osa.twist.CancelAppointmentDtoResponse;
import com.vuitton.android.data.dto.osa.twist.OsaReasonDto;
import com.vuitton.android.data.dto.osa.twist.UpdateAppointmentDtoRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rH§@¢\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\b\u0001\u0010\u0007\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0007\u001a\u00020\u0017H§@¢\u0006\u0002\u0010\u0018J\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u001c\u001a\u00020\u00162\b\b\u0001\u0010\u0007\u001a\u00020\u001dH§@¢\u0006\u0002\u0010\u001eJ$\u0010\u001f\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rH§@¢\u0006\u0002\u0010\u000fJ\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\b\u0001\u0010\u0007\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u0018\u0010!\u001a\u00020\u00162\b\b\u0001\u0010\u0007\u001a\u00020\u0017H§@¢\u0006\u0002\u0010\u0018¨\u0006\"À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/AppointmentApi;", "", "getAppointments", "Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelAppointment", "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;", "dto", "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;", "(Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppointmentAvailabilities", "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;", "storeIds", "", "displayTimeZone", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prebookAppointment", "Lretrofit2/Response;", "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;", "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;", "(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAppointment", "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;", "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;", "(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppointmentsReasons", "", "Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;", "updateAppointment", "Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;", "(Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppointmentAvailabilitiesGuest", "prebookAppointmentGuest", "confirmAppointmentGuest", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppointmentApi {
    @POST("appointments/cancel")
    Object cancelAppointment(@Body CancelAppointmentDtoRequest cancelAppointmentDtoRequest, Continuation<? super CancelAppointmentDtoResponse> continuation);

    @POST("appointments/confirm")
    Object confirmAppointment(@Body ConfirmAppointmentDtoRequest confirmAppointmentDtoRequest, Continuation<? super AppointmentItemDto> continuation);

    @POST("appointments/confirm/guest")
    Object confirmAppointmentGuest(@Body ConfirmAppointmentDtoRequest confirmAppointmentDtoRequest, Continuation<? super AppointmentItemDto> continuation);

    @GET("v2/appointments/availability")
    Object getAppointmentAvailabilities(@Query("storeIds") String str, @Query("displayTimeZone") String str2, Continuation<? super AppointmentAvailabilitiesDtoResponse> continuation);

    @GET("v2/appointments/availability")
    Object getAppointmentAvailabilitiesGuest(@Query("storeIds") String str, @Query("displayTimeZone") String str2, Continuation<? super AppointmentAvailabilitiesDtoResponse> continuation);

    @GET("appointments")
    Object getAppointments(Continuation<? super AppointmentsDto> continuation);

    @GET("appointments/reasons")
    Object getAppointmentsReasons(Continuation<? super List<OsaReasonDto>> continuation);

    @POST("appointments/prebook")
    Object prebookAppointment(@Body PrebookAppointmentDtoRequest prebookAppointmentDtoRequest, Continuation<? super Response<PrebookAppointmentDtoResponse>> continuation);

    @POST("appointments/prebook/guest")
    Object prebookAppointmentGuest(@Body PrebookAppointmentDtoRequest prebookAppointmentDtoRequest, Continuation<? super Response<PrebookAppointmentDtoResponse>> continuation);

    @PUT("appointments/update")
    Object updateAppointment(@Body UpdateAppointmentDtoRequest updateAppointmentDtoRequest, Continuation<? super AppointmentItemDto> continuation);
}
