package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0012B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "backgroundColorPressed", "backgroundColorSelected", "backgroundColorDisabled", "contentColor", "Landroidx/compose/ui/unit/Dp;", "contentSize", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;", "border", "borderPressed", "borderSelected", "<init>", "(JJLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;JFLandroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Border", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationIconButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Color f48553c;
    public final Color d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f48555f;
    public final PaddingValues g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Border f48556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Border f48557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Border f48558j;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;", "", "None", "Stroke", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Border {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$None;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class None implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final None f48559a = new None();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof None);
            }

            public final int hashCode() {
                return 1094570848;
            }

            public final String toString() {
                return "None";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/unit/Dp;", "width", "<init>", "(JFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Stroke implements Border {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f48560a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final float f48561b;

            public Stroke(long j2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
                this.f48560a = j2;
                this.f48561b = f2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Stroke)) {
                    return false;
                }
                Stroke stroke = (Stroke) obj;
                return Color.c(this.f48560a, stroke.f48560a) && Dp.b(this.f48561b, stroke.f48561b);
            }

            public final int hashCode() {
                Color.Companion companion = Color.f8866b;
                ULong.Companion companion2 = ULong.INSTANCE;
                int iHashCode = Long.hashCode(this.f48560a) * 31;
                Dp.Companion companion3 = Dp.f11004c;
                return Float.hashCode(this.f48561b) + iHashCode;
            }

            public final String toString() {
                return d21.l("Stroke(color=", Color.i(this.f48560a), ", width=", Dp.c(this.f48561b), ")");
            }
        }
    }

    public /* synthetic */ ConfigurationIconButton(long j2, long j3, Color color, Color color2, long j4, float f2, PaddingValues paddingValues, Border border, Border border2, Border border3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, (i2 & 4) != 0 ? null : color, (i2 & 8) != 0 ? null : color2, j4, f2, paddingValues, border, border2, border3, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationIconButton)) {
            return false;
        }
        ConfigurationIconButton configurationIconButton = (ConfigurationIconButton) obj;
        return Color.c(this.f48551a, configurationIconButton.f48551a) && Color.c(this.f48552b, configurationIconButton.f48552b) && Intrinsics.c(this.f48553c, configurationIconButton.f48553c) && Intrinsics.c(this.d, configurationIconButton.d) && Color.c(this.f48554e, configurationIconButton.f48554e) && Dp.b(this.f48555f, configurationIconButton.f48555f) && Intrinsics.c(this.g, configurationIconButton.g) && Intrinsics.c(this.f48556h, configurationIconButton.f48556h) && Intrinsics.c(this.f48557i, configurationIconButton.f48557i) && Intrinsics.c(this.f48558j, configurationIconButton.f48558j);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iA = fc.a(Long.hashCode(this.f48551a) * 31, 31, this.f48552b);
        Color color = this.f48553c;
        int iHashCode = (iA + (color == null ? 0 : Long.hashCode(color.f8872a))) * 31;
        Color color2 = this.d;
        int iA2 = fc.a((iHashCode + (color2 != null ? Long.hashCode(color2.f8872a) : 0)) * 31, 31, this.f48554e);
        Dp.Companion companion3 = Dp.f11004c;
        return this.f48558j.hashCode() + ((this.f48557i.hashCode() + ((this.f48556h.hashCode() + ((this.g.hashCode() + pq0.b(iA2, 31, this.f48555f)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String strI = Color.i(this.f48551a);
        String strI2 = Color.i(this.f48552b);
        String strI3 = Color.i(this.f48554e);
        String strC = Dp.c(this.f48555f);
        StringBuilder sbS = fc.s("ConfigurationIconButton(backgroundColor=", strI, ", backgroundColorPressed=", strI2, ", backgroundColorSelected=");
        sbS.append(this.f48553c);
        sbS.append(", backgroundColorDisabled=");
        sbS.append(this.d);
        sbS.append(", contentColor=");
        cj.C(sbS, strI3, ", contentSize=", strC, ", paddingValues=");
        sbS.append(this.g);
        sbS.append(", border=");
        sbS.append(this.f48556h);
        sbS.append(", borderPressed=");
        sbS.append(this.f48557i);
        sbS.append(", borderSelected=");
        sbS.append(this.f48558j);
        sbS.append(")");
        return sbS.toString();
    }

    public ConfigurationIconButton(long j2, long j3, Color color, Color color2, long j4, float f2, PaddingValues paddingValues, Border border, Border border2, Border border3, DefaultConstructorMarker defaultConstructorMarker) {
        paddingValues.getClass();
        border.getClass();
        border2.getClass();
        border3.getClass();
        this.f48551a = j2;
        this.f48552b = j3;
        this.f48553c = color;
        this.d = color2;
        this.f48554e = j4;
        this.f48555f = f2;
        this.g = paddingValues;
        this.f48556h = border;
        this.f48557i = border2;
        this.f48558j = border3;
    }
}
