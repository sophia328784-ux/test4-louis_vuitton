package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.error.ErrorDetailsDto;
import com.vuitton.android.data.dto.error.ErrorDto;
import com.vuitton.foundation.model.domain.error.booking.BookingError;
import com.vuitton.foundation.model.domain.error.booking.BookingException;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;", "", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingHttpErrorMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Json f44788a;

    @Inject
    public BookingHttpErrorMapper(Json json) {
        json.getClass();
        this.f44788a = json;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    public final Throwable a(Throwable th) throws Throwable {
        ErrorDetailsDto errorDetailsDto;
        Response response;
        ResponseBody responseBody;
        String strString;
        Object failure;
        List list;
        Object objB;
        HttpException httpException = th instanceof HttpException ? (HttpException) th : null;
        if (httpException == null || (response = httpException.d) == null || (responseBody = response.f79451c) == null || (strString = responseBody.string()) == null) {
            errorDetailsDto = null;
        } else {
            Json json = this.f44788a;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (StringsKt.w(strString)) {
                    objB = null;
                } else {
                    json.getClass();
                    objB = json.b(ErrorDto.INSTANCE.serializer(), strString);
                }
                failure = new Result(objB);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th2);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            ErrorDto errorDto = (ErrorDto) obj;
            if (errorDto == null || (list = errorDto.f45747f) == null) {
                errorDetailsDto = null;
            } else {
                errorDetailsDto = (ErrorDetailsDto) CollectionsKt.firstOrNull(list);
            }
        }
        String str = errorDetailsDto != null ? errorDetailsDto.f45738a : null;
        if (Intrinsics.c(str, BookingError.PREBOOK_WITH_SAME_TIME_SLOT.getErrorCode())) {
            return new BookingException.PrebookWithSameTimeSlot(errorDetailsDto.f45739b);
        }
        if (Intrinsics.c(str, BookingError.APPOINTMENT_ALREADY_EXIST.getErrorCode())) {
            return new BookingException.AppointmentAlreadyExist(errorDetailsDto.f45739b);
        }
        if (Intrinsics.c(str, BookingError.RESERVATION_WITH_SAME_TYPE.getErrorCode())) {
            return new BookingException.ReservationWithSameType(errorDetailsDto.f45739b);
        }
        return Intrinsics.c(str, BookingError.RESERVATION_WITH_SAME_TIME_SLOT.getErrorCode()) ? new BookingException.ReservationWithSameTimeSlot(errorDetailsDto.f45739b) : th;
    }
}
