package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", l = {308}, m = "animateDecay", v = 1)
final class SnapFlingBehaviorKt$animateDecay$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationState f4869c;
    public Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4871f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4870e = obj;
        this.f4871f |= Integer.MIN_VALUE;
        return SnapFlingBehaviorKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, this);
    }
}
