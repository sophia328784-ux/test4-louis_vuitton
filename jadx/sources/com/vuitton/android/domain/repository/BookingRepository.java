package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/BookingRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingRepository {
    Object a(ContinuationImpl continuationImpl);

    Object b(String str, ContinuationImpl continuationImpl);

    Object c(PreBookConfirmForm preBookConfirmForm, ContinuationImpl continuationImpl);

    Object d(ContinuationImpl continuationImpl);

    Object e(ContinuationImpl continuationImpl);

    Object f(String str, String str2, String str3, ContinuationImpl continuationImpl);

    Object g(BookingForm bookingForm, ContinuationImpl continuationImpl);

    Object h(String str, ContinuationImpl continuationImpl);

    Object i(String str, BookingForm bookingForm, ContinuationImpl continuationImpl);

    Object j(String str, BookingForm bookingForm, ContinuationImpl continuationImpl);

    Object k(BookingForm bookingForm, String str, String str2, ContinuationImpl continuationImpl);

    Object l(ContinuationImpl continuationImpl);

    Object m(ContinuationImpl continuationImpl);

    Object n(String str, ContinuationImpl continuationImpl);
}
