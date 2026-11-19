package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingConfirmedListDto;
import com.vuitton.android.data.dto.booking.BookingFormResponseDto;
import com.vuitton.android.data.dto.booking.BookingListDto;
import com.vuitton.android.data.dto.booking.BookingMegatrioDto;
import com.vuitton.android.data.dto.booking.BookingPassDto;
import com.vuitton.android.data.dto.booking.PreBookConfirmRequestDto;
import com.vuitton.android.data.dto.booking.PreBookConfirmResponseDto;
import com.vuitton.android.data.dto.booking.PreBookSummaryDto;
import com.vuitton.android.data.dto.booking.PrebookFormDataDto;
import com.vuitton.android.data.dto.booking.PrebookFormDataResponseDto;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J0\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\bH§@¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u0012H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0013\u001a\u00020\u00122\b\b\u0001\u0010\u0014\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J\"\u0010\u0015\u001a\u00020\u00122\b\b\u0001\u0010\u0016\u001a\u00020\b2\b\b\u0001\u0010\u0014\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00122\b\b\u0001\u0010\u0016\u001a\u00020\bH§@¢\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH§@¢\u0006\u0002\u0010\u0004J\"\u0010\u001c\u001a\u00020\u00032\b\b\u0001\u0010\n\u001a\u00020\b2\b\b\u0001\u0010\u001d\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0017J\u000e\u0010\u001e\u001a\u00020\u001fH§@¢\u0006\u0002\u0010\u0004J\u0018\u0010 \u001a\u00020!2\b\b\u0001\u0010\"\u001a\u00020#H§@¢\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020&2\b\b\u0001\u0010\n\u001a\u00020\bH§@¢\u0006\u0002\u0010\u0019J\u0018\u0010'\u001a\u00020\u00032\b\b\u0001\u0010\n\u001a\u00020\bH§@¢\u0006\u0002\u0010\u0019J\u000e\u0010(\u001a\u00020)H§@¢\u0006\u0002\u0010\u0004¨\u0006*À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/BookingApi;", "", "getBookings", "Lcom/vuitton/android/data/dto/booking/BookingListDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBookingForm", "Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;", "experienceId", "", "prebookId", "bookingId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postBookingsFormUpdate", "Lcom/vuitton/android/data/dto/booking/PrebookFormDataResponseDto;", "prebookFormDataDto", "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;", "(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPreBookSummary", "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;", "addPreBook", "preBookForm", "updatePreBook", "preBookId", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deletePreBook", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllPreBook", "", "updateBooking", "prebookForm", "getConfirmedBookings", "Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;", "confirmPreBook", "Lcom/vuitton/android/data/dto/booking/PreBookConfirmResponseDto;", "confirmForm", "Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;", "(Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBookingPass", "Lcom/vuitton/android/data/dto/booking/BookingPassDto;", "deleteBooking", "getMegatrio", "Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingApi {
    @POST("bookings/prebook")
    Object addPreBook(@Body PrebookFormDataDto prebookFormDataDto, Continuation<? super PreBookSummaryDto> continuation);

    @POST("bookings/prebook/confirm")
    Object confirmPreBook(@Body PreBookConfirmRequestDto preBookConfirmRequestDto, Continuation<? super PreBookConfirmResponseDto> continuation);

    @DELETE("bookings/prebooks")
    Object deleteAllPreBook(Continuation<? super Unit> continuation);

    @DELETE("bookings/{bookingId}")
    Object deleteBooking(@Path("bookingId") String str, Continuation<? super BookingListDto> continuation);

    @DELETE("bookings/prebook/{preBookId}")
    Object deletePreBook(@Path("preBookId") String str, Continuation<? super PreBookSummaryDto> continuation);

    @GET("bookings/form")
    Object getBookingForm(@Query("experienceId") String str, @Query("prebookId") String str2, @Query("bookingId") String str3, Continuation<? super BookingFormResponseDto> continuation);

    @GET("bookings/{bookingId}/pass")
    Object getBookingPass(@Path("bookingId") String str, Continuation<? super BookingPassDto> continuation);

    @GET("bookings")
    Object getBookings(Continuation<? super BookingListDto> continuation);

    @GET("bookings/confirmation-details")
    Object getConfirmedBookings(Continuation<? super BookingConfirmedListDto> continuation);

    @GET("bookings/megatrio")
    Object getMegatrio(Continuation<? super BookingMegatrioDto> continuation);

    @GET("bookings/prebooks")
    Object getPreBookSummary(Continuation<? super PreBookSummaryDto> continuation);

    @POST("bookings/form")
    Object postBookingsFormUpdate(@Body PrebookFormDataDto prebookFormDataDto, Continuation<? super PrebookFormDataResponseDto> continuation);

    @PUT("bookings/{bookingId}")
    Object updateBooking(@Path("bookingId") String str, @Body PrebookFormDataDto prebookFormDataDto, Continuation<? super BookingListDto> continuation);

    @PUT("bookings/prebook/{preBookId}")
    Object updatePreBook(@Path("preBookId") String str, @Body PrebookFormDataDto prebookFormDataDto, Continuation<? super PreBookSummaryDto> continuation);
}
