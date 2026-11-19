package com.vuitton.android.presentation.screen.booking.personalinfo;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl", f = "BookingPersonalInfoViewModelImpl.kt", l = {231}, m = "loadBookingPolicy", v = 2)
final class BookingPersonalInfoViewModelImpl$loadBookingPolicy$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f54677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModelImpl f54678c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPersonalInfoViewModelImpl$loadBookingPolicy$1(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54678c = bookingPersonalInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54677b = obj;
        this.d |= Integer.MIN_VALUE;
        return BookingPersonalInfoViewModelImpl.yc(this.f54678c, this);
    }
}
