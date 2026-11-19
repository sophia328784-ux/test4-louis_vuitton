package androidx.compose.animation.core;

import androidx.collection.IntListKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B/\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/animation/core/ArcAnimationSpec;", "T", "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "Landroidx/compose/animation/core/ArcMode;", "mode", "", "durationMillis", "delayMillis", "Landroidx/compose/animation/core/Easing;", "easing", "<init>", "(IIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ArcAnimationSpec<T> implements DurationBasedAnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3835c;
    public final Easing d;

    /* JADX WARN: Illegal instructions before constructor call */
    public ArcAnimationSpec(int i2, int i3, int i4, Easing easing, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i5 & 1) != 0) {
            ArcMode.f3836a.getClass();
            i2 = ArcMode.f3837b;
        }
        this(i2, (i5 & 2) != 0 ? 300 : i3, (i5 & 4) != 0 ? 0 : i4, (i5 & 8) != 0 ? EasingKt.f3862a : easing, null);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec a(TwoWayConverter twoWayConverter) {
        MutableIntList mutableIntList = IntListKt.f3257a;
        MutableIntList mutableIntList2 = new MutableIntList(2);
        mutableIntList2.e(0);
        mutableIntList2.e(this.f3834b);
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.f3262a;
        mutableIntObjectMap.getClass();
        return new VectorizedKeyframesSpec(mutableIntList2, mutableIntObjectMap, this.f3834b, this.f3835c, this.d, this.f3833a, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ArcAnimationSpec)) {
            return false;
        }
        ArcAnimationSpec arcAnimationSpec = (ArcAnimationSpec) obj;
        int i2 = arcAnimationSpec.f3833a;
        ArcMode.Companion companion = ArcMode.f3836a;
        if (this.f3833a == i2 && this.f3834b == arcAnimationSpec.f3834b && this.f3835c == arcAnimationSpec.f3835c) {
            return Intrinsics.c(this.d, arcAnimationSpec.d);
        }
        return false;
    }

    public final int hashCode() {
        ArcMode.Companion companion = ArcMode.f3836a;
        return this.d.hashCode() + (((((Integer.hashCode(this.f3833a) * 31) + this.f3834b) * 31) + this.f3835c) * 31);
    }

    public ArcAnimationSpec(int i2, int i3, int i4, Easing easing, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3833a = i2;
        this.f3834b = i3;
        this.f3835c = i4;
        this.d = easing;
    }
}
