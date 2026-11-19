package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "vectorValue", "Landroidx/compose/animation/core/Easing;", "easing", "Landroidx/compose/animation/core/ArcMode;", "arcMode", "<init>", "(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class VectorizedKeyframeSpecElementInfo<V extends AnimationVector> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimationVector f4059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Easing f4060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4061c;

    public VectorizedKeyframeSpecElementInfo(AnimationVector animationVector, Easing easing, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4059a = animationVector;
        this.f4060b = easing;
        this.f4061c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VectorizedKeyframeSpecElementInfo)) {
            return false;
        }
        VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) obj;
        if (!Intrinsics.c(this.f4059a, vectorizedKeyframeSpecElementInfo.f4059a) || !Intrinsics.c(this.f4060b, vectorizedKeyframeSpecElementInfo.f4060b)) {
            return false;
        }
        int i2 = vectorizedKeyframeSpecElementInfo.f4061c;
        ArcMode.Companion companion = ArcMode.f3836a;
        return this.f4061c == i2;
    }

    public final int hashCode() {
        int iHashCode = (this.f4060b.hashCode() + (this.f4059a.hashCode() * 31)) * 31;
        ArcMode.Companion companion = ArcMode.f3836a;
        return Integer.hashCode(this.f4061c) + iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VectorizedKeyframeSpecElementInfo(vectorValue=");
        sb.append(this.f4059a);
        sb.append(", easing=");
        sb.append(this.f4060b);
        sb.append(", arcMode=");
        ArcMode.Companion companion = ArcMode.f3836a;
        sb.append((Object) ("ArcMode(value=" + this.f4061c + ')'));
        sb.append(')');
        return sb.toString();
    }
}
