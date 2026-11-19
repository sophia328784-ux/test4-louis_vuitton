package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000eB7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;", "", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "textColor", "leadingIconTint", "Landroidx/compose/ui/graphics/Shape;", "shape", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;", "border", "<init>", "(Landroidx/compose/ui/text/TextStyle;JJJLandroidx/compose/ui/graphics/Shape;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Border", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationTag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextStyle f48588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48590c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Shape f48591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Border f48592f;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;", "", "None", "Stroke", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border$Stroke;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Border {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class None implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final None f48593a = new None();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof None);
            }

            public final int hashCode() {
                return -340427907;
            }

            public final String toString() {
                return "None";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border$Stroke;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/unit/Dp;", "width", "<init>", "(JFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Stroke implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f48594a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final float f48595b;

            public Stroke(long j2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
                this.f48594a = j2;
                this.f48595b = f2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Stroke)) {
                    return false;
                }
                Stroke stroke = (Stroke) obj;
                return Color.c(this.f48594a, stroke.f48594a) && Dp.b(this.f48595b, stroke.f48595b);
            }

            public final int hashCode() {
                Color.Companion companion = Color.f8866b;
                ULong.Companion companion2 = ULong.INSTANCE;
                int iHashCode = Long.hashCode(this.f48594a) * 31;
                Dp.Companion companion3 = Dp.f11004c;
                return Float.hashCode(this.f48595b) + iHashCode;
            }

            public final String toString() {
                return d21.l("Stroke(color=", Color.i(this.f48594a), ", width=", Dp.c(this.f48595b), ")");
            }
        }
    }

    public ConfigurationTag(TextStyle textStyle, long j2, long j3, long j4, Shape shape, Border border, DefaultConstructorMarker defaultConstructorMarker) {
        textStyle.getClass();
        shape.getClass();
        border.getClass();
        this.f48588a = textStyle;
        this.f48589b = j2;
        this.f48590c = j3;
        this.d = j4;
        this.f48591e = shape;
        this.f48592f = border;
    }

    public static ConfigurationTag a(ConfigurationTag configurationTag, long j2, long j3, int i2) {
        TextStyle textStyle = configurationTag.f48588a;
        if ((i2 & 4) != 0) {
            j3 = configurationTag.f48590c;
        }
        long j4 = configurationTag.d;
        Shape shape = configurationTag.f48591e;
        Border border = configurationTag.f48592f;
        configurationTag.getClass();
        return new ConfigurationTag(textStyle, j2, j3, j4, shape, border, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationTag)) {
            return false;
        }
        ConfigurationTag configurationTag = (ConfigurationTag) obj;
        return this.f48588a.equals(configurationTag.f48588a) && Color.c(this.f48589b, configurationTag.f48589b) && Color.c(this.f48590c, configurationTag.f48590c) && Color.c(this.d, configurationTag.d) && this.f48591e.equals(configurationTag.f48591e) && this.f48592f.equals(configurationTag.f48592f);
    }

    public final int hashCode() {
        int iHashCode = this.f48588a.hashCode() * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f48592f.hashCode() + ((this.f48591e.hashCode() + fc.a(fc.a(fc.a(iHashCode, 31, this.f48589b), 31, this.f48590c), 31, this.d)) * 31);
    }

    public final String toString() {
        String strI = Color.i(this.f48589b);
        String strI2 = Color.i(this.f48590c);
        String strI3 = Color.i(this.d);
        StringBuilder sb = new StringBuilder("ConfigurationTag(style=");
        sb.append(this.f48588a);
        sb.append(", backgroundColor=");
        sb.append(strI);
        sb.append(", textColor=");
        cj.C(sb, strI2, ", leadingIconTint=", strI3, ", shape=");
        sb.append(this.f48591e);
        sb.append(", border=");
        sb.append(this.f48592f);
        sb.append(")");
        return sb.toString();
    }
}
