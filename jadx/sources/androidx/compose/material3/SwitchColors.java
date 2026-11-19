package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0007\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/material3/SwitchColors;", "", "Landroidx/compose/ui/graphics/Color;", "checkedThumbColor", "checkedTrackColor", "checkedBorderColor", "checkedIconColor", "uncheckedThumbColor", "uncheckedTrackColor", "uncheckedBorderColor", "uncheckedIconColor", "disabledCheckedThumbColor", "disabledCheckedTrackColor", "disabledCheckedBorderColor", "disabledCheckedIconColor", "disabledUncheckedThumbColor", "disabledUncheckedTrackColor", "disabledUncheckedBorderColor", "disabledUncheckedIconColor", "<init>", "(JJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SwitchColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7350c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7352f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f7353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f7354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f7355j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f7356k;
    public final long l;
    public final long m;
    public final long n;
    public final long o;
    public final long p;

    public SwitchColors(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7348a = j2;
        this.f7349b = j3;
        this.f7350c = j4;
        this.d = j5;
        this.f7351e = j6;
        this.f7352f = j7;
        this.g = j8;
        this.f7353h = j9;
        this.f7354i = j10;
        this.f7355j = j11;
        this.f7356k = j12;
        this.l = j13;
        this.m = j14;
        this.n = j15;
        this.o = j16;
        this.p = j17;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SwitchColors)) {
            return false;
        }
        SwitchColors switchColors = (SwitchColors) obj;
        return Color.c(this.f7348a, switchColors.f7348a) && Color.c(this.f7349b, switchColors.f7349b) && Color.c(this.f7350c, switchColors.f7350c) && Color.c(this.d, switchColors.d) && Color.c(this.f7351e, switchColors.f7351e) && Color.c(this.f7352f, switchColors.f7352f) && Color.c(this.g, switchColors.g) && Color.c(this.f7353h, switchColors.f7353h) && Color.c(this.f7354i, switchColors.f7354i) && Color.c(this.f7355j, switchColors.f7355j) && Color.c(this.f7356k, switchColors.f7356k) && Color.c(this.l, switchColors.l) && Color.c(this.m, switchColors.m) && Color.c(this.n, switchColors.n) && Color.c(this.o, switchColors.o) && Color.c(this.p, switchColors.p);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.p) + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7348a) * 31, 31, this.f7349b), 31, this.f7350c), 31, this.d), 31, this.f7351e), 31, this.f7352f), 31, this.g), 31, this.f7353h), 31, this.f7354i), 31, this.f7355j), 31, this.f7356k), 31, this.l), 31, this.m), 31, this.n), 31, this.o);
    }
}
