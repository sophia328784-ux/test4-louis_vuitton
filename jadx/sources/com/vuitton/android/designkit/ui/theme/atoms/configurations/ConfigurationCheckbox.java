package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;", "", "Landroidx/compose/ui/graphics/Color;", "enabledColor", "enabledBorderColor", "enabledCheckColor", "disabledColor", "disabledBorderColor", "disabledCheckColor", "<init>", "(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationCheckbox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48546c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f48548f;

    public ConfigurationCheckbox(long j2, long j3, long j4, long j5, long j6, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48544a = j2;
        this.f48545b = j3;
        this.f48546c = j4;
        this.d = j5;
        this.f48547e = j6;
        this.f48548f = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationCheckbox)) {
            return false;
        }
        ConfigurationCheckbox configurationCheckbox = (ConfigurationCheckbox) obj;
        return Color.c(this.f48544a, configurationCheckbox.f48544a) && Color.c(this.f48545b, configurationCheckbox.f48545b) && Color.c(this.f48546c, configurationCheckbox.f48546c) && Color.c(this.d, configurationCheckbox.d) && Color.c(this.f48547e, configurationCheckbox.f48547e) && Color.c(this.f48548f, configurationCheckbox.f48548f);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f48548f) + fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f48544a) * 31, 31, this.f48545b), 31, this.f48546c), 31, this.d), 31, this.f48547e);
    }

    public final String toString() {
        String strI = Color.i(this.f48544a);
        String strI2 = Color.i(this.f48545b);
        String strI3 = Color.i(this.f48546c);
        String strI4 = Color.i(this.d);
        String strI5 = Color.i(this.f48547e);
        String strI6 = Color.i(this.f48548f);
        StringBuilder sbS = fc.s("ConfigurationCheckbox(enabledColor=", strI, ", enabledBorderColor=", strI2, ", enabledCheckColor=");
        cj.C(sbS, strI3, ", disabledColor=", strI4, ", disabledBorderColor=");
        return tr.l(sbS, strI5, ", disabledCheckColor=", strI6, ")");
    }
}
