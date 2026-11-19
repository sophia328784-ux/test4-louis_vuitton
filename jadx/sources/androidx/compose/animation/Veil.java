package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.Color;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/Veil;", "", "Landroidx/compose/ui/graphics/Color;", "initialColor", "targetColor", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "animationSpec", "", "matchParentSize", "<init>", "(JJLandroidx/compose/animation/core/FiniteAnimationSpec;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Veil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FiniteAnimationSpec f3760c;
    public final boolean d;

    public Veil(long j2, long j3, FiniteAnimationSpec finiteAnimationSpec, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3758a = j2;
        this.f3759b = j3;
        this.f3760c = finiteAnimationSpec;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Veil)) {
            return false;
        }
        Veil veil = (Veil) obj;
        return Color.c(this.f3758a, veil.f3758a) && Color.c(this.f3759b, veil.f3759b) && Intrinsics.c(this.f3760c, veil.f3760c) && this.d == veil.d;
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Boolean.hashCode(this.d) + ((this.f3760c.hashCode() + fc.a(Long.hashCode(this.f3758a) * 31, 31, this.f3759b)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Veil(initialColor=");
        o60.y(this.f3758a, ", targetColor=", sb);
        o60.y(this.f3759b, ", animationSpec=", sb);
        sb.append(this.f3760c);
        sb.append(", matchParentSize=");
        return d21.q(sb, this.d, ')');
    }
}
