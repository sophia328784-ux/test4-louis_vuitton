package androidx.compose.animation.core;

import androidx.collection.IntList;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import defpackage.ov;
import defpackage.tr;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B;\b\u0016\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fBE\b\u0000\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\u000f\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u000b\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/animation/core/VectorizedKeyframesSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;", "", "", "Lkotlin/Pair;", "Landroidx/compose/animation/core/Easing;", "keyframes", "durationMillis", "delayMillis", "<init>", "(Ljava/util/Map;II)V", "Landroidx/collection/IntList;", "timestamps", "Landroidx/collection/IntObjectMap;", "Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;", "defaultEasing", "Landroidx/compose/animation/core/ArcMode;", "initialArcMode", "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntList f4062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntObjectMap f4063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4064c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Easing f4065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4066f;
    public int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float[] f4067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AnimationVector f4068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AnimationVector f4069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AnimationVector f4070k;
    public AnimationVector l;
    public float[] m;
    public float[] n;
    public ArcSpline o;

    public VectorizedKeyframesSpec(Map<Integer, ? extends Pair<? extends V, ? extends Easing>> map, int i2, int i3) {
        MutableIntList mutableIntList = new MutableIntList(map.size() + 2);
        Iterator<Map.Entry<Integer, ? extends Pair<? extends V, ? extends Easing>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            mutableIntList.e(it.next().getKey().intValue());
        }
        if (!map.containsKey(0)) {
            mutableIntList.d();
        }
        if (!map.containsKey(Integer.valueOf(i2))) {
            mutableIntList.e(i2);
        }
        int i4 = mutableIntList.f3256b;
        if (i4 != 0) {
            int[] iArr = mutableIntList.f3255a;
            iArr.getClass();
            Arrays.sort(iArr, 0, i4);
        }
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        for (Map.Entry<Integer, ? extends Pair<? extends V, ? extends Easing>> entry : map.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            Pair<? extends V, ? extends Easing> value = entry.getValue();
            AnimationVector animationVector = (AnimationVector) value.f71705b;
            Easing easing = (Easing) value.f71706c;
            ArcMode.f3836a.getClass();
            mutableIntObjectMap.i(iIntValue, new VectorizedKeyframeSpecElementInfo(animationVector, easing, 0, null));
        }
        ov ovVar = EasingKt.d;
        ArcMode.f3836a.getClass();
        this(mutableIntList, mutableIntObjectMap, i2, i3, ovVar, 0, null);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF4064c() {
        return this.f4064c;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getD() {
        return this.d;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long jA = VectorizedAnimationSpecKt.a(this, j2 / 1000000);
        if (jA < 0) {
            return animationVector3;
        }
        i(animationVector, animationVector2, animationVector3);
        AnimationVector animationVector4 = this.f4069j;
        animationVector4.getClass();
        int i2 = 0;
        if (this.o != VectorizedAnimationSpecKt.f4045c) {
            int i3 = (int) jA;
            int iA = IntList.a(this.f4062a, i3);
            if (iA < -1) {
                iA = -(iA + 2);
            }
            float fH = h(iA, i3, false);
            float[] fArr = this.n;
            ArcSpline.Arc[][] arcArr = this.o.f3838a;
            float f2 = arcArr[0][0].f3839a;
            float f3 = arcArr[arcArr.length - 1][0].f3840b;
            if (fH < f2) {
                fH = f2;
            }
            if (fH <= f3) {
                f3 = fH;
            }
            int length = fArr.length;
            boolean z = false;
            for (ArcSpline.Arc[] arcArr2 : arcArr) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < length - 1) {
                    ArcSpline.Arc arc = arcArr2[i5];
                    if (f3 <= arc.f3840b) {
                        if (arc.p) {
                            fArr[i4] = arc.q;
                            fArr[i4 + 1] = arc.r;
                        } else {
                            arc.c(f3);
                            fArr[i4] = arc.a();
                            fArr[i4 + 1] = arc.b();
                        }
                        z = true;
                    }
                    i4 += 2;
                    i5++;
                }
                if (z) {
                    break;
                }
            }
            int length2 = fArr.length;
            while (i2 < length2) {
                animationVector4.e(fArr[i2], i2);
                i2++;
            }
        } else {
            AnimationVector animationVectorG = g((jA - 1) * 1000000, animationVector, animationVector2, animationVector3);
            AnimationVector animationVectorG2 = g(jA * 1000000, animationVector, animationVector2, animationVector3);
            int f3832e = animationVectorG.getF3832e();
            while (i2 < f3832e) {
                animationVector4.e((animationVectorG.a(i2) - animationVectorG2.a(i2)) * 1000.0f, i2);
                i2++;
            }
        }
        return animationVector4;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4;
        AnimationVector animationVector5;
        AnimationVector animationVector6 = animationVector;
        AnimationVector animationVector7 = animationVector2;
        int iA = (int) VectorizedAnimationSpecKt.a(this, j2 / 1000000);
        IntObjectMap intObjectMap = this.f4063b;
        VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) intObjectMap.b(iA);
        if (vectorizedKeyframeSpecElementInfo != null) {
            return vectorizedKeyframeSpecElementInfo.f4059a;
        }
        if (iA >= this.f4064c) {
            return animationVector7;
        }
        if (iA <= 0) {
            return animationVector6;
        }
        i(animationVector6, animationVector7, animationVector3);
        AnimationVector animationVector8 = this.f4068i;
        animationVector8.getClass();
        ArcSpline arcSpline = this.o;
        ArcSpline arcSpline2 = VectorizedAnimationSpecKt.f4045c;
        IntList intList = this.f4062a;
        int i2 = 0;
        if (arcSpline != arcSpline2) {
            int iA2 = IntList.a(intList, iA);
            if (iA2 < -1) {
                iA2 = -(iA2 + 2);
            }
            float fH = h(iA2, iA, false);
            float[] fArr = this.m;
            ArcSpline.Arc[][] arcArr = this.o.f3838a;
            int length = arcArr.length - 1;
            float f2 = arcArr[0][0].f3839a;
            float f3 = arcArr[length][0].f3840b;
            int length2 = fArr.length;
            if (fH < f2 || fH > f3) {
                if (fH > f3) {
                    f2 = f3;
                } else {
                    length = 0;
                }
                float f4 = fH - f2;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length2 - 1) {
                    ArcSpline.Arc arc = arcArr[length][i4];
                    boolean z = arc.p;
                    float f5 = arc.r;
                    float f6 = arc.q;
                    if (z) {
                        float f7 = arc.f3839a;
                        float f8 = arc.f3847k;
                        float f9 = arc.f3841c;
                        fArr[i3] = (f6 * f4) + tr.a(arc.f3842e, f9, (f2 - f7) * f8, f9);
                        float f10 = arc.d;
                        fArr[i3 + 1] = (f5 * f4) + tr.a(arc.f3843f, f10, (f2 - f7) * f8, f10);
                    } else {
                        arc.c(f2);
                        fArr[i3] = (arc.a() * f4) + (arc.n * arc.f3844h) + f6;
                        fArr[i3 + 1] = (arc.b() * f4) + (arc.o * arc.f3845i) + f5;
                    }
                    i3 += 2;
                    i4++;
                    arcArr = arcArr;
                }
            } else {
                int length3 = arcArr.length;
                int i5 = 0;
                boolean z2 = false;
                while (i5 < length3) {
                    int i6 = i2;
                    int i7 = i6;
                    while (i6 < length2 - 1) {
                        ArcSpline.Arc arc2 = arcArr[i5][i7];
                        if (fH <= arc2.f3840b) {
                            if (arc2.p) {
                                float f11 = arc2.f3839a;
                                float f12 = arc2.f3847k;
                                float f13 = arc2.f3841c;
                                fArr[i6] = tr.a(arc2.f3842e, f13, (fH - f11) * f12, f13);
                                float f14 = arc2.d;
                                fArr[i6 + 1] = tr.a(arc2.f3843f, f14, (fH - f11) * f12, f14);
                            } else {
                                arc2.c(fH);
                                fArr[i6] = (arc2.n * arc2.f3844h) + arc2.q;
                                fArr[i6 + 1] = (arc2.o * arc2.f3845i) + arc2.r;
                            }
                            z2 = true;
                        }
                        i6 += 2;
                        i7++;
                    }
                    if (z2) {
                        break;
                    }
                    i5++;
                    i2 = 0;
                }
            }
            int length4 = fArr.length;
            for (int i8 = 0; i8 < length4; i8++) {
                animationVector8.e(fArr[i8], i8);
            }
        } else {
            int iA3 = IntList.a(intList, iA);
            if (iA3 < -1) {
                iA3 = -(iA3 + 2);
            }
            float fH2 = h(iA3, iA, true);
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo2 = (VectorizedKeyframeSpecElementInfo) intObjectMap.b(intList.b(iA3));
            if (vectorizedKeyframeSpecElementInfo2 != null && (animationVector5 = vectorizedKeyframeSpecElementInfo2.f4059a) != null) {
                animationVector6 = animationVector5;
            }
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo3 = (VectorizedKeyframeSpecElementInfo) intObjectMap.b(intList.b(iA3 + 1));
            if (vectorizedKeyframeSpecElementInfo3 != null && (animationVector4 = vectorizedKeyframeSpecElementInfo3.f4059a) != null) {
                animationVector7 = animationVector4;
            }
            int f3832e = animationVector8.getF3832e();
            for (int i9 = 0; i9 < f3832e; i9++) {
                animationVector8.e((animationVector7.a(i9) * fH2) + ((1.0f - fH2) * animationVector6.a(i9)), i9);
            }
        }
        return animationVector8;
    }

    public final float h(int i2, int i3, boolean z) {
        Easing easing;
        float f2;
        IntList intList = this.f4062a;
        if (i2 >= intList.f3256b - 1) {
            f2 = i3;
        } else {
            int iB = intList.b(i2);
            int iB2 = intList.b(i2 + 1);
            if (i3 != iB) {
                int i4 = iB2 - iB;
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) this.f4063b.b(iB);
                if (vectorizedKeyframeSpecElementInfo == null || (easing = vectorizedKeyframeSpecElementInfo.f4060b) == null) {
                    easing = this.f4065e;
                }
                float f3 = i4;
                float fA = easing.a((i3 - iB) / f3);
                return z ? fA : ((f3 * fA) + iB) / 1000.0f;
            }
            f2 = iB;
        }
        return f2 / 1000.0f;
    }

    public final void i(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        float[] fArr;
        boolean z = this.o != VectorizedAnimationSpecKt.f4045c;
        AnimationVector animationVector4 = this.f4068i;
        IntObjectMap intObjectMap = this.f4063b;
        IntList intList = this.f4062a;
        if (animationVector4 == null) {
            this.f4068i = animationVector.c();
            this.f4069j = animationVector3.c();
            int i2 = intList.f3256b;
            float[] fArr2 = new float[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                fArr2[i3] = intList.b(i3) / 1000.0f;
            }
            this.f4067h = fArr2;
            int i4 = intList.f3256b;
            int[] iArr = new int[i4];
            for (int i5 = 0; i5 < i4; i5++) {
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) intObjectMap.b(intList.b(i5));
                int i6 = vectorizedKeyframeSpecElementInfo != null ? vectorizedKeyframeSpecElementInfo.f4061c : this.f4066f;
                ArcMode.f3836a.getClass();
                if (i6 != 0) {
                    z = true;
                }
                iArr[i5] = i6;
            }
            this.g = iArr;
        }
        if (z) {
            if (this.o != VectorizedAnimationSpecKt.f4045c && Intrinsics.c(this.f4070k, animationVector) && Intrinsics.c(this.l, animationVector2)) {
                return;
            }
            this.f4070k = animationVector;
            this.l = animationVector2;
            int f3832e = animationVector.getF3832e() + (animationVector.getF3832e() % 2);
            this.m = new float[f3832e];
            this.n = new float[f3832e];
            int i7 = intList.f3256b;
            float[][] fArr3 = new float[i7][];
            for (int i8 = 0; i8 < i7; i8++) {
                int iB = intList.b(i8);
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo2 = (VectorizedKeyframeSpecElementInfo) intObjectMap.b(iB);
                if (iB == 0 && vectorizedKeyframeSpecElementInfo2 == null) {
                    fArr = new float[f3832e];
                    for (int i9 = 0; i9 < f3832e; i9++) {
                        fArr[i9] = animationVector.a(i9);
                    }
                } else if (iB == this.f4064c && vectorizedKeyframeSpecElementInfo2 == null) {
                    fArr = new float[f3832e];
                    for (int i10 = 0; i10 < f3832e; i10++) {
                        fArr[i10] = animationVector2.a(i10);
                    }
                } else {
                    vectorizedKeyframeSpecElementInfo2.getClass();
                    AnimationVector animationVector5 = vectorizedKeyframeSpecElementInfo2.f4059a;
                    float[] fArr4 = new float[f3832e];
                    for (int i11 = 0; i11 < f3832e; i11++) {
                        fArr4[i11] = animationVector5.a(i11);
                    }
                    fArr = fArr4;
                }
                fArr3[i8] = fArr;
            }
            this.o = new ArcSpline(this.g, this.f4067h, fArr3);
        }
    }

    public /* synthetic */ VectorizedKeyframesSpec(Map map, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, i2, (i4 & 4) != 0 ? 0 : i3);
    }

    public VectorizedKeyframesSpec(IntList intList, IntObjectMap intObjectMap, int i2, int i3, Easing easing, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4062a = intList;
        this.f4063b = intObjectMap;
        this.f4064c = i2;
        this.d = i3;
        this.f4065e = easing;
        this.f4066f = i4;
        this.g = VectorizedAnimationSpecKt.f4043a;
        float[] fArr = VectorizedAnimationSpecKt.f4044b;
        this.f4067h = fArr;
        this.m = fArr;
        this.n = fArr;
        this.o = VectorizedAnimationSpecKt.f4045c;
    }
}
