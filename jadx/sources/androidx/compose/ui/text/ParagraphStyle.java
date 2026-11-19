package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import defpackage.fc;
import defpackage.tr;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001Bi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015Bs\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0016B7\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0014\u0010\u0017BO\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0014\u0010\u0018Bg\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0014\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/text/ParagraphStyle;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "Landroidx/compose/ui/text/style/TextAlign;", "textAlign", "Landroidx/compose/ui/text/style/TextDirection;", "textDirection", "Landroidx/compose/ui/unit/TextUnit;", "lineHeight", "Landroidx/compose/ui/text/style/TextIndent;", "textIndent", "Landroidx/compose/ui/text/PlatformParagraphStyle;", "platformStyle", "Landroidx/compose/ui/text/style/LineHeightStyle;", "lineHeightStyle", "Landroidx/compose/ui/text/style/LineBreak;", "lineBreak", "Landroidx/compose/ui/text/style/Hyphens;", "hyphens", "Landroidx/compose/ui/text/style/TextMotion;", "textMotion", "<init>", "(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ParagraphStyle implements AnnotatedString.Annotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10481c;
    public final TextIndent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PlatformParagraphStyle f10482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LineHeightStyle f10483f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextMotion f10485i;

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphStyle(int i2, int i3, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        int i7;
        int i8;
        long j3;
        int i9;
        int i10 = 0;
        if ((i6 & 1) != 0) {
            TextAlign.f10959b.getClass();
            i7 = 0;
        } else {
            i7 = i2;
        }
        if ((i6 & 2) != 0) {
            TextDirection.f10969b.getClass();
            i8 = 0;
        } else {
            i8 = i3;
        }
        if ((i6 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j3 = TextUnit.d;
        } else {
            j3 = j2;
        }
        TextIndent textIndent2 = (i6 & 8) != 0 ? null : textIndent;
        PlatformParagraphStyle platformParagraphStyle2 = (i6 & 16) != 0 ? null : platformParagraphStyle;
        LineHeightStyle lineHeightStyle2 = (i6 & 32) != 0 ? null : lineHeightStyle;
        if ((i6 & 64) != 0) {
            LineBreak.f10931b.getClass();
            i9 = 0;
        } else {
            i9 = i4;
        }
        if ((i6 & 128) != 0) {
            Hyphens.f10928b.getClass();
        } else {
            i10 = i5;
        }
        this(i7, i8, j3, textIndent2, platformParagraphStyle2, lineHeightStyle2, i9, i10, (i6 & 256) == 0 ? textMotion : null, (DefaultConstructorMarker) null);
    }

    public final ParagraphStyle a(ParagraphStyle paragraphStyle) {
        return paragraphStyle == null ? this : ParagraphStyleKt.a(this, paragraphStyle.f10479a, paragraphStyle.f10480b, paragraphStyle.f10481c, paragraphStyle.d, paragraphStyle.f10482e, paragraphStyle.f10483f, paragraphStyle.g, paragraphStyle.f10484h, paragraphStyle.f10485i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        int i2 = paragraphStyle.f10479a;
        TextAlign.Companion companion = TextAlign.f10959b;
        if (this.f10479a == i2) {
            int i3 = paragraphStyle.f10480b;
            TextDirection.Companion companion2 = TextDirection.f10969b;
            if (this.f10480b != i3 || !TextUnit.a(this.f10481c, paragraphStyle.f10481c) || !Intrinsics.c(this.d, paragraphStyle.d) || !Intrinsics.c(this.f10482e, paragraphStyle.f10482e) || !Intrinsics.c(this.f10483f, paragraphStyle.f10483f)) {
                return false;
            }
            int i4 = paragraphStyle.g;
            LineBreak.Companion companion3 = LineBreak.f10931b;
            if (this.g == i4) {
                int i5 = paragraphStyle.f10484h;
                Hyphens.Companion companion4 = Hyphens.f10928b;
                return this.f10484h == i5 && Intrinsics.c(this.f10485i, paragraphStyle.f10485i);
            }
        }
        return false;
    }

    public final int hashCode() {
        TextAlign.Companion companion = TextAlign.f10959b;
        int iHashCode = Integer.hashCode(this.f10479a) * 31;
        TextDirection.Companion companion2 = TextDirection.f10969b;
        int iB = tr.b(this.f10480b, iHashCode, 31);
        TextUnit.Companion companion3 = TextUnit.f11023b;
        int iA = fc.a(iB, 31, this.f10481c);
        TextIndent textIndent = this.d;
        int iHashCode2 = (iA + (textIndent != null ? textIndent.hashCode() : 0)) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.f10482e;
        int iHashCode3 = (iHashCode2 + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0)) * 31;
        LineHeightStyle lineHeightStyle = this.f10483f;
        int iHashCode4 = (iHashCode3 + (lineHeightStyle != null ? lineHeightStyle.hashCode() : 0)) * 31;
        LineBreak.Companion companion4 = LineBreak.f10931b;
        int iB2 = tr.b(this.g, iHashCode4, 31);
        Hyphens.Companion companion5 = Hyphens.f10928b;
        int iB3 = tr.b(this.f10484h, iB2, 31);
        TextMotion textMotion = this.f10485i;
        return iB3 + (textMotion != null ? textMotion.hashCode() : 0);
    }

    public final String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) TextAlign.a(this.f10479a)) + ", textDirection=" + ((Object) TextDirection.a(this.f10480b)) + ", lineHeight=" + ((Object) TextUnit.e(this.f10481c)) + ", textIndent=" + this.d + ", platformStyle=" + this.f10482e + ", lineHeightStyle=" + this.f10483f + ", lineBreak=" + ((Object) LineBreak.a(this.g)) + ", hyphens=" + ((Object) Hyphens.a(this.f10484h)) + ", textMotion=" + this.f10485i + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
            i3 = 0;
        }
        if (lineBreak != null) {
            i4 = lineBreak.f10933a;
        } else {
            LineBreak.f10931b.getClass();
            i4 = 0;
        }
        if (hyphens != null) {
            i5 = hyphens.f10930a;
        } else {
            Hyphens.f10928b.getClass();
        }
        this(i2, i3, j2, textIndent, platformParagraphStyle, lineHeightStyle, i4, i5, (TextMotion) null, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
        }
        int i4 = i3;
        LineBreak.f10931b.getClass();
        Hyphens.f10928b.getClass();
        this(i2, i4, j2, textIndent, platformParagraphStyle, lineHeightStyle, 0, 0, (TextMotion) null, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
        }
        int i4 = i3;
        LineBreak.f10931b.getClass();
        Hyphens.f10928b.getClass();
        this(i2, i4, j2, textIndent, (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, (DefaultConstructorMarker) null);
    }

    public ParagraphStyle(int i2, int i3, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10479a = i2;
        this.f10480b = i3;
        this.f10481c = j2;
        this.d = textIndent;
        this.f10482e = platformParagraphStyle;
        this.f10483f = lineHeightStyle;
        this.g = i4;
        this.f10484h = i5;
        this.f10485i = textMotion;
        TextUnit.f11023b.getClass();
        if (TextUnit.a(j2, TextUnit.d) || TextUnit.c(j2) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        InlineClassHelperKt.c("lineHeight can't be negative (" + TextUnit.c(j2) + ')');
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
            i3 = 0;
        }
        if (lineBreak != null) {
            i4 = lineBreak.f10933a;
        } else {
            LineBreak.f10931b.getClass();
            i4 = 0;
        }
        if (hyphens != null) {
            i5 = hyphens.f10930a;
        } else {
            Hyphens.f10928b.getClass();
        }
        this(i2, i3, j2, textIndent, platformParagraphStyle, lineHeightStyle, i4, i5, textMotion, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        textAlign = (i2 & 1) != 0 ? null : textAlign;
        textDirection = (i2 & 2) != 0 ? null : textDirection;
        if ((i2 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j2 = TextUnit.d;
        }
        this(textAlign, textDirection, j2, (i2 & 8) != 0 ? null : textIndent, (i2 & 16) != 0 ? null : platformParagraphStyle, (i2 & 32) != 0 ? null : lineHeightStyle, (i2 & 64) != 0 ? null : lineBreak, (i2 & 128) != 0 ? null : hyphens, (i2 & 256) != 0 ? null : textMotion, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        textAlign = (i2 & 1) != 0 ? null : textAlign;
        textDirection = (i2 & 2) != 0 ? null : textDirection;
        if ((i2 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j2 = TextUnit.d;
        }
        this(textAlign, textDirection, j2, (i2 & 8) != 0 ? null : textIndent, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        textAlign = (i2 & 1) != 0 ? null : textAlign;
        textDirection = (i2 & 2) != 0 ? null : textDirection;
        if ((i2 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j2 = TextUnit.d;
        }
        this(textAlign, textDirection, j2, (i2 & 8) != 0 ? null : textIndent, (i2 & 16) != 0 ? null : platformParagraphStyle, (i2 & 32) != 0 ? null : lineHeightStyle, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        textAlign = (i2 & 1) != 0 ? null : textAlign;
        textDirection = (i2 & 2) != 0 ? null : textDirection;
        if ((i2 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j2 = TextUnit.d;
        }
        this(textAlign, textDirection, j2, (i2 & 8) != 0 ? null : textIndent, (i2 & 16) != 0 ? null : platformParagraphStyle, (i2 & 32) != 0 ? null : lineHeightStyle, (i2 & 64) != 0 ? null : lineBreak, (i2 & 128) != 0 ? null : hyphens, null);
    }
}
