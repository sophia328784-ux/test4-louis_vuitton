package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.atoms.LVProgressIndicatorKt$LVProgressIndicatorV2$5$1", f = "LVProgressIndicator.kt", l = {178}, m = "invokeSuspend", v = 2)
final class LVProgressIndicatorKt$LVProgressIndicatorV2$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Long f48493c;
    public final /* synthetic */ SnapshotStateList d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVProgressIndicatorKt$LVProgressIndicatorV2$5$1(Long l, SnapshotStateList snapshotStateList, Continuation continuation) {
        super(2, continuation);
        this.f48493c = l;
        this.d = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVProgressIndicatorKt$LVProgressIndicatorV2$5$1(this.f48493c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVProgressIndicatorKt$LVProgressIndicatorV2$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48492b;
        if (i2 == 0) {
            ResultKt.b(obj);
            long jLongValue = this.f48493c.longValue();
            this.f48492b = 1;
            if (DelayKt.b(jLongValue, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.d.set(0, StepState.Animating.f48517a);
        return Unit.f71739a;
    }
}
