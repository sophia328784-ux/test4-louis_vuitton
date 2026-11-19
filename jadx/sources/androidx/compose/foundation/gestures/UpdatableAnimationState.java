package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/UpdatableAnimationState;", "", "Landroidx/compose/animation/core/AnimationSpec;", "", "animationSpec", "<init>", "(Landroidx/compose/animation/core/AnimationSpec;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UpdatableAnimationState {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f4824f = new Companion(null);
    public static final AnimationVector1D g = new AnimationVector1D(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VectorizedAnimationSpec f4825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4826b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationVector1D f4827c = g;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4828e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/gestures/UpdatableAnimationState$Companion;", "", "", "VisibilityThreshold", "F", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public UpdatableAnimationState(AnimationSpec<Float> animationSpec) {
        this.f4825a = animationSpec.a(VectorConvertersKt.f4036a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007f A[Catch: all -> 0x003a, PHI: r0 r2 r4 r13
      0x007f: PHI (r0v18 kotlin.jvm.functions.Function1) = (r0v9 kotlin.jvm.functions.Function1), (r0v19 kotlin.jvm.functions.Function1) binds: [B:29:0x0077, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r2v5 kotlin.jvm.functions.Function0) = (r2v3 kotlin.jvm.functions.Function0), (r2v6 kotlin.jvm.functions.Function0) binds: [B:29:0x0077, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r4v4 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1) = 
      (r4v2 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
      (r4v5 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
     binds: [B:29:0x0077, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r13v1 float) = (r13v0 float), (r13v2 float) binds: [B:29:0x0077, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:44:0x00e3, B:20:0x004d, B:36:0x00b2, B:30:0x007f, B:33:0x0092, B:38:0x00b9, B:41:0x00c4), top: B:49:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0091  */
    /* JADX WARN: Code duplicated, block: B:33:0x0092 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:44:0x00e3, B:20:0x004d, B:36:0x00b2, B:30:0x007f, B:33:0x0092, B:38:0x00b9, B:41:0x00c4), top: B:49:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b2 A[Catch: all -> 0x003a, PHI: r0 r2 r4 r13
      0x00b2: PHI (r0v19 kotlin.jvm.functions.Function1) = (r0v18 kotlin.jvm.functions.Function1), (r0v22 kotlin.jvm.functions.Function1) binds: [B:34:0x00af, B:21:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00b2: PHI (r2v6 kotlin.jvm.functions.Function0) = (r2v5 kotlin.jvm.functions.Function0), (r2v8 kotlin.jvm.functions.Function0) binds: [B:34:0x00af, B:21:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00b2: PHI (r4v5 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1) = 
      (r4v4 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
      (r4v7 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
     binds: [B:34:0x00af, B:21:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00b2: PHI (r13v2 float) = (r13v1 float), (r13v5 float) binds: [B:34:0x00af, B:21:0x0050] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:44:0x00e3, B:20:0x004d, B:36:0x00b2, B:30:0x007f, B:33:0x0092, B:38:0x00b9, B:41:0x00c4), top: B:49:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b9 A[Catch: all -> 0x003a, PHI: r0 r2 r4
      0x00b9: PHI (r0v12 kotlin.jvm.functions.Function1) = (r0v18 kotlin.jvm.functions.Function1), (r0v19 kotlin.jvm.functions.Function1) binds: [B:32:0x0091, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r2v4 kotlin.jvm.functions.Function0) = (r2v5 kotlin.jvm.functions.Function0), (r2v6 kotlin.jvm.functions.Function0) binds: [B:32:0x0091, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r4v3 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1) = 
      (r4v4 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
      (r4v5 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
     binds: [B:32:0x0091, B:37:0x00b7] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:44:0x00e3, B:20:0x004d, B:36:0x00b2, B:30:0x007f, B:33:0x0092, B:38:0x00b9, B:41:0x00c4), top: B:49:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c4 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:44:0x00e3, B:20:0x004d, B:36:0x00b2, B:30:0x007f, B:33:0x0092, B:38:0x00b9, B:41:0x00c4), top: B:49:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00af -> B:36:0x00b2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(defpackage.n0 r17, defpackage.pp r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.UpdatableAnimationState.a(n0, pp, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
