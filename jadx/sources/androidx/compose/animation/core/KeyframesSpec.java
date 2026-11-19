package androidx.compose.animation.core;

import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import defpackage.ov;
import defpackage.tr;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0007\bB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec;", "T", "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;", "config", "<init>", "(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V", "KeyframesSpecConfig", "KeyframeEntity", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyframesSpecConfig f3897a;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;", "T", "Landroidx/compose/animation/core/KeyframesSpecBaseConfig;", "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "<init>", "()V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class KeyframesSpecConfig<T> extends KeyframesSpecBaseConfig<T, KeyframeEntity<T>> {
        public KeyframesSpecConfig() {
            super(null);
        }

        public final KeyframeEntity a(int i2, Float f2) {
            KeyframeEntity keyframeEntity = new KeyframeEntity(f2, null, 0, 6, null);
            this.f3900b.i(i2, keyframeEntity);
            return keyframeEntity;
        }
    }

    public KeyframesSpec(KeyframesSpecConfig<T> keyframesSpecConfig) {
        this.f3897a = keyframesSpecConfig;
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final VectorizedKeyframesSpec a(TwoWayConverter twoWayConverter) {
        int[] iArr;
        Object[] objArr;
        long[] jArr;
        KeyframesSpecConfig keyframesSpecConfig = this.f3897a;
        MutableIntList mutableIntList = new MutableIntList(keyframesSpecConfig.f3900b.f3261e + 2);
        MutableIntObjectMap mutableIntObjectMap = keyframesSpecConfig.f3900b;
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
                        if ((255 & j2) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr2[i6];
                            KeyframeEntity keyframeEntity = (KeyframeEntity) objArr2[i6];
                            mutableIntList.e(i7);
                            mutableIntObjectMap2.i(i7, new VectorizedKeyframeSpecElementInfo((AnimationVector) twoWayConverter.getF4034a().invoke(keyframeEntity.f3895a), keyframeEntity.f3896b, keyframeEntity.f3898c, null));
                        }
                        j2 >>= i3;
                        i5++;
                        i3 = i3;
                        iArr2 = iArr2;
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
        if (!mutableIntObjectMap.a(keyframesSpecConfig.f3899a)) {
            mutableIntList.e(keyframesSpecConfig.f3899a);
        }
        int i8 = mutableIntList.f3256b;
        if (i8 != 0) {
            int[] iArr3 = mutableIntList.f3255a;
            iArr3.getClass();
            Arrays.sort(iArr3, 0, i8);
        }
        int i9 = keyframesSpecConfig.f3899a;
        ov ovVar = EasingKt.d;
        ArcMode.f3836a.getClass();
        return new VectorizedKeyframesSpec(mutableIntList, mutableIntObjectMap2, i9, 0, ovVar, 0, null);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "T", "Landroidx/compose/animation/core/KeyframeBaseEntity;", "value", "Landroidx/compose/animation/core/Easing;", "easing", "Landroidx/compose/animation/core/ArcMode;", "arcMode", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class KeyframeEntity<T> extends KeyframeBaseEntity<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3898c;

        /* JADX WARN: Illegal instructions before constructor call */
        public KeyframeEntity(Object obj, Easing easing, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            easing = (i3 & 2) != 0 ? EasingKt.d : easing;
            if ((i3 & 4) != 0) {
                ArcMode.f3836a.getClass();
                i2 = 0;
            }
            this(obj, easing, i2, null);
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof KeyframeEntity)) {
                return false;
            }
            KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
            if (Intrinsics.c(keyframeEntity.f3895a, this.f3895a) && Intrinsics.c(keyframeEntity.f3896b, this.f3896b)) {
                int i2 = keyframeEntity.f3898c;
                ArcMode.Companion companion = ArcMode.f3836a;
                if (i2 == this.f3898c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this.f3895a;
            int iHashCode = obj != null ? obj.hashCode() : 0;
            ArcMode.Companion companion = ArcMode.f3836a;
            return this.f3896b.hashCode() + tr.b(this.f3898c, iHashCode * 31, 31);
        }

        public KeyframeEntity(Object obj, Easing easing, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            super(obj, easing, null);
            this.f3898c = i2;
        }
    }
}
