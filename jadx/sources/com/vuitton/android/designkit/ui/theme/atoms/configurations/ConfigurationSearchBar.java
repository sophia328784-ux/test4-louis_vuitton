package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;", "", "Landroidx/compose/ui/graphics/Color;", "textColor", "hintTextColor", "leadIconColor", "backgroundColor", "<init>", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationSearchBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48578c;
    public final long d;

    public ConfigurationSearchBar(long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48576a = j2;
        this.f48577b = j3;
        this.f48578c = j4;
        this.d = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationSearchBar)) {
            return false;
        }
        ConfigurationSearchBar configurationSearchBar = (ConfigurationSearchBar) obj;
        return Color.c(this.f48576a, configurationSearchBar.f48576a) && Color.c(this.f48577b, configurationSearchBar.f48577b) && Color.c(this.f48578c, configurationSearchBar.f48578c) && Color.c(this.d, configurationSearchBar.d);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.d) + fc.a(fc.a(Long.hashCode(this.f48576a) * 31, 31, this.f48577b), 31, this.f48578c);
    }

    public final String toString() {
        String strI = Color.i(this.f48576a);
        String strI2 = Color.i(this.f48577b);
        return tr.l(fc.s("ConfigurationSearchBar(textColor=", strI, ", hintTextColor=", strI2, ", leadIconColor="), Color.i(this.f48578c), ", backgroundColor=", Color.i(this.d), ")");
    }
}
