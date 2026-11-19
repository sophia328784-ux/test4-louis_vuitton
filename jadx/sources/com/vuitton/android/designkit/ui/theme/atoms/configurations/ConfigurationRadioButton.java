package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;", "", "Landroidx/compose/ui/graphics/Color;", "enabledColorChecked", "enabledColorUnchecked", "disabledColorChecked", "disabledColorUnchecked", "internalColor", "<init>", "(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationRadioButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48574c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48575e;

    public ConfigurationRadioButton(long j2, long j3, long j4, long j5, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48572a = j2;
        this.f48573b = j3;
        this.f48574c = j4;
        this.d = j5;
        this.f48575e = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationRadioButton)) {
            return false;
        }
        ConfigurationRadioButton configurationRadioButton = (ConfigurationRadioButton) obj;
        return Color.c(this.f48572a, configurationRadioButton.f48572a) && Color.c(this.f48573b, configurationRadioButton.f48573b) && Color.c(this.f48574c, configurationRadioButton.f48574c) && Color.c(this.d, configurationRadioButton.d) && Color.c(this.f48575e, configurationRadioButton.f48575e);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f48575e) + fc.a(fc.a(fc.a(Long.hashCode(this.f48572a) * 31, 31, this.f48573b), 31, this.f48574c), 31, this.d);
    }

    public final String toString() {
        String strI = Color.i(this.f48572a);
        String strI2 = Color.i(this.f48573b);
        String strI3 = Color.i(this.f48574c);
        String strI4 = Color.i(this.d);
        String strI5 = Color.i(this.f48575e);
        StringBuilder sbS = fc.s("ConfigurationRadioButton(enabledColorChecked=", strI, ", enabledColorUnchecked=", strI2, ", disabledColorChecked=");
        cj.C(sbS, strI3, ", disabledColorUnchecked=", strI4, ", internalColor=");
        return n00.r(strI5, ")", sbS);
    }
}
