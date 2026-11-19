package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.SuspendAnimationKt", f = "SuspendAnimation.kt", l = {231, 280}, m = "animate", v = 1)
final class SuspendAnimationKt$animate$4<T, V extends AnimationVector> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimationState f3977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Animation f3978c;
    public Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ref$ObjectRef f3979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f3980f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f3980f = obj;
        this.g |= Integer.MIN_VALUE;
        return SuspendAnimationKt.b(null, null, 0L, null, this);
    }
}
