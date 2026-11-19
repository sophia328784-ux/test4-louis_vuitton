package androidx.compose.ui.text;

import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001Be\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019Be\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/text/TextLayoutInput;", "", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "", "maxLines", "", "softWrap", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "resourceLoader", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/Font$ResourceLoader;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLayoutInput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f10543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f10544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f10545c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f10546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10547f;
    public final Density g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LayoutDirection f10548h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FontFamily.Resolver f10549i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f10550j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Font.ResourceLoader f10551k;

    public TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i2, boolean z, int i3, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, FontFamily.Resolver resolver, long j2) {
        this.f10543a = annotatedString;
        this.f10544b = textStyle;
        this.f10545c = list;
        this.d = i2;
        this.f10546e = z;
        this.f10547f = i3;
        this.g = density;
        this.f10548h = layoutDirection;
        this.f10549i = resolver;
        this.f10550j = j2;
        this.f10551k = resourceLoader;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = (TextLayoutInput) obj;
        if (!Intrinsics.c(this.f10543a, textLayoutInput.f10543a) || !Intrinsics.c(this.f10544b, textLayoutInput.f10544b) || !Intrinsics.c(this.f10545c, textLayoutInput.f10545c) || this.d != textLayoutInput.d || this.f10546e != textLayoutInput.f10546e) {
            return false;
        }
        int i2 = textLayoutInput.f10547f;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        return this.f10547f == i2 && Intrinsics.c(this.g, textLayoutInput.g) && this.f10548h == textLayoutInput.f10548h && Intrinsics.c(this.f10549i, textLayoutInput.f10549i) && Constraints.b(this.f10550j, textLayoutInput.f10550j);
    }

    public final int hashCode() {
        int iB = o60.b((n00.a(pq0.e(this.f10544b, this.f10543a.hashCode() * 31, 31), 31, this.f10545c) + this.d) * 31, 31, this.f10546e);
        TextOverflow.Companion companion = TextOverflow.f10989a;
        int iHashCode = (this.f10549i.hashCode() + ((this.f10548h.hashCode() + ((this.g.hashCode() + tr.b(this.f10547f, iB, 31)) * 31)) * 31)) * 31;
        Constraints.Companion companion2 = Constraints.f10998b;
        return Long.hashCode(this.f10550j) + iHashCode;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("TextLayoutInput(text=");
        sb.append((Object) this.f10543a);
        sb.append(", style=");
        sb.append(this.f10544b);
        sb.append(", placeholders=");
        sb.append(this.f10545c);
        sb.append(", maxLines=");
        sb.append(this.d);
        sb.append(", softWrap=");
        sb.append(this.f10546e);
        sb.append(", overflow=");
        int i2 = TextOverflow.f10990b;
        int i3 = this.f10547f;
        if (i3 == i2) {
            str = "Clip";
        } else if (i3 == TextOverflow.f10991c) {
            str = "Ellipsis";
        } else if (i3 == TextOverflow.f10993f) {
            str = "MiddleEllipsis";
        } else if (i3 == TextOverflow.d) {
            str = "Visible";
        } else {
            str = i3 == TextOverflow.f10992e ? "StartEllipsis" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(", density=");
        sb.append(this.g);
        sb.append(", layoutDirection=");
        sb.append(this.f10548h);
        sb.append(", fontFamilyResolver=");
        sb.append(this.f10549i);
        sb.append(", constraints=");
        sb.append((Object) Constraints.l(this.f10550j));
        sb.append(')');
        return sb.toString();
    }

    @Deprecated
    public TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i2, boolean z, int i3, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, list, i2, z, i3, density, layoutDirection, resourceLoader, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader), j2);
    }

    public TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i2, boolean z, int i3, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, list, i2, z, i3, density, layoutDirection, (Font.ResourceLoader) null, resolver, j2);
    }
}
