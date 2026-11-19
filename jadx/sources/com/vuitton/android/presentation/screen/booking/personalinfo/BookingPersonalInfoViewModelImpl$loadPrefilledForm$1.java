package com.vuitton.android.presentation.screen.booking.personalinfo;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl", f = "BookingPersonalInfoViewModelImpl.kt", l = {239, 241, 244, 244, 248}, m = "loadPrefilledForm", v = 2)
final class BookingPersonalInfoViewModelImpl$loadPrefilledForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f54690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f54691c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f54692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModelImpl f54693f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPersonalInfoViewModelImpl$loadPrefilledForm$1(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54693f = bookingPersonalInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54692e = obj;
        this.g |= Integer.MIN_VALUE;
        return BookingPersonalInfoViewModelImpl.zc(this.f54693f, null, this);
    }
}
