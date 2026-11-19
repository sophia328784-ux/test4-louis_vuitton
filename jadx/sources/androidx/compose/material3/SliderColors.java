package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/material3/SliderColors;", "", "Landroidx/compose/ui/graphics/Color;", "thumbColor", "activeTrackColor", "activeTickColor", "inactiveTrackColor", "inactiveTickColor", "disabledThumbColor", "disabledActiveTrackColor", "disabledActiveTickColor", "disabledInactiveTrackColor", "disabledInactiveTickColor", "<init>", "(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SliderColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7229c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7231f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f7232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f7233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f7234j;

    public SliderColors(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7227a = j2;
        this.f7228b = j3;
        this.f7229c = j4;
        this.d = j5;
        this.f7230e = j6;
        this.f7231f = j7;
        this.g = j8;
        this.f7232h = j9;
        this.f7233i = j10;
        this.f7234j = j11;
    }

    public final long a(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.f7228b : this.d;
        }
        return z2 ? this.g : this.f7233i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SliderColors)) {
            return false;
        }
        SliderColors sliderColors = (SliderColors) obj;
        return Color.c(this.f7227a, sliderColors.f7227a) && Color.c(this.f7228b, sliderColors.f7228b) && Color.c(this.f7229c, sliderColors.f7229c) && Color.c(this.d, sliderColors.d) && Color.c(this.f7230e, sliderColors.f7230e) && Color.c(this.f7231f, sliderColors.f7231f) && Color.c(this.g, sliderColors.g) && Color.c(this.f7232h, sliderColors.f7232h) && Color.c(this.f7233i, sliderColors.f7233i) && Color.c(this.f7234j, sliderColors.f7234j);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f7234j) + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7227a) * 31, 31, this.f7228b), 31, this.f7229c), 31, this.d), 31, this.f7230e), 31, this.f7231f), 31, this.g), 31, this.f7232h), 31, this.f7233i);
    }
}
