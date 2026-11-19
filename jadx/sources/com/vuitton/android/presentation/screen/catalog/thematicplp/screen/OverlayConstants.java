package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;", "", "", "overlayOpacity", "Landroidx/compose/ui/graphics/Color;", "overlayColor", "<init>", "(FJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OverlayConstants {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f55441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f55442b;

    /* JADX WARN: Illegal instructions before constructor call */
    public OverlayConstants(float f2, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        f2 = (i2 & 1) != 0 ? 0.9f : f2;
        if ((i2 & 2) != 0) {
            Color.f8866b.getClass();
            j2 = Color.f8867c;
        }
        this(f2, j2, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OverlayConstants)) {
            return false;
        }
        OverlayConstants overlayConstants = (OverlayConstants) obj;
        return Float.compare(this.f55441a, overlayConstants.f55441a) == 0 && Color.c(this.f55442b, overlayConstants.f55442b);
    }

    public final int hashCode() {
        int iHashCode = Float.hashCode(this.f55441a) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f55442b) + iHashCode;
    }

    public final String toString() {
        return "OverlayConstants(overlayOpacity=" + this.f55441a + ", overlayColor=" + Color.i(this.f55442b) + ")";
    }

    public OverlayConstants(float f2, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f55441a = f2;
        this.f55442b = j2;
    }
}
