package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;", "", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/graphics/Color;", "enabledBackgroundColor", "enabledTextColor", "enabledIconColor", "disabledBackgroundColor", "disabledTextColor", "disabledIconColor", "Landroidx/compose/ui/graphics/Shape;", "shape", "Landroidx/compose/ui/unit/Dp;", "horizontalPadding", "verticalPadding", "maxWidth", "<init>", "(Landroidx/compose/ui/text/TextStyle;JJJJJJLandroidx/compose/ui/graphics/Shape;FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationTagButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextStyle f48596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48598c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f48600f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shape f48601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f48602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f48603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f48604k;

    public ConfigurationTagButton(TextStyle textStyle, long j2, long j3, long j4, long j5, long j6, long j7, Shape shape, float f2, float f3, float f4, DefaultConstructorMarker defaultConstructorMarker) {
        textStyle.getClass();
        shape.getClass();
        this.f48596a = textStyle;
        this.f48597b = j2;
        this.f48598c = j3;
        this.d = j4;
        this.f48599e = j5;
        this.f48600f = j6;
        this.g = j7;
        this.f48601h = shape;
        this.f48602i = f2;
        this.f48603j = f3;
        this.f48604k = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationTagButton)) {
            return false;
        }
        ConfigurationTagButton configurationTagButton = (ConfigurationTagButton) obj;
        return this.f48596a.equals(configurationTagButton.f48596a) && Color.c(this.f48597b, configurationTagButton.f48597b) && Color.c(this.f48598c, configurationTagButton.f48598c) && Color.c(this.d, configurationTagButton.d) && Color.c(this.f48599e, configurationTagButton.f48599e) && Color.c(this.f48600f, configurationTagButton.f48600f) && Color.c(this.g, configurationTagButton.g) && this.f48601h.equals(configurationTagButton.f48601h) && Dp.b(this.f48602i, configurationTagButton.f48602i) && Dp.b(this.f48603j, configurationTagButton.f48603j) && Dp.b(this.f48604k, configurationTagButton.f48604k);
    }

    public final int hashCode() {
        int iHashCode = this.f48596a.hashCode() * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iHashCode2 = (this.f48601h.hashCode() + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(iHashCode, 31, this.f48597b), 31, this.f48598c), 31, this.d), 31, this.f48599e), 31, this.f48600f), 31, this.g)) * 31;
        Dp.Companion companion3 = Dp.f11004c;
        return Float.hashCode(this.f48604k) + pq0.b(pq0.b(iHashCode2, 31, this.f48602i), 31, this.f48603j);
    }

    public final String toString() {
        String strI = Color.i(this.f48597b);
        String strI2 = Color.i(this.f48598c);
        String strI3 = Color.i(this.d);
        String strI4 = Color.i(this.f48599e);
        String strI5 = Color.i(this.f48600f);
        String strI6 = Color.i(this.g);
        String strC = Dp.c(this.f48602i);
        String strC2 = Dp.c(this.f48603j);
        String strC3 = Dp.c(this.f48604k);
        StringBuilder sb = new StringBuilder("ConfigurationTagButton(style=");
        sb.append(this.f48596a);
        sb.append(", enabledBackgroundColor=");
        sb.append(strI);
        sb.append(", enabledTextColor=");
        cj.C(sb, strI2, ", enabledIconColor=", strI3, ", disabledBackgroundColor=");
        cj.C(sb, strI4, ", disabledTextColor=", strI5, ", disabledIconColor=");
        sb.append(strI6);
        sb.append(", shape=");
        sb.append(this.f48601h);
        sb.append(", horizontalPadding=");
        cj.C(sb, strC, ", verticalPadding=", strC2, ", maxWidth=");
        return n00.r(strC3, ")", sb);
    }
}
