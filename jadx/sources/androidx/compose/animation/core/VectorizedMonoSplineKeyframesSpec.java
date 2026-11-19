package androidx.compose.animation.core;

import androidx.collection.IntList;
import androidx.collection.IntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003BA\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;", "Landroidx/collection/IntList;", "timestamps", "Landroidx/collection/IntObjectMap;", "Lkotlin/Pair;", "Landroidx/compose/animation/core/Easing;", "keyframes", "", "durationMillis", "delayMillis", "", "periodicBias", "<init>", "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedMonoSplineKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntList f4071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntObjectMap f4072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4073c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f4074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AnimationVector f4075f;
    public AnimationVector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float[] f4076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MonoSpline f4077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float[][] f4078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AnimationVector f4079k;
    public AnimationVector l;

    public VectorizedMonoSplineKeyframesSpec(IntList intList, IntObjectMap<Pair<V, Easing>> intObjectMap, int i2, int i3, float f2) {
        this.f4071a = intList;
        this.f4072b = intObjectMap;
        this.f4073c = i2;
        this.d = i3;
        this.f4074e = f2;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF4073c() {
        return this.f4073c;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getD() {
        return this.d;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int i2;
        int iA = (int) VectorizedAnimationSpecKt.a(this, j2 / 1000000);
        i(animationVector, animationVector2, animationVector3);
        int iA2 = IntList.a(this.f4071a, iA);
        if (iA2 < -1) {
            iA2 = -(iA2 + 2);
        }
        AnimationVector animationVector4 = this.g;
        animationVector4.getClass();
        MonoSpline monoSpline = this.f4077i;
        monoSpline.getClass();
        float fH = h(iA2, iA);
        float[] fArr = monoSpline.f3903a;
        float[][] fArr2 = monoSpline.f3904b;
        float[][] fArr3 = monoSpline.f3905c;
        int length = fArr.length;
        int i3 = 0;
        int length2 = fArr2[0].length;
        if (fH <= fArr[0]) {
            i2 = 0;
        } else {
            i2 = length - 1;
            if (fH < fArr[i2]) {
                i2 = -1;
            }
        }
        if (i2 != -1) {
            float[] fArr4 = fArr3[i2];
            if (fArr4.length >= length2) {
                while (i3 < length2) {
                    animationVector4.e(fArr4[i3], i3);
                    i3++;
                }
            }
        } else {
            int i4 = length - 1;
            while (iA2 < i4) {
                int i5 = iA2 + 1;
                float f2 = fArr[i5];
                if (fH <= f2) {
                    float f3 = fArr[iA2];
                    float f4 = f2 - f3;
                    float f5 = (fH - f3) / f4;
                    while (i3 < length2) {
                        float f6 = f5;
                        animationVector4.e(MonoSplineKt.a(f4, f6, fArr2[iA2][i3], fArr2[i5][i3], fArr3[iA2][i3], fArr3[i5][i3]) / f4, i3);
                        i3++;
                        f5 = f6;
                    }
                    break;
                }
                iA2 = i5;
            }
        }
        return animationVector4;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int i2;
        int iA = (int) VectorizedAnimationSpecKt.a(this, j2 / 1000000);
        Pair pair = (Pair) this.f4072b.b(iA);
        if (pair != null) {
            return (AnimationVector) pair.f71705b;
        }
        if (iA >= this.f4073c) {
            return animationVector2;
        }
        if (iA <= 0) {
            return animationVector;
        }
        i(animationVector, animationVector2, animationVector3);
        int iA2 = IntList.a(this.f4071a, iA);
        if (iA2 < -1) {
            iA2 = -(iA2 + 2);
        }
        AnimationVector animationVector4 = this.f4075f;
        animationVector4.getClass();
        MonoSpline monoSpline = this.f4077i;
        monoSpline.getClass();
        float fH = h(iA2, iA);
        float[][] fArr = monoSpline.f3905c;
        float[] fArr2 = monoSpline.d;
        float[] fArr3 = monoSpline.f3903a;
        int length = fArr3.length;
        float[][] fArr4 = monoSpline.f3904b;
        int i3 = 0;
        float[] fArr5 = fArr4[0];
        int length2 = fArr5.length;
        float f2 = fArr3[0];
        if (fH <= f2) {
            i2 = 0;
        } else {
            i2 = length - 1;
            if (fH < fArr3[i2]) {
                i2 = -1;
            }
        }
        if (i2 != -1) {
            float f3 = fArr3[i2];
            int length3 = fArr5.length;
            int length4 = fArr3.length - 1;
            float f4 = fArr3[length4];
            if (f3 >= f2) {
                f2 = f3;
            }
            if (f2 <= f4) {
                f4 = f2;
            }
            if (fArr2.length >= length3) {
                int i4 = 0;
                while (i4 < length4) {
                    int i5 = i4 + 1;
                    float f5 = fArr3[i5];
                    if (f4 <= f5) {
                        float f6 = fArr3[i4];
                        float f7 = f5 - f6;
                        float f8 = (f4 - f6) / f7;
                        int i6 = 0;
                        while (i6 < length3) {
                            float f9 = f8;
                            fArr2[i6] = MonoSplineKt.a(f7, f9, fArr4[i4][i6], fArr4[i5][i6], fArr[i4][i6], fArr[i5][i6]) / f7;
                            i6++;
                            f8 = f9;
                        }
                        break;
                    }
                    i4 = i5;
                }
            }
            while (i3 < length2) {
                animationVector4.e(((fH - fArr3[i2]) * fArr2[i3]) + fArr4[i2][i3], i3);
                i3++;
            }
        } else {
            int i7 = length - 1;
            while (iA2 < i7) {
                float f10 = fArr3[iA2];
                if (fH == f10) {
                    while (i3 < length2) {
                        animationVector4.e(fArr4[iA2][i3], i3);
                        i3++;
                    }
                    break;
                }
                int i8 = iA2 + 1;
                float f11 = fArr3[i8];
                if (fH < f11) {
                    float f12 = f11 - f10;
                    float f13 = (fH - f10) / f12;
                    while (i3 < length2) {
                        float f14 = fArr4[iA2][i3];
                        float f15 = f13 * f13;
                        float f16 = f15 * f13;
                        float f17 = (f13 - (2.0f * f15)) + f16;
                        animationVector4.e(((((f16 - f15) * (fArr[i8][i3] * f12)) + (f17 * (fArr[iA2][i3] * f12))) + f14) - ((f14 - fArr4[i8][i3]) * ((3.0f * f15) - (2.0f * f16))), i3);
                        i3++;
                    }
                    break;
                }
                iA2 = i8;
            }
        }
        return animationVector4;
    }

    public final float h(int i2, int i3) {
        Easing easing;
        float fA;
        IntList intList = this.f4071a;
        if (i2 >= intList.f3256b - 1) {
            fA = i3;
        } else {
            int iB = intList.b(i2);
            int iB2 = intList.b(i2 + 1);
            if (i3 == iB) {
                fA = iB;
            } else {
                int i4 = iB2 - iB;
                Pair pair = (Pair) this.f4072b.b(intList.b(i2));
                if (pair == null || (easing = (Easing) pair.f71706c) == null) {
                    easing = EasingKt.d;
                }
                float f2 = i3 - iB;
                float f3 = i4;
                fA = (easing.a(f2 / f3) * f3) + iB;
            }
        }
        return fA / 1000.0f;
    }

    public final void i(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        float[] fArr;
        AnimationVector animationVector4 = this.f4075f;
        IntList intList = this.f4071a;
        if (animationVector4 == null) {
            this.f4075f = animationVector.c();
            this.g = animationVector3.c();
            int i2 = intList.f3256b;
            float[] fArr2 = new float[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                fArr2[i3] = intList.b(i3) / 1000.0f;
            }
            this.f4076h = fArr2;
        }
        if (this.f4077i != null && Intrinsics.c(this.f4079k, animationVector) && Intrinsics.c(this.l, animationVector2)) {
            return;
        }
        boolean zC = Intrinsics.c(this.f4079k, animationVector);
        boolean zC2 = Intrinsics.c(this.l, animationVector2);
        this.f4079k = animationVector;
        this.l = animationVector2;
        int f3832e = animationVector.getF3832e();
        float[][] fArr3 = this.f4078j;
        int i4 = this.f4073c;
        IntObjectMap intObjectMap = this.f4072b;
        if (fArr3 == null) {
            int i5 = intList.f3256b;
            fArr3 = new float[i5][];
            for (int i6 = 0; i6 < i5; i6++) {
                int iB = intList.b(i6);
                Pair pair = (Pair) intObjectMap.b(iB);
                if (iB == 0 && pair == null) {
                    fArr = new float[f3832e];
                    for (int i7 = 0; i7 < f3832e; i7++) {
                        fArr[i7] = animationVector.a(i7);
                    }
                } else if (iB == i4 && pair == null) {
                    fArr = new float[f3832e];
                    for (int i8 = 0; i8 < f3832e; i8++) {
                        fArr[i8] = animationVector2.a(i8);
                    }
                } else {
                    pair.getClass();
                    AnimationVector animationVector5 = (AnimationVector) pair.f71705b;
                    float[] fArr4 = new float[f3832e];
                    for (int i9 = 0; i9 < f3832e; i9++) {
                        fArr4[i9] = animationVector5.a(i9);
                    }
                    fArr = fArr4;
                }
                fArr3[i6] = fArr;
            }
            this.f4078j = fArr3;
        } else {
            if (!zC && !intObjectMap.a(0)) {
                int iA = IntList.a(intList, 0);
                float[] fArr5 = new float[f3832e];
                for (int i10 = 0; i10 < f3832e; i10++) {
                    fArr5[i10] = animationVector.a(i10);
                }
                fArr3[iA] = fArr5;
            }
            if (!zC2 && !intObjectMap.a(i4)) {
                int iA2 = IntList.a(intList, i4);
                float[] fArr6 = new float[f3832e];
                for (int i11 = 0; i11 < f3832e; i11++) {
                    fArr6[i11] = animationVector2.a(i11);
                }
                fArr3[iA2] = fArr6;
            }
        }
        float[] fArr7 = this.f4076h;
        if (fArr7 == null) {
            Intrinsics.h("times");
            throw null;
        }
        this.f4077i = new MonoSpline(fArr7, fArr3, this.f4074e);
    }
}
