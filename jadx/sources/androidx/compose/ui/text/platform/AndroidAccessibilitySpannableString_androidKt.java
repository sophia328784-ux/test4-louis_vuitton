package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ClickableSpan;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TtsSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidAccessibilitySpannableString_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.ArrayList] */
    public static final SpannableString a(AnnotatedString annotatedString, Density density, FontFamily.Resolver resolver, URLSpanCache uRLSpanCache) {
        ?? arrayList;
        int i2;
        List list;
        int i3;
        int i4;
        int i5;
        int i6;
        String str = annotatedString.f10420c;
        List list2 = annotatedString.f10419b;
        SpannableString spannableString = new SpannableString(str);
        ArrayList arrayList2 = annotatedString.d;
        int i7 = 33;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i8 = 0;
            while (i8 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) arrayList2.get(i8);
                SpanStyle spanStyle = (SpanStyle) range.f10428a;
                int i9 = range.f10429b;
                int i10 = range.f10430c;
                int i11 = size;
                SpanStyle spanStyleA = SpanStyle.a(spanStyle, 0L, 65503);
                TextForegroundStyle textForegroundStyle = spanStyleA.f10522a;
                TextGeometricTransform textGeometricTransform = spanStyleA.textGeometricTransform;
                TextDecoration textDecoration = spanStyleA.background;
                FontFamily fontFamily = spanStyleA.fontFamily;
                FontStyle fontStyle = spanStyleA.fontStyle;
                SpannableExtensions_androidKt.c(spannableString, textForegroundStyle.getF10927a(), i9, i10);
                SpannableExtensions_androidKt.d(spannableString, spanStyleA.fontSize, density, i9, i10);
                FontWeight fontWeight = spanStyleA.fontWeight;
                if (fontWeight != null || fontStyle != null) {
                    if (fontWeight == null) {
                        FontWeight.f10727c.getClass();
                        fontWeight = FontWeight.f10730h;
                    }
                    if (fontStyle != null) {
                        i3 = fontStyle.f10717a;
                    } else {
                        FontStyle.f10715b.getClass();
                        i3 = 0;
                    }
                    FontWeight.f10727c.getClass();
                    boolean z = fontWeight.compareTo(FontWeight.f10729f) >= 0;
                    FontStyle.f10715b.getClass();
                    boolean z2 = i3 == FontStyle.f10716c;
                    if (z2 && z) {
                        i4 = 3;
                    } else if (z) {
                        i4 = 1;
                    } else {
                        i4 = z2 ? 2 : 0;
                    }
                    spannableString.setSpan(new StyleSpan(i4), i9, i10, i7);
                }
                if (fontFamily == null) {
                    i5 = i7;
                } else if (fontFamily instanceof GenericFontFamily) {
                    spannableString.setSpan(new TypefaceSpan(((GenericFontFamily) fontFamily).f10736h), i9, i10, i7);
                    i5 = i7;
                } else {
                    FontSynthesis fontSynthesis = spanStyleA.fontSynthesis;
                    if (fontSynthesis != null) {
                        i6 = fontSynthesis.f10721a;
                    } else {
                        FontSynthesis.f10718b.getClass();
                        i6 = FontSynthesis.f10720e;
                    }
                    FontWeight.f10727c.getClass();
                    FontWeight fontWeight2 = FontWeight.f10730h;
                    FontStyle.f10715b.getClass();
                    Object f10755b = resolver.a(fontFamily, fontWeight2, 0, i6).getF10755b();
                    f10755b.getClass();
                    TypefaceSpan typefaceSpan = new TypefaceSpan((Typeface) f10755b);
                    i5 = 33;
                    spannableString.setSpan(typefaceSpan, i9, i10, 33);
                }
                if (textDecoration != null) {
                    TextDecoration.f10965b.getClass();
                    if (textDecoration.a(TextDecoration.d)) {
                        spannableString.setSpan(new UnderlineSpan(), i9, i10, i5);
                    }
                    if (textDecoration.a(TextDecoration.f10967e)) {
                        spannableString.setSpan(new StrikethroughSpan(), i9, i10, i5);
                    }
                }
                if (textGeometricTransform != null) {
                    spannableString.setSpan(new ScaleXSpan(textGeometricTransform.f10976a), i9, i10, i5);
                }
                SpannableExtensions_androidKt.e(spannableString, spanStyleA.localeList, i9, i10);
                long j2 = spanStyleA.l;
                if (j2 != 16) {
                    spannableString.setSpan(new BackgroundColorSpan(ColorKt.i(j2)), i9, i10, 33);
                }
                i8++;
                size = i11;
                i7 = 33;
            }
        }
        int length = str.length();
        if (list2 != null) {
            arrayList = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                Object obj = list2.get(i12);
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj;
                if ((range2.f10428a instanceof TtsAnnotation) && AnnotatedStringKt.b(0, length, range2.f10429b, range2.f10430c)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        arrayList.getClass();
        int size3 = ((Collection) arrayList).size();
        for (int i13 = 0; i13 < size3; i13++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
            TtsAnnotation ttsAnnotation = (TtsAnnotation) range3.f10428a;
            int i14 = range3.f10429b;
            int i15 = range3.f10430c;
            if (!(ttsAnnotation instanceof VerbatimTtsAnnotation)) {
                v40.g();
                return null;
            }
            spannableString.setSpan(new TtsSpan.VerbatimBuilder(((VerbatimTtsAnnotation) ttsAnnotation).f10573a).build(), i14, i15, 33);
        }
        int length2 = str.length();
        if (list2 != null) {
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size4 = list2.size();
            for (int i16 = 0; i16 < size4; i16++) {
                Object obj2 = list2.get(i16);
                AnnotatedString.Range range4 = (AnnotatedString.Range) obj2;
                if ((range4.f10428a instanceof UrlAnnotation) && AnnotatedStringKt.b(0, length2, range4.f10429b, range4.f10430c)) {
                    arrayList3.add(obj2);
                }
            }
            i2 = 0;
            list = arrayList3;
        } else {
            i2 = 0;
            list = EmptyList.f71768b;
        }
        list.getClass();
        int size5 = list.size();
        for (int i17 = i2; i17 < size5; i17++) {
            AnnotatedString.Range range5 = (AnnotatedString.Range) list.get(i17);
            UrlAnnotation urlAnnotation = (UrlAnnotation) range5.f10428a;
            int i18 = range5.f10429b;
            int i19 = range5.f10430c;
            WeakHashMap weakHashMap = uRLSpanCache.f10906a;
            Object uRLSpan = weakHashMap.get(urlAnnotation);
            if (uRLSpan == null) {
                uRLSpan = new URLSpan(urlAnnotation.f10572a);
                weakHashMap.put(urlAnnotation, uRLSpan);
            }
            spannableString.setSpan((URLSpan) uRLSpan, i18, i19, 33);
        }
        List listB = annotatedString.b(str.length());
        int size6 = listB.size();
        for (int i20 = i2; i20 < size6; i20++) {
            AnnotatedString.Range range6 = (AnnotatedString.Range) listB.get(i20);
            int i21 = range6.f10429b;
            Object obj3 = range6.f10428a;
            int i22 = range6.f10430c;
            if (i21 != i22) {
                LinkAnnotation linkAnnotation = (LinkAnnotation) obj3;
                if ((linkAnnotation instanceof LinkAnnotation.Url) && ((LinkAnnotation.Url) linkAnnotation).f10460c == null) {
                    obj3.getClass();
                    AnnotatedString.Range range7 = new AnnotatedString.Range((LinkAnnotation.Url) obj3, i21, i22);
                    WeakHashMap weakHashMap2 = uRLSpanCache.f10907b;
                    Object uRLSpan2 = weakHashMap2.get(range7);
                    if (uRLSpan2 == null) {
                        uRLSpan2 = new URLSpan(((LinkAnnotation.Url) range7.f10428a).f10458a);
                        weakHashMap2.put(range7, uRLSpan2);
                    }
                    spannableString.setSpan((URLSpan) uRLSpan2, i21, i22, 33);
                } else {
                    WeakHashMap weakHashMap3 = uRLSpanCache.f10908c;
                    Object composeClickableSpan = weakHashMap3.get(range6);
                    if (composeClickableSpan == null) {
                        composeClickableSpan = new ComposeClickableSpan(linkAnnotation);
                        weakHashMap3.put(range6, composeClickableSpan);
                    }
                    spannableString.setSpan((ClickableSpan) composeClickableSpan, i21, i22, 33);
                }
            }
        }
        return spannableString;
    }
}
