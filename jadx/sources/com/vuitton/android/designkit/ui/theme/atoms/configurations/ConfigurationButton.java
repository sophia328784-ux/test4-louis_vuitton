package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0017Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "backgroundColorPressed", "backgroundColorDisabled", "contentColor", "contentColorDisabled", "Landroidx/compose/ui/text/TextStyle;", "textStyle", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "iconPaddingValues", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;", "border", "borderPressed", "borderDisabled", "", "widthPressedRatio", "Landroidx/compose/ui/unit/Dp;", "height", "<init>", "(JJJJJLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Border", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48534c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextStyle f48536f;
    public final PaddingValues g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PaddingValues f48537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Border f48538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Border f48539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Border f48540k;
    public final float l;
    public final float m;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;", "", "None", "Stroke", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Border {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class None implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final None f48541a = new None();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof None);
            }

            public final int hashCode() {
                return 1614746503;
            }

            public final String toString() {
                return "None";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/unit/Dp;", "width", "<init>", "(JFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Stroke implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f48542a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final float f48543b;

            public Stroke(long j2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
                this.f48542a = j2;
                this.f48543b = f2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Stroke)) {
                    return false;
                }
                Stroke stroke = (Stroke) obj;
                return Color.c(this.f48542a, stroke.f48542a) && Dp.b(this.f48543b, stroke.f48543b);
            }

            public final int hashCode() {
                Color.Companion companion = Color.f8866b;
                ULong.Companion companion2 = ULong.INSTANCE;
                int iHashCode = Long.hashCode(this.f48542a) * 31;
                Dp.Companion companion3 = Dp.f11004c;
                return Float.hashCode(this.f48543b) + iHashCode;
            }

            public final String toString() {
                return d21.l("Stroke(color=", Color.i(this.f48542a), ", width=", Dp.c(this.f48543b), ")");
            }
        }
    }

    public ConfigurationButton(long j2, long j3, long j4, long j5, long j6, TextStyle textStyle, PaddingValues paddingValues, PaddingValues paddingValues2, Border border, Border border2, Border border3, float f2, float f3, DefaultConstructorMarker defaultConstructorMarker) {
        textStyle.getClass();
        paddingValues.getClass();
        paddingValues2.getClass();
        border.getClass();
        border2.getClass();
        border3.getClass();
        this.f48532a = j2;
        this.f48533b = j3;
        this.f48534c = j4;
        this.d = j5;
        this.f48535e = j6;
        this.f48536f = textStyle;
        this.g = paddingValues;
        this.f48537h = paddingValues2;
        this.f48538i = border;
        this.f48539j = border2;
        this.f48540k = border3;
        this.l = f2;
        this.m = f3;
    }

    public static ConfigurationButton a(ConfigurationButton configurationButton, long j2, long j3, TextStyle textStyle, PaddingValuesImpl paddingValuesImpl, PaddingValuesImpl paddingValuesImpl2, float f2, int i2) {
        long j4 = (i2 & 1) != 0 ? configurationButton.f48532a : j2;
        long j5 = configurationButton.f48533b;
        long j6 = configurationButton.f48534c;
        long j7 = (i2 & 8) != 0 ? configurationButton.d : j3;
        long j8 = configurationButton.f48535e;
        TextStyle textStyle2 = (i2 & 32) != 0 ? configurationButton.f48536f : textStyle;
        PaddingValues paddingValues = (i2 & 64) != 0 ? configurationButton.g : paddingValuesImpl;
        PaddingValues paddingValues2 = (i2 & 128) != 0 ? configurationButton.f48537h : paddingValuesImpl2;
        Border border = configurationButton.f48538i;
        Border border2 = configurationButton.f48539j;
        Border border3 = configurationButton.f48540k;
        float f3 = configurationButton.l;
        float f4 = (i2 & 4096) != 0 ? configurationButton.m : f2;
        configurationButton.getClass();
        textStyle2.getClass();
        return new ConfigurationButton(j4, j5, j6, j7, j8, textStyle2, paddingValues, paddingValues2, border, border2, border3, f3, f4, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationButton)) {
            return false;
        }
        ConfigurationButton configurationButton = (ConfigurationButton) obj;
        return Color.c(this.f48532a, configurationButton.f48532a) && Color.c(this.f48533b, configurationButton.f48533b) && Color.c(this.f48534c, configurationButton.f48534c) && Color.c(this.d, configurationButton.d) && Color.c(this.f48535e, configurationButton.f48535e) && this.f48536f.equals(configurationButton.f48536f) && this.g.equals(configurationButton.g) && this.f48537h.equals(configurationButton.f48537h) && this.f48538i.equals(configurationButton.f48538i) && this.f48539j.equals(configurationButton.f48539j) && this.f48540k.equals(configurationButton.f48540k) && Float.compare(this.l, configurationButton.l) == 0 && Dp.b(this.m, configurationButton.m);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iB = pq0.b((this.f48540k.hashCode() + ((this.f48539j.hashCode() + ((this.f48538i.hashCode() + ((this.f48537h.hashCode() + ((this.g.hashCode() + pq0.e(this.f48536f, fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f48532a) * 31, 31, this.f48533b), 31, this.f48534c), 31, this.d), 31, this.f48535e), 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31, this.l);
        Dp.Companion companion3 = Dp.f11004c;
        return Float.hashCode(this.m) + iB;
    }

    public final String toString() {
        String strI = Color.i(this.f48532a);
        String strI2 = Color.i(this.f48533b);
        String strI3 = Color.i(this.f48534c);
        String strI4 = Color.i(this.d);
        String strI5 = Color.i(this.f48535e);
        String strC = Dp.c(this.m);
        StringBuilder sbS = fc.s("ConfigurationButton(backgroundColor=", strI, ", backgroundColorPressed=", strI2, ", backgroundColorDisabled=");
        cj.C(sbS, strI3, ", contentColor=", strI4, ", contentColorDisabled=");
        sbS.append(strI5);
        sbS.append(", textStyle=");
        sbS.append(this.f48536f);
        sbS.append(", paddingValues=");
        sbS.append(this.g);
        sbS.append(", iconPaddingValues=");
        sbS.append(this.f48537h);
        sbS.append(", border=");
        sbS.append(this.f48538i);
        sbS.append(", borderPressed=");
        sbS.append(this.f48539j);
        sbS.append(", borderDisabled=");
        sbS.append(this.f48540k);
        sbS.append(", widthPressedRatio=");
        sbS.append(this.l);
        sbS.append(", height=");
        return n00.r(strC, ")", sbS);
    }
}
