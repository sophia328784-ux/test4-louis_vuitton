package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import defpackage.gt0;
import defpackage.v40;
import defpackage.xq0;
import defpackage.yt0;
import defpackage.zt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SaversKt {
    public static final SaverKt$Saver$1 A;
    public static final SaverKt$Saver$1 B;
    public static final SaverKt$Saver$1 C;
    public static final SaversKt$NonNullValueClassSaver$1 D;
    public static final SaversKt$NonNullValueClassSaver$1 E;
    public static final SaversKt$NonNullValueClassSaver$1 F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10506c;
    public static final SaverKt$Saver$1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10508f;
    public static final SaverKt$Saver$1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10512k;
    public static final SaverKt$Saver$1 l;
    public static final SaverKt$Saver$1 m;
    public static final SaverKt$Saver$1 n;
    public static final SaverKt$Saver$1 o;
    public static final SaverKt$Saver$1 p;
    public static final SaverKt$Saver$1 q;
    public static final SaversKt$NonNullValueClassSaver$1 r;
    public static final SaversKt$NonNullValueClassSaver$1 s;
    public static final SaversKt$NonNullValueClassSaver$1 t;
    public static final SaversKt$NonNullValueClassSaver$1 u;
    public static final SaverKt$Saver$1 v;
    public static final SaverKt$Saver$1 w;
    public static final SaversKt$NonNullValueClassSaver$1 x;
    public static final SaversKt$NonNullValueClassSaver$1 y;
    public static final SaversKt$NonNullValueClassSaver$1 z;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10517a;

        static {
            int[] iArr = new int[AnnotationType.values().length];
            try {
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotationType.Span.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnnotationType.Url.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnnotationType.Link.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AnnotationType.Clickable.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AnnotationType.String.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f10517a = iArr;
        }
    }

    static {
        int i2 = 6;
        final byte b2 = 0;
        int i3 = 12;
        f10504a = new SaverKt$Saver$1(new xq0(i2, b2), new gt0(i3));
        int i4 = 13;
        int i5 = 23;
        f10505b = new SaverKt$Saver$1(new xq0(i4, b2), new gt0(i5));
        final int i6 = 1;
        f10506c = new SaverKt$Saver$1(new b(), new Function1() { // from class: androidx.compose.ui.text.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AnnotatedString.Range range;
                int i7 = i6;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.f10514b;
                switch (i7) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        Color.Companion companion = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.c(obj2, bool);
                        Color color = obj2 != null ? (Color) saversKt$ColorSaver$2.invoke(obj2) : null;
                        color.getClass();
                        long j2 = color.f8872a;
                        Object obj3 = list.get(1);
                        Offset.Companion companion2 = Offset.f8806b;
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.z;
                        Intrinsics.c(obj3, bool);
                        Offset offset = obj3 != null ? (Offset) saversKt$NonNullValueClassSaver$1.f10516b.invoke(obj3) : null;
                        offset.getClass();
                        long j3 = offset.f8808a;
                        Object obj4 = list.get(2);
                        Float f2 = obj4 != null ? (Float) obj4 : null;
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue(), null);
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        AnnotationType annotationType = obj5 != null ? (AnnotationType) obj5 : null;
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        Integer num = obj6 != null ? (Integer) obj6 : null;
                        num.getClass();
                        int iIntValue = num.intValue();
                        Object obj7 = list2.get(3);
                        Integer num2 = obj7 != null ? (Integer) obj7 : null;
                        num2.getClass();
                        int iIntValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        String str = obj8 != null ? (String) obj8 : null;
                        str.getClass();
                        switch (SaversKt.WhenMappings.f10517a[annotationType.ordinal()]) {
                            case 1:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10509h;
                                ParagraphStyle paragraphStyle = ((!Intrinsics.c(obj9, Boolean.FALSE) || (saverKt$Saver$4 instanceof NonNullValueClassSaver)) && obj9 != null) ? (ParagraphStyle) saverKt$Saver$4.f8439b.invoke(obj9) : null;
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(paragraphStyle, iIntValue, iIntValue2, str);
                                break;
                            case 2:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10510i;
                                SpanStyle spanStyle = ((!Intrinsics.c(obj10, Boolean.FALSE) || (saverKt$Saver$5 instanceof NonNullValueClassSaver)) && obj10 != null) ? (SpanStyle) saverKt$Saver$5.f8439b.invoke(obj10) : null;
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(spanStyle, iIntValue, iIntValue2, str);
                                break;
                            case 3:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.d;
                                VerbatimTtsAnnotation verbatimTtsAnnotation = ((!Intrinsics.c(obj11, Boolean.FALSE) || (saverKt$Saver$6 instanceof NonNullValueClassSaver)) && obj11 != null) ? (VerbatimTtsAnnotation) saverKt$Saver$6.f8439b.invoke(obj11) : null;
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(verbatimTtsAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 4:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10507e;
                                UrlAnnotation urlAnnotation = ((!Intrinsics.c(obj12, Boolean.FALSE) || (saverKt$Saver$7 instanceof NonNullValueClassSaver)) && obj12 != null) ? (UrlAnnotation) saverKt$Saver$7.f8439b.invoke(obj12) : null;
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(urlAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 5:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10508f;
                                LinkAnnotation.Url url = ((!Intrinsics.c(obj13, Boolean.FALSE) || (saverKt$Saver$8 instanceof NonNullValueClassSaver)) && obj13 != null) ? (LinkAnnotation.Url) saverKt$Saver$8.f8439b.invoke(obj13) : null;
                                url.getClass();
                                range = new AnnotatedString.Range(url, iIntValue, iIntValue2, str);
                                break;
                            case 6:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.g;
                                LinkAnnotation.Clickable clickable = ((!Intrinsics.c(obj14, Boolean.FALSE) || (saverKt$Saver$9 instanceof NonNullValueClassSaver)) && obj14 != null) ? (LinkAnnotation.Clickable) saverKt$Saver$9.f8439b.invoke(obj14) : null;
                                clickable.getClass();
                                range = new AnnotatedString.Range(clickable, iIntValue, iIntValue2, str);
                                break;
                            case 7:
                                Object obj15 = list2.get(1);
                                String str2 = obj15 != null ? (String) obj15 : null;
                                str2.getClass();
                                range = new AnnotatedString.Range(new StringAnnotation(str2), iIntValue, iIntValue2, str);
                                break;
                            default:
                                v40.g();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        Color.Companion companion3 = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.f10504a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.c(obj16, bool2);
                        Color color2 = obj16 != null ? (Color) saversKt$ColorSaver$2.invoke(obj16) : null;
                        color2.getClass();
                        long j4 = color2.f8872a;
                        Object obj17 = list3.get(1);
                        TextUnit.Companion companion4 = TextUnit.f11023b;
                        Function1 function1 = SaversKt.x.f10516b;
                        Intrinsics.c(obj17, bool2);
                        TextUnit textUnit = obj17 != null ? (TextUnit) function1.invoke(obj17) : null;
                        textUnit.getClass();
                        long j5 = textUnit.f11025a;
                        Object obj18 = list3.get(2);
                        FontWeight.Companion companion5 = FontWeight.f10727c;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.n;
                        FontWeight fontWeight = ((!Intrinsics.c(obj18, bool2) || (saverKt$Saver$12 instanceof NonNullValueClassSaver)) && obj18 != null) ? (FontWeight) saverKt$Saver$12.f8439b.invoke(obj18) : null;
                        Object obj19 = list3.get(3);
                        FontStyle.Companion companion6 = FontStyle.f10715b;
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.v;
                        FontStyle fontStyle = ((!Intrinsics.c(obj19, bool2) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj19 != null) ? (FontStyle) saverKt$Saver$13.f8439b.invoke(obj19) : null;
                        Object obj20 = list3.get(4);
                        FontSynthesis.Companion companion7 = FontSynthesis.f10718b;
                        SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.w;
                        FontSynthesis fontSynthesis = ((!Intrinsics.c(obj20, bool2) || (saverKt$Saver$14 instanceof NonNullValueClassSaver)) && obj20 != null) ? (FontSynthesis) saverKt$Saver$14.f8439b.invoke(obj20) : null;
                        Object obj21 = list3.get(6);
                        String str3 = obj21 != null ? (String) obj21 : null;
                        Object obj22 = list3.get(7);
                        Intrinsics.c(obj22, bool2);
                        TextUnit textUnit2 = obj22 != null ? (TextUnit) function1.invoke(obj22) : null;
                        textUnit2.getClass();
                        long j6 = textUnit2.f11025a;
                        Object obj23 = list3.get(8);
                        BaselineShift.Companion companion8 = BaselineShift.f10922b;
                        SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.o;
                        BaselineShift baselineShift = ((!Intrinsics.c(obj23, bool2) || (saverKt$Saver$15 instanceof NonNullValueClassSaver)) && obj23 != null) ? (BaselineShift) saverKt$Saver$15.f8439b.invoke(obj23) : null;
                        Object obj24 = list3.get(9);
                        TextGeometricTransform.Companion companion9 = TextGeometricTransform.f10975c;
                        SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.l;
                        TextGeometricTransform textGeometricTransform = ((!Intrinsics.c(obj24, bool2) || (saverKt$Saver$16 instanceof NonNullValueClassSaver)) && obj24 != null) ? (TextGeometricTransform) saverKt$Saver$16.f8439b.invoke(obj24) : null;
                        Object obj25 = list3.get(10);
                        LocaleList.Companion companion10 = LocaleList.d;
                        SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.A;
                        LocaleList localeList = ((!Intrinsics.c(obj25, bool2) || (saverKt$Saver$17 instanceof NonNullValueClassSaver)) && obj25 != null) ? (LocaleList) saverKt$Saver$17.f8439b.invoke(obj25) : null;
                        Object obj26 = list3.get(11);
                        Intrinsics.c(obj26, bool2);
                        Color color3 = obj26 != null ? (Color) saversKt$ColorSaver$2.invoke(obj26) : null;
                        color3.getClass();
                        long j7 = color3.f8872a;
                        Object obj27 = list3.get(12);
                        TextDecoration.Companion companion11 = TextDecoration.f10965b;
                        SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.f10512k;
                        TextDecoration textDecoration = ((!Intrinsics.c(obj27, bool2) || (saverKt$Saver$18 instanceof NonNullValueClassSaver)) && obj27 != null) ? (TextDecoration) saverKt$Saver$18.f8439b.invoke(obj27) : null;
                        Object obj28 = list3.get(13);
                        Shadow.Companion companion12 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.q;
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, ((!Intrinsics.c(obj28, bool2) || (saverKt$Saver$19 instanceof NonNullValueClassSaver)) && obj28 != null) ? (Shadow) saverKt$Saver$19.f8439b.invoke(obj28) : null, (PlatformSpanStyle) null, (DrawStyle) null, 49184, (DefaultConstructorMarker) null);
                }
            }
        });
        d = new SaverKt$Saver$1(new zt0(i6), new yt0(i2));
        int i7 = 3;
        int i8 = 7;
        f10507e = new SaverKt$Saver$1(new zt0(i7), new yt0(i8));
        int i9 = 11;
        int i10 = 20;
        f10508f = new SaverKt$Saver$1(new xq0(i9, b2), new gt0(i10));
        int i11 = 22;
        g = new SaverKt$Saver$1(new xq0(i11, b2), new yt0(i6));
        final int i12 = 2;
        int i13 = 8;
        f10509h = new SaverKt$Saver$1(new zt0(i12), new yt0(i13));
        int i14 = 4;
        f10510i = new SaverKt$Saver$1(new zt0(i14), new Function1() { // from class: androidx.compose.ui.text.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AnnotatedString.Range range;
                int i15 = i12;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.f10514b;
                switch (i15) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        Color.Companion companion = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.c(obj2, bool);
                        Color color = obj2 != null ? (Color) saversKt$ColorSaver$2.invoke(obj2) : null;
                        color.getClass();
                        long j2 = color.f8872a;
                        Object obj3 = list.get(1);
                        Offset.Companion companion2 = Offset.f8806b;
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.z;
                        Intrinsics.c(obj3, bool);
                        Offset offset = obj3 != null ? (Offset) saversKt$NonNullValueClassSaver$1.f10516b.invoke(obj3) : null;
                        offset.getClass();
                        long j3 = offset.f8808a;
                        Object obj4 = list.get(2);
                        Float f2 = obj4 != null ? (Float) obj4 : null;
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue(), null);
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        AnnotationType annotationType = obj5 != null ? (AnnotationType) obj5 : null;
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        Integer num = obj6 != null ? (Integer) obj6 : null;
                        num.getClass();
                        int iIntValue = num.intValue();
                        Object obj7 = list2.get(3);
                        Integer num2 = obj7 != null ? (Integer) obj7 : null;
                        num2.getClass();
                        int iIntValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        String str = obj8 != null ? (String) obj8 : null;
                        str.getClass();
                        switch (SaversKt.WhenMappings.f10517a[annotationType.ordinal()]) {
                            case 1:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10509h;
                                ParagraphStyle paragraphStyle = ((!Intrinsics.c(obj9, Boolean.FALSE) || (saverKt$Saver$4 instanceof NonNullValueClassSaver)) && obj9 != null) ? (ParagraphStyle) saverKt$Saver$4.f8439b.invoke(obj9) : null;
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(paragraphStyle, iIntValue, iIntValue2, str);
                                break;
                            case 2:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10510i;
                                SpanStyle spanStyle = ((!Intrinsics.c(obj10, Boolean.FALSE) || (saverKt$Saver$5 instanceof NonNullValueClassSaver)) && obj10 != null) ? (SpanStyle) saverKt$Saver$5.f8439b.invoke(obj10) : null;
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(spanStyle, iIntValue, iIntValue2, str);
                                break;
                            case 3:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.d;
                                VerbatimTtsAnnotation verbatimTtsAnnotation = ((!Intrinsics.c(obj11, Boolean.FALSE) || (saverKt$Saver$6 instanceof NonNullValueClassSaver)) && obj11 != null) ? (VerbatimTtsAnnotation) saverKt$Saver$6.f8439b.invoke(obj11) : null;
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(verbatimTtsAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 4:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10507e;
                                UrlAnnotation urlAnnotation = ((!Intrinsics.c(obj12, Boolean.FALSE) || (saverKt$Saver$7 instanceof NonNullValueClassSaver)) && obj12 != null) ? (UrlAnnotation) saverKt$Saver$7.f8439b.invoke(obj12) : null;
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(urlAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 5:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10508f;
                                LinkAnnotation.Url url = ((!Intrinsics.c(obj13, Boolean.FALSE) || (saverKt$Saver$8 instanceof NonNullValueClassSaver)) && obj13 != null) ? (LinkAnnotation.Url) saverKt$Saver$8.f8439b.invoke(obj13) : null;
                                url.getClass();
                                range = new AnnotatedString.Range(url, iIntValue, iIntValue2, str);
                                break;
                            case 6:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.g;
                                LinkAnnotation.Clickable clickable = ((!Intrinsics.c(obj14, Boolean.FALSE) || (saverKt$Saver$9 instanceof NonNullValueClassSaver)) && obj14 != null) ? (LinkAnnotation.Clickable) saverKt$Saver$9.f8439b.invoke(obj14) : null;
                                clickable.getClass();
                                range = new AnnotatedString.Range(clickable, iIntValue, iIntValue2, str);
                                break;
                            case 7:
                                Object obj15 = list2.get(1);
                                String str2 = obj15 != null ? (String) obj15 : null;
                                str2.getClass();
                                range = new AnnotatedString.Range(new StringAnnotation(str2), iIntValue, iIntValue2, str);
                                break;
                            default:
                                v40.g();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        Color.Companion companion3 = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.f10504a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.c(obj16, bool2);
                        Color color2 = obj16 != null ? (Color) saversKt$ColorSaver$2.invoke(obj16) : null;
                        color2.getClass();
                        long j4 = color2.f8872a;
                        Object obj17 = list3.get(1);
                        TextUnit.Companion companion4 = TextUnit.f11023b;
                        Function1 function1 = SaversKt.x.f10516b;
                        Intrinsics.c(obj17, bool2);
                        TextUnit textUnit = obj17 != null ? (TextUnit) function1.invoke(obj17) : null;
                        textUnit.getClass();
                        long j5 = textUnit.f11025a;
                        Object obj18 = list3.get(2);
                        FontWeight.Companion companion5 = FontWeight.f10727c;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.n;
                        FontWeight fontWeight = ((!Intrinsics.c(obj18, bool2) || (saverKt$Saver$12 instanceof NonNullValueClassSaver)) && obj18 != null) ? (FontWeight) saverKt$Saver$12.f8439b.invoke(obj18) : null;
                        Object obj19 = list3.get(3);
                        FontStyle.Companion companion6 = FontStyle.f10715b;
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.v;
                        FontStyle fontStyle = ((!Intrinsics.c(obj19, bool2) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj19 != null) ? (FontStyle) saverKt$Saver$13.f8439b.invoke(obj19) : null;
                        Object obj20 = list3.get(4);
                        FontSynthesis.Companion companion7 = FontSynthesis.f10718b;
                        SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.w;
                        FontSynthesis fontSynthesis = ((!Intrinsics.c(obj20, bool2) || (saverKt$Saver$14 instanceof NonNullValueClassSaver)) && obj20 != null) ? (FontSynthesis) saverKt$Saver$14.f8439b.invoke(obj20) : null;
                        Object obj21 = list3.get(6);
                        String str3 = obj21 != null ? (String) obj21 : null;
                        Object obj22 = list3.get(7);
                        Intrinsics.c(obj22, bool2);
                        TextUnit textUnit2 = obj22 != null ? (TextUnit) function1.invoke(obj22) : null;
                        textUnit2.getClass();
                        long j6 = textUnit2.f11025a;
                        Object obj23 = list3.get(8);
                        BaselineShift.Companion companion8 = BaselineShift.f10922b;
                        SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.o;
                        BaselineShift baselineShift = ((!Intrinsics.c(obj23, bool2) || (saverKt$Saver$15 instanceof NonNullValueClassSaver)) && obj23 != null) ? (BaselineShift) saverKt$Saver$15.f8439b.invoke(obj23) : null;
                        Object obj24 = list3.get(9);
                        TextGeometricTransform.Companion companion9 = TextGeometricTransform.f10975c;
                        SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.l;
                        TextGeometricTransform textGeometricTransform = ((!Intrinsics.c(obj24, bool2) || (saverKt$Saver$16 instanceof NonNullValueClassSaver)) && obj24 != null) ? (TextGeometricTransform) saverKt$Saver$16.f8439b.invoke(obj24) : null;
                        Object obj25 = list3.get(10);
                        LocaleList.Companion companion10 = LocaleList.d;
                        SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.A;
                        LocaleList localeList = ((!Intrinsics.c(obj25, bool2) || (saverKt$Saver$17 instanceof NonNullValueClassSaver)) && obj25 != null) ? (LocaleList) saverKt$Saver$17.f8439b.invoke(obj25) : null;
                        Object obj26 = list3.get(11);
                        Intrinsics.c(obj26, bool2);
                        Color color3 = obj26 != null ? (Color) saversKt$ColorSaver$2.invoke(obj26) : null;
                        color3.getClass();
                        long j7 = color3.f8872a;
                        Object obj27 = list3.get(12);
                        TextDecoration.Companion companion11 = TextDecoration.f10965b;
                        SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.f10512k;
                        TextDecoration textDecoration = ((!Intrinsics.c(obj27, bool2) || (saverKt$Saver$18 instanceof NonNullValueClassSaver)) && obj27 != null) ? (TextDecoration) saverKt$Saver$18.f8439b.invoke(obj27) : null;
                        Object obj28 = list3.get(13);
                        Shadow.Companion companion12 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.q;
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, ((!Intrinsics.c(obj28, bool2) || (saverKt$Saver$19 instanceof NonNullValueClassSaver)) && obj28 != null) ? (Shadow) saverKt$Saver$19.f8439b.invoke(obj28) : null, (PlatformSpanStyle) null, (DrawStyle) null, 49184, (DefaultConstructorMarker) null);
                }
            }
        });
        int i15 = 5;
        f10511j = new SaverKt$Saver$1(new zt0(i15), new gt0(i9));
        f10512k = new SaverKt$Saver$1(new xq0(i8, b2), new gt0(i4));
        int i16 = 14;
        l = new SaverKt$Saver$1(new xq0(i13, b2), new gt0(i16));
        int i17 = 15;
        m = new SaverKt$Saver$1(new xq0(9, b2), new gt0(i17));
        int i18 = 16;
        n = new SaverKt$Saver$1(new xq0(10, b2), new gt0(i18));
        xq0 xq0Var = new xq0(i3, b2);
        int i19 = 17;
        o = new SaverKt$Saver$1(xq0Var, new gt0(i19));
        xq0 xq0Var2 = new xq0(i16, b2);
        int i20 = 18;
        p = new SaverKt$Saver$1(xq0Var2, new gt0(i20));
        q = new SaverKt$Saver$1(new xq0(i17, b2), new Function1() { // from class: androidx.compose.ui.text.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AnnotatedString.Range range;
                int i110 = b2;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.f10514b;
                switch (i110) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        Color.Companion companion = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.c(obj2, bool);
                        Color color = obj2 != null ? (Color) saversKt$ColorSaver$2.invoke(obj2) : null;
                        color.getClass();
                        long j2 = color.f8872a;
                        Object obj3 = list.get(1);
                        Offset.Companion companion2 = Offset.f8806b;
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.z;
                        Intrinsics.c(obj3, bool);
                        Offset offset = obj3 != null ? (Offset) saversKt$NonNullValueClassSaver$1.f10516b.invoke(obj3) : null;
                        offset.getClass();
                        long j3 = offset.f8808a;
                        Object obj4 = list.get(2);
                        Float f2 = obj4 != null ? (Float) obj4 : null;
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue(), null);
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        AnnotationType annotationType = obj5 != null ? (AnnotationType) obj5 : null;
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        Integer num = obj6 != null ? (Integer) obj6 : null;
                        num.getClass();
                        int iIntValue = num.intValue();
                        Object obj7 = list2.get(3);
                        Integer num2 = obj7 != null ? (Integer) obj7 : null;
                        num2.getClass();
                        int iIntValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        String str = obj8 != null ? (String) obj8 : null;
                        str.getClass();
                        switch (SaversKt.WhenMappings.f10517a[annotationType.ordinal()]) {
                            case 1:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10509h;
                                ParagraphStyle paragraphStyle = ((!Intrinsics.c(obj9, Boolean.FALSE) || (saverKt$Saver$4 instanceof NonNullValueClassSaver)) && obj9 != null) ? (ParagraphStyle) saverKt$Saver$4.f8439b.invoke(obj9) : null;
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(paragraphStyle, iIntValue, iIntValue2, str);
                                break;
                            case 2:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10510i;
                                SpanStyle spanStyle = ((!Intrinsics.c(obj10, Boolean.FALSE) || (saverKt$Saver$5 instanceof NonNullValueClassSaver)) && obj10 != null) ? (SpanStyle) saverKt$Saver$5.f8439b.invoke(obj10) : null;
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(spanStyle, iIntValue, iIntValue2, str);
                                break;
                            case 3:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.d;
                                VerbatimTtsAnnotation verbatimTtsAnnotation = ((!Intrinsics.c(obj11, Boolean.FALSE) || (saverKt$Saver$6 instanceof NonNullValueClassSaver)) && obj11 != null) ? (VerbatimTtsAnnotation) saverKt$Saver$6.f8439b.invoke(obj11) : null;
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(verbatimTtsAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 4:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10507e;
                                UrlAnnotation urlAnnotation = ((!Intrinsics.c(obj12, Boolean.FALSE) || (saverKt$Saver$7 instanceof NonNullValueClassSaver)) && obj12 != null) ? (UrlAnnotation) saverKt$Saver$7.f8439b.invoke(obj12) : null;
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(urlAnnotation, iIntValue, iIntValue2, str);
                                break;
                            case 5:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10508f;
                                LinkAnnotation.Url url = ((!Intrinsics.c(obj13, Boolean.FALSE) || (saverKt$Saver$8 instanceof NonNullValueClassSaver)) && obj13 != null) ? (LinkAnnotation.Url) saverKt$Saver$8.f8439b.invoke(obj13) : null;
                                url.getClass();
                                range = new AnnotatedString.Range(url, iIntValue, iIntValue2, str);
                                break;
                            case 6:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.g;
                                LinkAnnotation.Clickable clickable = ((!Intrinsics.c(obj14, Boolean.FALSE) || (saverKt$Saver$9 instanceof NonNullValueClassSaver)) && obj14 != null) ? (LinkAnnotation.Clickable) saverKt$Saver$9.f8439b.invoke(obj14) : null;
                                clickable.getClass();
                                range = new AnnotatedString.Range(clickable, iIntValue, iIntValue2, str);
                                break;
                            case 7:
                                Object obj15 = list2.get(1);
                                String str2 = obj15 != null ? (String) obj15 : null;
                                str2.getClass();
                                range = new AnnotatedString.Range(new StringAnnotation(str2), iIntValue, iIntValue2, str);
                                break;
                            default:
                                v40.g();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        Color.Companion companion3 = Color.f8866b;
                        SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.f10504a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.c(obj16, bool2);
                        Color color2 = obj16 != null ? (Color) saversKt$ColorSaver$2.invoke(obj16) : null;
                        color2.getClass();
                        long j4 = color2.f8872a;
                        Object obj17 = list3.get(1);
                        TextUnit.Companion companion4 = TextUnit.f11023b;
                        Function1 function1 = SaversKt.x.f10516b;
                        Intrinsics.c(obj17, bool2);
                        TextUnit textUnit = obj17 != null ? (TextUnit) function1.invoke(obj17) : null;
                        textUnit.getClass();
                        long j5 = textUnit.f11025a;
                        Object obj18 = list3.get(2);
                        FontWeight.Companion companion5 = FontWeight.f10727c;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.n;
                        FontWeight fontWeight = ((!Intrinsics.c(obj18, bool2) || (saverKt$Saver$12 instanceof NonNullValueClassSaver)) && obj18 != null) ? (FontWeight) saverKt$Saver$12.f8439b.invoke(obj18) : null;
                        Object obj19 = list3.get(3);
                        FontStyle.Companion companion6 = FontStyle.f10715b;
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.v;
                        FontStyle fontStyle = ((!Intrinsics.c(obj19, bool2) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj19 != null) ? (FontStyle) saverKt$Saver$13.f8439b.invoke(obj19) : null;
                        Object obj20 = list3.get(4);
                        FontSynthesis.Companion companion7 = FontSynthesis.f10718b;
                        SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.w;
                        FontSynthesis fontSynthesis = ((!Intrinsics.c(obj20, bool2) || (saverKt$Saver$14 instanceof NonNullValueClassSaver)) && obj20 != null) ? (FontSynthesis) saverKt$Saver$14.f8439b.invoke(obj20) : null;
                        Object obj21 = list3.get(6);
                        String str3 = obj21 != null ? (String) obj21 : null;
                        Object obj22 = list3.get(7);
                        Intrinsics.c(obj22, bool2);
                        TextUnit textUnit2 = obj22 != null ? (TextUnit) function1.invoke(obj22) : null;
                        textUnit2.getClass();
                        long j6 = textUnit2.f11025a;
                        Object obj23 = list3.get(8);
                        BaselineShift.Companion companion8 = BaselineShift.f10922b;
                        SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.o;
                        BaselineShift baselineShift = ((!Intrinsics.c(obj23, bool2) || (saverKt$Saver$15 instanceof NonNullValueClassSaver)) && obj23 != null) ? (BaselineShift) saverKt$Saver$15.f8439b.invoke(obj23) : null;
                        Object obj24 = list3.get(9);
                        TextGeometricTransform.Companion companion9 = TextGeometricTransform.f10975c;
                        SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.l;
                        TextGeometricTransform textGeometricTransform = ((!Intrinsics.c(obj24, bool2) || (saverKt$Saver$16 instanceof NonNullValueClassSaver)) && obj24 != null) ? (TextGeometricTransform) saverKt$Saver$16.f8439b.invoke(obj24) : null;
                        Object obj25 = list3.get(10);
                        LocaleList.Companion companion10 = LocaleList.d;
                        SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.A;
                        LocaleList localeList = ((!Intrinsics.c(obj25, bool2) || (saverKt$Saver$17 instanceof NonNullValueClassSaver)) && obj25 != null) ? (LocaleList) saverKt$Saver$17.f8439b.invoke(obj25) : null;
                        Object obj26 = list3.get(11);
                        Intrinsics.c(obj26, bool2);
                        Color color3 = obj26 != null ? (Color) saversKt$ColorSaver$2.invoke(obj26) : null;
                        color3.getClass();
                        long j7 = color3.f8872a;
                        Object obj27 = list3.get(12);
                        TextDecoration.Companion companion11 = TextDecoration.f10965b;
                        SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.f10512k;
                        TextDecoration textDecoration = ((!Intrinsics.c(obj27, bool2) || (saverKt$Saver$18 instanceof NonNullValueClassSaver)) && obj27 != null) ? (TextDecoration) saverKt$Saver$18.f8439b.invoke(obj27) : null;
                        Object obj28 = list3.get(13);
                        Shadow.Companion companion12 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.q;
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, ((!Intrinsics.c(obj28, bool2) || (saverKt$Saver$19 instanceof NonNullValueClassSaver)) && obj28 != null) ? (Shadow) saverKt$Saver$19.f8439b.invoke(obj28) : null, (PlatformSpanStyle) null, (DrawStyle) null, 49184, (DefaultConstructorMarker) null);
                }
            }
        });
        r = new SaversKt$NonNullValueClassSaver$1(SaversKt$ColorSaver$1.f10513b, SaversKt$ColorSaver$2.f10514b);
        int i21 = 19;
        s = new SaversKt$NonNullValueClassSaver$1(new xq0(i18, b2), new gt0(i21));
        xq0 xq0Var3 = new xq0(i19, b2);
        int i22 = 21;
        t = new SaversKt$NonNullValueClassSaver$1(xq0Var3, new gt0(i22));
        u = new SaversKt$NonNullValueClassSaver$1(new xq0(i20, b2), new gt0(i11));
        v = new SaverKt$Saver$1(new xq0(i21, b2), new gt0(24));
        w = new SaverKt$Saver$1(new xq0(i10, b2), new gt0(25));
        x = new SaversKt$NonNullValueClassSaver$1(new xq0(i22, b2), new gt0(26));
        y = new SaversKt$NonNullValueClassSaver$1(new xq0(i5, b2), new gt0(27));
        z = new SaversKt$NonNullValueClassSaver$1(new xq0(24, b2), new gt0(28));
        A = new SaverKt$Saver$1(new xq0(25, b2), new gt0(29));
        B = new SaverKt$Saver$1(new xq0(26, b2), new yt0(b2));
        C = new SaverKt$Saver$1(new xq0(27, b2), new yt0(i12));
        D = new SaversKt$NonNullValueClassSaver$1(new xq0(28, b2), new yt0(i7));
        E = new SaversKt$NonNullValueClassSaver$1(new xq0(29, b2), new yt0(i14));
        F = new SaversKt$NonNullValueClassSaver$1(new zt0(b2), new yt0(i15));
    }

    public static final Object a(Object obj, Saver saver, SaverScope saverScope) {
        Object objA;
        return (obj == null || (objA = saver.a(saverScope, obj)) == null) ? Boolean.FALSE : objA;
    }
}
