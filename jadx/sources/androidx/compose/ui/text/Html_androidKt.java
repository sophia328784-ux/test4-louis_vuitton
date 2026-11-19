package androidx.compose.ui.text;

import android.graphics.Typeface;
import android.text.Html;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.LoadedFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTypefaceWrapper;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Html_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Html_androidKt$TagHandler$1 f10453a = new Html_androidKt$TagHandler$1();

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10454a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f10454a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:89:0x03e5  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final AnnotatedString a(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
        String url;
        GenericFontFamily genericFontFamily;
        GenericFontFamily genericFontFamily2;
        GenericFontFamily genericFontFamily3;
        FontFamily loadedFontFamily;
        SpanStyle spanStyle;
        int i2;
        int i3;
        Spanned spannedFromHtml = Html.fromHtml(tr.g("<ContentHandlerReplacementTag />", str), 63, null, f10453a);
        AnnotatedString.Builder builder = new AnnotatedString.Builder(spannedFromHtml.length());
        boolean z = spannedFromHtml instanceof AnnotatedString;
        StringBuilder sb = builder.f10422b;
        if (z) {
            builder.d((AnnotatedString) spannedFromHtml);
        } else {
            sb.append((CharSequence) spannedFromHtml);
        }
        for (Object obj : spannedFromHtml.getSpans(0, sb.length(), Object.class)) {
            long jA = TextRangeKt.a(spannedFromHtml.getSpanStart(obj), spannedFromHtml.getSpanEnd(obj));
            TextRange.Companion companion = TextRange.f10564b;
            int i4 = (int) (jA >> 32);
            int i5 = (int) (jA & BodyPartID.bodyIdMax);
            if (!(obj instanceof AbsoluteSizeSpan)) {
                boolean z2 = obj instanceof AlignmentSpan;
                ArrayList arrayList = builder.d;
                if (z2) {
                    Layout.Alignment alignment = ((AlignmentSpan) obj).getAlignment();
                    int i6 = alignment == null ? -1 : WhenMappings.f10454a[alignment.ordinal()];
                    if (i6 == 1) {
                        TextAlign.f10959b.getClass();
                        i2 = TextAlign.g;
                    } else if (i6 != 2) {
                        if (i6 != 3) {
                            TextAlign.f10959b.getClass();
                            i3 = 0;
                        } else {
                            TextAlign.f10959b.getClass();
                            i2 = TextAlign.f10963h;
                        }
                        arrayList.add(new AnnotatedString.Builder.MutableRange(new ParagraphStyle(i3, 0, 0L, (TextIndent) null, (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 510, (DefaultConstructorMarker) null), i4, i5, null, 8, null));
                    } else {
                        TextAlign.f10959b.getClass();
                        i2 = TextAlign.f10961e;
                    }
                    i3 = i2;
                    arrayList.add(new AnnotatedString.Builder.MutableRange(new ParagraphStyle(i3, 0, 0L, (TextIndent) null, (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 510, (DefaultConstructorMarker) null), i4, i5, null, 8, null));
                } else if (obj instanceof AnnotationSpan) {
                    AnnotationSpan annotationSpan = (AnnotationSpan) obj;
                    builder.b(i4, i5, annotationSpan.f10435a, annotationSpan.f10436b);
                } else if (obj instanceof BackgroundColorSpan) {
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, ColorKt.b(((BackgroundColorSpan) obj).getBackgroundColor()), (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 63487, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof BulletSpanWithLevel) {
                    Bullet.f10437h.getClass();
                    long j2 = Bullet.f10438i;
                    BulletSpanWithLevel bulletSpanWithLevel = (BulletSpanWithLevel) obj;
                    int i7 = bulletSpanWithLevel.f10446b;
                    TextUnitKt.a(j2);
                    long jD = TextUnitKt.d(TextUnit.c(j2) * i7, 1095216660480L & j2);
                    Bullet bullet = bulletSpanWithLevel.f10445a;
                    ParagraphStyle paragraphStyle = new ParagraphStyle(0, 0, 0L, new TextIndent(jD, jD, null), (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 503, (DefaultConstructorMarker) null);
                    int i8 = 8;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                    String str2 = null;
                    arrayList.add(new AnnotatedString.Builder.MutableRange(paragraphStyle, i4, i5, str2, i8, defaultConstructorMarker));
                    arrayList.add(new AnnotatedString.Builder.MutableRange(bullet, i4, i5, str2, i8, defaultConstructorMarker));
                } else if (obj instanceof ForegroundColorSpan) {
                    builder.c(new SpanStyle(ColorKt.b(((ForegroundColorSpan) obj).getForegroundColor()), 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof RelativeSizeSpan) {
                    builder.c(new SpanStyle(0L, TextUnitKt.d(((RelativeSizeSpan) obj).getSizeChange(), 8589934592L), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.ATTENDEE, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof StrikethroughSpan) {
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.f10967e, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof StyleSpan) {
                    int style = ((StyleSpan) obj).getStyle();
                    if (style == 1) {
                        FontWeight.f10727c.getClass();
                        spanStyle = new SpanStyle(0L, 0L, FontWeight.f10733k, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.SIX_DIGITS, (DefaultConstructorMarker) null);
                    } else if (style == 2) {
                        FontStyle.f10715b.getClass();
                        spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, new FontStyle(FontStyle.f10716c), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65527, (DefaultConstructorMarker) null);
                    } else if (style != 3) {
                        spanStyle = null;
                    } else {
                        FontWeight.f10727c.getClass();
                        FontWeight fontWeight = FontWeight.f10733k;
                        FontStyle.f10715b.getClass();
                        spanStyle = new SpanStyle(0L, 0L, fontWeight, new FontStyle(FontStyle.f10716c), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65523, (DefaultConstructorMarker) null);
                    }
                    if (spanStyle != null) {
                        builder.c(spanStyle, i4, i5);
                    }
                } else if (obj instanceof SubscriptSpan) {
                    BaselineShift.f10922b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(BaselineShift.d), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65279, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof SuperscriptSpan) {
                    BaselineShift.f10922b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(BaselineShift.f10923c), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65279, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof TypefaceSpan) {
                    TypefaceSpan typefaceSpan = (TypefaceSpan) obj;
                    String family = typefaceSpan.getFamily();
                    FontFamily.f10695b.getClass();
                    GenericFontFamily genericFontFamily4 = FontFamily.g;
                    if (!Intrinsics.c(family, genericFontFamily4.f10736h)) {
                        genericFontFamily = FontFamily.f10698f;
                        if (!Intrinsics.c(family, genericFontFamily.f10736h)) {
                            genericFontFamily2 = FontFamily.d;
                            if (!Intrinsics.c(family, genericFontFamily2.f10736h)) {
                                genericFontFamily3 = FontFamily.f10697e;
                                if (!Intrinsics.c(family, genericFontFamily3.f10736h)) {
                                    String family2 = typefaceSpan.getFamily();
                                    if (family2 == null || family2.length() == 0) {
                                        loadedFontFamily = genericFontFamily4;
                                        loadedFontFamily = genericFontFamily;
                                        loadedFontFamily = genericFontFamily2;
                                        loadedFontFamily = genericFontFamily3;
                                        loadedFontFamily = genericFontFamily4;
                                        loadedFontFamily = genericFontFamily;
                                        loadedFontFamily = genericFontFamily2;
                                        loadedFontFamily = genericFontFamily3;
                                        loadedFontFamily = null;
                                    } else {
                                        Typeface typefaceCreate = Typeface.create(family2, 0);
                                        Typeface typeface = Typeface.DEFAULT;
                                        if (Intrinsics.c(typefaceCreate, typeface) || Intrinsics.c(typefaceCreate, Typeface.create(typeface, 0))) {
                                            loadedFontFamily = genericFontFamily4;
                                            loadedFontFamily = genericFontFamily;
                                            loadedFontFamily = genericFontFamily2;
                                            loadedFontFamily = genericFontFamily3;
                                            loadedFontFamily = genericFontFamily4;
                                            loadedFontFamily = genericFontFamily;
                                            loadedFontFamily = genericFontFamily2;
                                            loadedFontFamily = genericFontFamily3;
                                            typefaceCreate = null;
                                        }
                                        if (typefaceCreate != null) {
                                            loadedFontFamily = new LoadedFontFamily(new AndroidTypefaceWrapper(typefaceCreate));
                                        } else {
                                            loadedFontFamily = genericFontFamily4;
                                            loadedFontFamily = genericFontFamily;
                                            loadedFontFamily = genericFontFamily2;
                                            loadedFontFamily = genericFontFamily3;
                                            loadedFontFamily = genericFontFamily4;
                                            loadedFontFamily = genericFontFamily;
                                            loadedFontFamily = genericFontFamily2;
                                            loadedFontFamily = genericFontFamily3;
                                            loadedFontFamily = null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    loadedFontFamily = genericFontFamily4;
                    loadedFontFamily = genericFontFamily;
                    loadedFontFamily = genericFontFamily2;
                    loadedFontFamily = genericFontFamily3;
                    loadedFontFamily = genericFontFamily4;
                    loadedFontFamily = genericFontFamily;
                    loadedFontFamily = genericFontFamily2;
                    loadedFontFamily = genericFontFamily4;
                    loadedFontFamily = genericFontFamily;
                    loadedFontFamily = genericFontFamily4;
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, loadedFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65503, (DefaultConstructorMarker) null), i4, i5);
                } else if (obj instanceof UnderlineSpan) {
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), i4, i5);
                } else if ((obj instanceof URLSpan) && (url = ((URLSpan) obj).getURL()) != null) {
                    arrayList.add(new AnnotatedString.Builder.MutableRange(new LinkAnnotation.Url(url, textLinkStyles, linkInteractionListener), i4, i5, null, 8, null));
                }
            }
        }
        return builder.i();
    }

    public static /* synthetic */ AnnotatedString b(String str, TextLinkStyles textLinkStyles, int i2) {
        if ((i2 & 2) != 0) {
            textLinkStyles = null;
        }
        return a(str, textLinkStyles, null);
    }
}
