package com.vuitton.android.domain.usecase.booking;

import com.vuitton.android.domain.repository.BookingRepository;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;", "", "Lcom/vuitton/android/domain/repository/BookingRepository;", "bookingRepository", "<init>", "(Lcom/vuitton/android/domain/repository/BookingRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PostBookingFormUpdateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingRepository f49494a;

    @Inject
    public PostBookingFormUpdateUseCase(BookingRepository bookingRepository) {
        bookingRepository.getClass();
        this.f49494a = bookingRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(BookingForm bookingForm, String str, String str2, ContinuationImpl continuationImpl) {
        PostBookingFormUpdateUseCase$run$1 postBookingFormUpdateUseCase$run$1;
        if (continuationImpl instanceof PostBookingFormUpdateUseCase$run$1) {
            postBookingFormUpdateUseCase$run$1 = (PostBookingFormUpdateUseCase$run$1) continuationImpl;
            int i2 = postBookingFormUpdateUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                postBookingFormUpdateUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                postBookingFormUpdateUseCase$run$1 = new PostBookingFormUpdateUseCase$run$1(this, continuationImpl);
            }
        } else {
            postBookingFormUpdateUseCase$run$1 = new PostBookingFormUpdateUseCase$run$1(this, continuationImpl);
        }
        Object obj = postBookingFormUpdateUseCase$run$1.f49495b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = postBookingFormUpdateUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            postBookingFormUpdateUseCase$run$1.d = 1;
            Object objK = this.f49494a.k(bookingForm, str, str2, postBookingFormUpdateUseCase$run$1);
            return objK == coroutineSingletons ? coroutineSingletons : objK;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
