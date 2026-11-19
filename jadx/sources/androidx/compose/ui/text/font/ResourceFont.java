package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/font/ResourceFont;", "Landroidx/compose/ui/text/font/Font;", "", "resId", "Landroidx/compose/ui/text/font/FontWeight;", "weight", "Landroidx/compose/ui/text/font/FontStyle;", "style", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "variationSettings", "Landroidx/compose/ui/text/font/FontLoadingStrategy;", "loadingStrategy", "<init>", "(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ResourceFont implements Font {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FontWeight f10744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10745c;
    public final FontVariation$Settings d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10746e;

    public ResourceFont(int i2, FontWeight fontWeight, int i3, FontVariation$Settings fontVariation$Settings, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        if ((i5 & 2) != 0) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontWeight fontWeight2 = fontWeight;
        if ((i5 & 4) != 0) {
            FontStyle.f10715b.getClass();
            i6 = 0;
        } else {
            i6 = i3;
        }
        if ((i5 & 8) != 0) {
            FontVariation$Setting[] fontVariation$SettingArr = new FontVariation$Setting[0];
            SpreadBuilder spreadBuilder = new SpreadBuilder(3);
            final int i7 = fontWeight2.f10734b;
            if (1 > i7 || i7 >= 1001) {
                InlineClassHelperKt.a("'wght' value must be in [1, 1000]. Actual: " + i7);
            }
            final String str = "wght";
            spreadBuilder.a(new FontVariation$Setting(str, i7) { // from class: androidx.compose.ui.text.font.FontVariation$SettingInt

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final String f10724a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final int f10725b;

                {
                    this.f10724a = str;
                    this.f10725b = i7;
                }

                @Override // androidx.compose.ui.text.font.FontVariation$Setting
                /* JADX INFO: renamed from: a */
                public final float getF10723b() {
                    return this.f10725b;
                }

                @Override // androidx.compose.ui.text.font.FontVariation$Setting
                /* JADX INFO: renamed from: b, reason: from getter */
                public final String getF10724a() {
                    return this.f10724a;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof FontVariation$SettingInt)) {
                        return false;
                    }
                    FontVariation$SettingInt fontVariation$SettingInt = (FontVariation$SettingInt) obj;
                    return Intrinsics.c(this.f10724a, fontVariation$SettingInt.f10724a) && this.f10725b == fontVariation$SettingInt.f10725b;
                }

                public final int hashCode() {
                    return (this.f10724a.hashCode() * 31) + this.f10725b;
                }

                public final String toString() {
                    StringBuilder sb = new StringBuilder("FontVariation.Setting(axisName='");
                    sb.append(this.f10724a);
                    sb.append("', value=");
                    return tr.k(sb, this.f10725b, ')');
                }
            });
            final float f2 = i6;
            if (Call.Parameters.DEFAULT_CAMERA_ZOOM > f2 || f2 > 1.0f) {
                InlineClassHelperKt.a("'ital' must be in 0.0f..1.0f. Actual: " + f2);
            }
            final String str2 = "ital";
            spreadBuilder.a(new FontVariation$Setting(str2, f2) { // from class: androidx.compose.ui.text.font.FontVariation$SettingFloat

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final String f10722a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final float f10723b;

                {
                    this.f10722a = str2;
                    this.f10723b = f2;
                }

                @Override // androidx.compose.ui.text.font.FontVariation$Setting
                /* JADX INFO: renamed from: a, reason: from getter */
                public final float getF10723b() {
                    return this.f10723b;
                }

                @Override // androidx.compose.ui.text.font.FontVariation$Setting
                /* JADX INFO: renamed from: b, reason: from getter */
                public final String getF10724a() {
                    return this.f10722a;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof FontVariation$SettingFloat)) {
                        return false;
                    }
                    FontVariation$SettingFloat fontVariation$SettingFloat = (FontVariation$SettingFloat) obj;
                    return Intrinsics.c(this.f10722a, fontVariation$SettingFloat.f10722a) && this.f10723b == fontVariation$SettingFloat.f10723b;
                }

                public final int hashCode() {
                    return Float.hashCode(this.f10723b) + (this.f10722a.hashCode() * 31);
                }

                public final String toString() {
                    StringBuilder sb = new StringBuilder("FontVariation.Setting(axisName='");
                    sb.append(this.f10722a);
                    sb.append("', value=");
                    return defpackage.a.m(sb, this.f10723b, ')');
                }
            });
            spreadBuilder.b(fontVariation$SettingArr);
            ArrayList arrayList = spreadBuilder.f71925a;
            fontVariation$Settings = new FontVariation$Settings((FontVariation$Setting[]) arrayList.toArray(new FontVariation$Setting[arrayList.size()]));
        }
        FontVariation$Settings fontVariation$Settings2 = fontVariation$Settings;
        if ((i5 & 16) != 0) {
            FontLoadingStrategy.f10712a.getClass();
            i4 = FontLoadingStrategy.f10714c;
        }
        this(i2, fontWeight2, i6, fontVariation$Settings2, i4, null);
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF10746e() {
        return this.f10746e;
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: b, reason: from getter */
    public final FontWeight getF10744b() {
        return this.f10744b;
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getF10745c() {
        return this.f10745c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceFont)) {
            return false;
        }
        ResourceFont resourceFont = (ResourceFont) obj;
        if (this.f10743a != resourceFont.f10743a || !Intrinsics.c(this.f10744b, resourceFont.f10744b)) {
            return false;
        }
        int i2 = resourceFont.f10745c;
        FontStyle.Companion companion = FontStyle.f10715b;
        if (this.f10745c != i2 || !Intrinsics.c(this.d, resourceFont.d)) {
            return false;
        }
        int i3 = resourceFont.f10746e;
        FontLoadingStrategy.Companion companion2 = FontLoadingStrategy.f10712a;
        return this.f10746e == i3;
    }

    public final int hashCode() {
        int i2 = ((this.f10743a * 31) + this.f10744b.f10734b) * 31;
        FontStyle.Companion companion = FontStyle.f10715b;
        int iB = tr.b(this.f10745c, i2, 31);
        FontLoadingStrategy.Companion companion2 = FontLoadingStrategy.f10712a;
        return this.d.f10726a.hashCode() + tr.b(this.f10746e, iB, 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ResourceFont(resId=");
        sb.append(this.f10743a);
        sb.append(", weight=");
        sb.append(this.f10744b);
        sb.append(", style=");
        int i2 = this.f10745c;
        if (i2 == 0) {
            FontStyle.Companion companion = FontStyle.f10715b;
            str = "Normal";
        } else {
            str = i2 == FontStyle.f10716c ? "Italic" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(", loadingStrategy=");
        sb.append((Object) FontLoadingStrategy.a(this.f10746e));
        sb.append(')');
        return sb.toString();
    }

    public ResourceFont(int i2, FontWeight fontWeight, int i3, FontVariation$Settings fontVariation$Settings, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10743a = i2;
        this.f10744b = fontWeight;
        this.f10745c = i3;
        this.d = fontVariation$Settings;
        this.f10746e = i4;
    }
}
