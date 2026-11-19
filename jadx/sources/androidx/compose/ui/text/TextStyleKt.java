package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import defpackage.nw0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextStyleKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10571a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f10571a = iArr;
        }
    }

    public static final TextStyle a(TextStyle textStyle, LayoutDirection layoutDirection) {
        int i2;
        int i3;
        float f2;
        SpanStyle spanStyle = textStyle.f10568a;
        TextForegroundStyle textForegroundStyle = SpanStyleKt.d;
        TextForegroundStyle textForegroundStyleC = spanStyle.f10522a.c(new nw0(17));
        long j2 = spanStyle.fontSize;
        TextUnit.Companion companion = TextUnit.f11023b;
        if ((j2 & 1095216660480L) == 0) {
            j2 = SpanStyleKt.f10531a;
        }
        long j3 = j2;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle = spanStyle.fontStyle;
        if (fontStyle != null) {
            i2 = fontStyle.f10717a;
        } else {
            FontStyle.f10715b.getClass();
            i2 = 0;
        }
        FontStyle fontStyle2 = new FontStyle(i2);
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        if (fontSynthesis != null) {
            i3 = fontSynthesis.f10721a;
        } else {
            FontSynthesis.f10718b.getClass();
            i3 = FontSynthesis.f10720e;
        }
        FontSynthesis fontSynthesis2 = new FontSynthesis(i3);
        FontFamily fontFamily = spanStyle.fontFamily;
        if (fontFamily == null) {
            FontFamily.f10695b.getClass();
            fontFamily = FontFamily.f10696c;
        }
        FontFamily fontFamily2 = fontFamily;
        String str = spanStyle.fontFeatureSettings;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        long j4 = spanStyle.letterSpacing;
        if ((j4 & 1095216660480L) == 0) {
            j4 = SpanStyleKt.f10532b;
        }
        long j5 = j4;
        BaselineShift baselineShift = spanStyle.baselineShift;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (baselineShift != null) {
            f2 = baselineShift.f10924a;
        } else {
            BaselineShift.f10922b.getClass();
            f2 = 0.0f;
        }
        if (Float.isNaN(f2)) {
            BaselineShift.f10922b.getClass();
        } else {
            f3 = f2;
        }
        BaselineShift baselineShift2 = new BaselineShift(f3);
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        if (textGeometricTransform == null) {
            TextGeometricTransform.f10975c.getClass();
            textGeometricTransform = TextGeometricTransform.d;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeListA = spanStyle.localeList;
        if (localeListA == null) {
            LocaleList.d.getClass();
            localeListA = PlatformLocaleKt.f10875a.a();
        }
        LocaleList localeList = localeListA;
        long j6 = spanStyle.l;
        if (j6 == 16) {
            j6 = SpanStyleKt.f10533c;
        }
        long j7 = j6;
        TextDecoration textDecoration = spanStyle.background;
        if (textDecoration == null) {
            TextDecoration.f10965b.getClass();
            textDecoration = TextDecoration.f10966c;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.shadow;
        if (shadow == null) {
            Shadow.d.getClass();
            shadow = Shadow.f8925e;
        }
        Shadow shadow2 = shadow;
        PlatformSpanStyle platformSpanStyle = spanStyle.platformStyle;
        DrawStyle drawStyle = spanStyle.drawStyle;
        if (drawStyle == null) {
            drawStyle = Fill.f9010a;
        }
        SpanStyle spanStyle2 = new SpanStyle(textForegroundStyleC, j3, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j5, baselineShift2, textGeometricTransform2, localeList, j7, textDecoration2, shadow2, platformSpanStyle, drawStyle, (DefaultConstructorMarker) null);
        ParagraphStyle paragraphStyle = textStyle.f10569b;
        int i4 = ParagraphStyleKt.f10487b;
        int i5 = paragraphStyle.f10479a;
        int i6 = paragraphStyle.f10484h;
        int i7 = paragraphStyle.g;
        TextAlign.f10959b.getClass();
        int i8 = i5 == 0 ? TextAlign.g : paragraphStyle.f10479a;
        int i9 = paragraphStyle.f10480b;
        TextDirection.f10969b.getClass();
        if (i9 == TextDirection.f10971e) {
            int i10 = WhenMappings.f10571a[layoutDirection.ordinal()];
            if (i10 == 1) {
                i9 = TextDirection.f10972f;
            } else {
                if (i10 != 2) {
                    v40.g();
                    return null;
                }
                i9 = TextDirection.g;
            }
        } else if (i9 == 0) {
            int i11 = WhenMappings.f10571a[layoutDirection.ordinal()];
            if (i11 == 1) {
                i9 = TextDirection.f10970c;
            } else {
                if (i11 != 2) {
                    v40.g();
                    return null;
                }
                i9 = TextDirection.d;
            }
        }
        int i12 = i9;
        long j8 = paragraphStyle.f10481c;
        if ((j8 & 1095216660480L) == 0) {
            j8 = ParagraphStyleKt.f10486a;
        }
        TextIndent textIndent = paragraphStyle.d;
        if (textIndent == null) {
            TextIndent.f10978c.getClass();
            textIndent = TextIndent.d;
        }
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformParagraphStyle = paragraphStyle.f10482e;
        LineHeightStyle lineHeightStyle = paragraphStyle.f10483f;
        LineBreak.f10931b.getClass();
        if (i7 == 0) {
            i7 = LineBreak.f10932c;
        }
        int i13 = i7;
        Hyphens.f10928b.getClass();
        if (i6 == 0) {
            i6 = Hyphens.f10929c;
        }
        int i14 = i6;
        TextMotion textMotion = paragraphStyle.f10485i;
        if (textMotion == null) {
            TextMotion.f10981c.getClass();
            textMotion = TextMotion.d;
        }
        return new TextStyle(spanStyle2, new ParagraphStyle(i8, i12, j8, textIndent2, platformParagraphStyle, lineHeightStyle, i13, i14, textMotion, (DefaultConstructorMarker) null), textStyle.platformStyle);
    }
}
