package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", l = {349}, m = "animateWithTarget", v = 1)
final class SnapFlingBehaviorKt$animateWithTarget$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4873c;
    public AnimationState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ref$FloatRef f4874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f4875f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4875f = obj;
        this.g |= Integer.MIN_VALUE;
        return SnapFlingBehaviorKt.b(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, this);
    }
}
