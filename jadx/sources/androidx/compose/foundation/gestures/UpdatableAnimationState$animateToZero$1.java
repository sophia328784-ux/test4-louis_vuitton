package androidx.compose.foundation.gestures;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.UpdatableAnimationState", f = "UpdatableAnimationState.kt", l = {100, 151}, m = "animateToZero", v = 1)
final class UpdatableAnimationState$animateToZero$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function f4829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function0 f4830c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ UpdatableAnimationState f4832f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatableAnimationState$animateToZero$1(UpdatableAnimationState updatableAnimationState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f4832f = updatableAnimationState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4831e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f4832f.a(null, null, this);
    }
}
