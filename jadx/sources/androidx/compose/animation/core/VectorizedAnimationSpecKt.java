package androidx.compose.animation.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VectorizedAnimationSpecKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4043a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f4044b = new float[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArcSpline f4045c = new ArcSpline(new int[2], new float[2], new float[][]{new float[2], new float[2]});

    public static final long a(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, long j2) {
        long f4084a = j2 - ((long) vectorizedDurationBasedAnimationSpec.getF4084a());
        long jB = vectorizedDurationBasedAnimationSpec.b();
        if (f4084a < 0) {
            f4084a = 0;
        }
        return f4084a > jB ? jB : f4084a;
    }
}
