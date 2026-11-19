package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;", "", "Landroidx/compose/ui/graphics/Color;", "textColor", "textColorDisabled", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/unit/Dp;", "verticalSpacing", "<init>", "(JJLandroidx/compose/ui/text/TextStyle;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationLink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f48564c;
    public final float d;

    public ConfigurationLink(long j2, long j3, TextStyle textStyle, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        textStyle.getClass();
        this.f48562a = j2;
        this.f48563b = j3;
        this.f48564c = textStyle;
        this.d = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationLink)) {
            return false;
        }
        ConfigurationLink configurationLink = (ConfigurationLink) obj;
        return Color.c(this.f48562a, configurationLink.f48562a) && Color.c(this.f48563b, configurationLink.f48563b) && this.f48564c.equals(configurationLink.f48564c) && Dp.b(this.d, configurationLink.d);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iE = pq0.e(this.f48564c, fc.a(Long.hashCode(this.f48562a) * 31, 31, this.f48563b), 31);
        Dp.Companion companion3 = Dp.f11004c;
        return Float.hashCode(this.d) + iE;
    }

    public final String toString() {
        String strI = Color.i(this.f48562a);
        String strI2 = Color.i(this.f48563b);
        String strC = Dp.c(this.d);
        StringBuilder sbS = fc.s("ConfigurationLink(textColor=", strI, ", textColorDisabled=", strI2, ", style=");
        sbS.append(this.f48564c);
        sbS.append(", verticalSpacing=");
        sbS.append(strC);
        sbS.append(")");
        return sbS.toString();
    }
}
