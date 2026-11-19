package com.vuitton.android.presentation.screen.booking.form.components;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$RevealExpandedModuleEffect$1$1", f = "BookingReservationScreen.kt", l = {336, 337}, m = "invokeSuspend", v = 2)
final class BookingReservationScreenKt$RevealExpandedModuleEffect$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54470c;
    public final /* synthetic */ Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LazyListState f54471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f54472f;
    public final /* synthetic */ MutableState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingReservationScreenKt$RevealExpandedModuleEffect$1$1(Integer num, LazyListState lazyListState, int i2, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.d = num;
        this.f54471e = lazyListState;
        this.f54472f = i2;
        this.g = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingReservationScreenKt$RevealExpandedModuleEffect$1$1(this.d, this.f54471e, this.f54472f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingReservationScreenKt$RevealExpandedModuleEffect$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
    
        if (r9 == r0) goto L45;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$RevealExpandedModuleEffect$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
