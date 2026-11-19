package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.graphics.Color;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt$LVPagerDot$1$1", f = "LVCapsulePageControl.kt", l = {298}, m = "invokeSuspend", v = 2)
final class LVCapsulePageControlKt$LVPagerDot$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f48647c;
    public final /* synthetic */ PagerDotState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f48648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f48649f;
    public final /* synthetic */ long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVCapsulePageControlKt$LVPagerDot$1$1(Animatable animatable, PagerDotState pagerDotState, int i2, long j2, long j3, Continuation continuation) {
        super(2, continuation);
        this.f48647c = animatable;
        this.d = pagerDotState;
        this.f48648e = i2;
        this.f48649f = j2;
        this.g = j3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVCapsulePageControlKt$LVPagerDot$1$1(this.f48647c, this.d, this.f48648e, this.f48649f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVCapsulePageControlKt$LVPagerDot$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48646b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Color color = new Color(this.d.f48687a.k() == this.f48648e ? this.f48649f : this.g);
            this.f48646b = 1;
            if (Animatable.c(this.f48647c, color, null, null, null, this, 14) == coroutineSingletons) {
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
