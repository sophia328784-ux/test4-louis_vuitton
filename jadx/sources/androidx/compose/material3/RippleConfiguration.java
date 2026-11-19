package androidx.compose.material3;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/RippleConfiguration;", "", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/material/ripple/RippleAlpha;", "rippleAlpha", "<init>", "(JLandroidx/compose/material/ripple/RippleAlpha;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RippleConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RippleAlpha f7162b;

    /* JADX WARN: Illegal instructions before constructor call */
    public RippleConfiguration(long j2, RippleAlpha rippleAlpha, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j2 = Color.f8871i;
        }
        this(j2, (i2 & 2) != 0 ? null : rippleAlpha, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleConfiguration)) {
            return false;
        }
        RippleConfiguration rippleConfiguration = (RippleConfiguration) obj;
        return Color.c(this.f7161a, rippleConfiguration.f7161a) && Intrinsics.c(this.f7162b, rippleConfiguration.f7162b);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iHashCode = Long.hashCode(this.f7161a) * 31;
        RippleAlpha rippleAlpha = this.f7162b;
        return iHashCode + (rippleAlpha != null ? rippleAlpha.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RippleConfiguration(color=");
        o60.y(this.f7161a, ", rippleAlpha=", sb);
        sb.append(this.f7162b);
        sb.append(')');
        return sb.toString();
    }

    public RippleConfiguration(long j2, RippleAlpha rippleAlpha, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7161a = j2;
        this.f7162b = rippleAlpha;
    }
}
