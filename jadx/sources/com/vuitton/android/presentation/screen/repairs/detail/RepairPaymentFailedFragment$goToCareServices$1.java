package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment$goToCareServices$1", f = "RepairPaymentFailedFragment.kt", l = {113}, m = "invokeSuspend", v = 2)
final class RepairPaymentFailedFragment$goToCareServices$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairPaymentFailedFragment f63760c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairPaymentFailedFragment$goToCareServices$1(RepairPaymentFailedFragment repairPaymentFailedFragment, Continuation continuation) {
        super(2, continuation);
        this.f63760c = repairPaymentFailedFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairPaymentFailedFragment$goToCareServices$1(this.f63760c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairPaymentFailedFragment$goToCareServices$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63759b;
        if (i2 == 0) {
            ResultKt.b(obj);
            LVEventSender lVEventSender = this.f63760c.H;
            if (lVEventSender == null) {
                Intrinsics.h("eventSender");
                throw null;
            }
            this.f63759b = 1;
            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
