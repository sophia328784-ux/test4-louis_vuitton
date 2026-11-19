package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;", "", "Landroidx/compose/ui/graphics/Color;", "checkedThumbColor", "checkedTrackColor", "uncheckedThumbColor", "uncheckedBorderColor", "disabledThumbColor", "disabledTrackColor", "disabledBorderColor", "<init>", "(JJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationSwitch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48585c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f48587f;
    public final long g;

    public ConfigurationSwitch(long j2, long j3, long j4, long j5, long j6, long j7, long j8, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48583a = j2;
        this.f48584b = j3;
        this.f48585c = j4;
        this.d = j5;
        this.f48586e = j6;
        this.f48587f = j7;
        this.g = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationSwitch)) {
            return false;
        }
        ConfigurationSwitch configurationSwitch = (ConfigurationSwitch) obj;
        return Color.c(this.f48583a, configurationSwitch.f48583a) && Color.c(this.f48584b, configurationSwitch.f48584b) && Color.c(this.f48585c, configurationSwitch.f48585c) && Color.c(this.d, configurationSwitch.d) && Color.c(this.f48586e, configurationSwitch.f48586e) && Color.c(this.f48587f, configurationSwitch.f48587f) && Color.c(this.g, configurationSwitch.g);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.g) + fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f48583a) * 31, 31, this.f48584b), 31, this.f48585c), 31, this.d), 31, this.f48586e), 31, this.f48587f);
    }

    public final String toString() {
        String strI = Color.i(this.f48583a);
        String strI2 = Color.i(this.f48584b);
        String strI3 = Color.i(this.f48585c);
        String strI4 = Color.i(this.d);
        String strI5 = Color.i(this.f48586e);
        String strI6 = Color.i(this.f48587f);
        String strI7 = Color.i(this.g);
        StringBuilder sbS = fc.s("ConfigurationSwitch(checkedThumbColor=", strI, ", checkedTrackColor=", strI2, ", uncheckedThumbColor=");
        cj.C(sbS, strI3, ", uncheckedBorderColor=", strI4, ", disabledThumbColor=");
        cj.C(sbS, strI5, ", disabledTrackColor=", strI6, ", disabledBorderColor=");
        return n00.r(strI7, ")", sbS);
    }
}
