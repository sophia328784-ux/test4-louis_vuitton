package com.vuitton.android.presentation.screen.booking.personalinfo;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl", f = "BookingPersonalInfoViewModelImpl.kt", l = {276}, m = "loadForm", v = 2)
final class BookingPersonalInfoViewModelImpl$loadForm$2 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f54686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModelImpl f54687c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPersonalInfoViewModelImpl$loadForm$2(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54687c = bookingPersonalInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54686b = obj;
        this.d |= Integer.MIN_VALUE;
        String str = BookingPersonalInfoViewModelImpl.w;
        return this.f54687c.Ac(null, null, null, this);
    }
}
