package androidx.compose.animation.core;

import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\nB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006B!\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/core/KeyframesWithSplineSpec;", "T", "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;", "config", "<init>", "(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V", "", "periodicBias", "(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;F)V", "KeyframesWithSplineSpecConfig", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyframesWithSplineSpec<T> implements DurationBasedAnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyframesWithSplineSpecConfig f3901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3902b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;", "T", "Landroidx/compose/animation/core/KeyframesSpecBaseConfig;", "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "<init>", "()V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class KeyframesWithSplineSpecConfig<T> extends KeyframesSpecBaseConfig<T, KeyframesSpec.KeyframeEntity<T>> {
        public KeyframesWithSplineSpecConfig() {
            super(null);
        }
    }

    public KeyframesWithSplineSpec(KeyframesWithSplineSpecConfig<T> keyframesWithSplineSpecConfig) {
        this.f3901a = keyframesWithSplineSpecConfig;
        this.f3902b = Float.NaN;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec a(TwoWayConverter twoWayConverter) {
        int[] iArr;
        Object[] objArr;
        long[] jArr;
        KeyframesWithSplineSpecConfig keyframesWithSplineSpecConfig = this.f3901a;
        MutableIntObjectMap mutableIntObjectMap = keyframesWithSplineSpecConfig.f3900b;
        MutableIntList mutableIntList = new MutableIntList(mutableIntObjectMap.f3261e + 2);
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap(mutableIntObjectMap.f3261e);
        int[] iArr2 = mutableIntObjectMap.f3259b;
        Object[] objArr2 = mutableIntObjectMap.f3260c;
        long[] jArr2 = mutableIntObjectMap.f3258a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j2 = jArr2[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    while (i5 < i4) {
                        if ((j2 & 255) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr2[i6];
                            KeyframesSpec.KeyframeEntity keyframeEntity = (KeyframesSpec.KeyframeEntity) objArr2[i6];
                            mutableIntList.e(i7);
                            mutableIntObjectMap2.i(i7, new Pair(twoWayConverter.getF4034a().invoke(keyframeEntity.f3895a), keyframeEntity.f3896b));
                        }
                        j2 >>= i3;
                        i5++;
                        iArr2 = iArr2;
                        i3 = i3;
                        objArr2 = objArr2;
                        jArr2 = jArr2;
                    }
                    iArr = iArr2;
                    objArr = objArr2;
                    jArr = jArr2;
                    if (i4 != i3) {
                        break;
                    }
                } else {
                    iArr = iArr2;
                    objArr = objArr2;
                    jArr = jArr2;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                iArr2 = iArr;
                objArr2 = objArr;
                jArr2 = jArr;
            }
        }
        if (!mutableIntObjectMap.a(0)) {
            mutableIntList.d();
        }
        if (!mutableIntObjectMap.a(keyframesWithSplineSpecConfig.f3899a)) {
            mutableIntList.e(keyframesWithSplineSpecConfig.f3899a);
        }
        int i8 = mutableIntList.f3256b;
        if (i8 != 0) {
            int[] iArr3 = mutableIntList.f3255a;
            iArr3.getClass();
            Arrays.sort(iArr3, 0, i8);
        }
        return new VectorizedMonoSplineKeyframesSpec(mutableIntList, mutableIntObjectMap2, keyframesWithSplineSpecConfig.f3899a, 0, this.f3902b);
    }

    public KeyframesWithSplineSpec(KeyframesWithSplineSpecConfig<T> keyframesWithSplineSpecConfig, float f2) {
        this(keyframesWithSplineSpecConfig);
        this.f3902b = f2;
    }
}
