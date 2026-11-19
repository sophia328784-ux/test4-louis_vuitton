package com.airbnb.lottie.compose;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.airbnb.lottie.LottieComposition;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.airbnb.lottie.compose.LottieAnimatableImpl$snapTo$2", f = "LottieAnimatable.kt", l = {}, m = "invokeSuspend")
final class LottieAnimatableImpl$snapTo$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatableImpl f21967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieComposition f21968c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f21969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f21970f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LottieAnimatableImpl$snapTo$2(LottieAnimatableImpl lottieAnimatableImpl, LottieComposition lottieComposition, float f2, int i2, boolean z, Continuation continuation) {
        super(1, continuation);
        this.f21967b = lottieAnimatableImpl;
        this.f21968c = lottieComposition;
        this.d = f2;
        this.f21969e = i2;
        this.f21970f = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new LottieAnimatableImpl$snapTo$2(this.f21967b, this.f21968c, this.d, this.f21969e, this.f21970f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((LottieAnimatableImpl$snapTo$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        LottieAnimatableImpl lottieAnimatableImpl = this.f21967b;
        ((SnapshotMutableStateImpl) lottieAnimatableImpl.f21946j).setValue(this.f21968c);
        lottieAnimatableImpl.s(this.d);
        lottieAnimatableImpl.r(this.f21969e);
        LottieAnimatableImpl.j(lottieAnimatableImpl, false);
        if (this.f21970f) {
            ((SnapshotMutableStateImpl) lottieAnimatableImpl.m).setValue(Long.MIN_VALUE);
        }
        return Unit.f71739a;
    }
}
