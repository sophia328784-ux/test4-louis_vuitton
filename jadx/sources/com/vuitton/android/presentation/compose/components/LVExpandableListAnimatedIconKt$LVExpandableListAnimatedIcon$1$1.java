package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import defpackage.md;
import defpackage.rs;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1", f = "LVExpandableListAnimatedIcon.kt", l = {72}, m = "invokeSuspend", v = 2)
final class LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f50983c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f50984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f50985f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1(boolean z, MutableState mutableState, MutableFloatState mutableFloatState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f50983c = z;
        this.d = mutableState;
        this.f50984e = mutableFloatState;
        this.f50985f = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1(this.f50983c, this.d, this.f50984e, this.f50985f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50982b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableState mutableState = this.d;
            boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            MutableFloatState mutableFloatState = this.f50984e;
            if (zBooleanValue) {
                mutableFloatState.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                TweenSpec tweenSpecC = AnimationSpecKt.c(500, 0, null, 6);
                rs rsVar = new rs(this.f50985f, mutableFloatState, 22);
                this.f50982b = 1;
                if (SuspendAnimationKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, tweenSpecC, rsVar, this, 4) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (this.f50983c) {
                    f2 = 1.0f;
                }
                mutableFloatState.w(f2);
                mutableState.setValue(Boolean.TRUE);
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
