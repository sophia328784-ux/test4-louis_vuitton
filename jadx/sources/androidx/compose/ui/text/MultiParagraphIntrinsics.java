package androidx.compose.ui.text;

import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsicInfo;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import defpackage.ct0;
import defpackage.u5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fB=\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u000e\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "Landroidx/compose/ui/text/AnnotatedString;", "annotatedString", "Landroidx/compose/ui/text/TextStyle;", "style", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "resourceLoader", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f10467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f10468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f10469c;
    public final Lazy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f10470e;

    public MultiParagraphIntrinsics(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, Density density, FontFamily.Resolver resolver) {
        int i2;
        AnnotatedString annotatedString2 = annotatedString;
        TextStyle textStyle2 = textStyle;
        this.f10467a = annotatedString2;
        this.f10468b = list;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final int i3 = 0;
        this.f10469c = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: nd0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MultiParagraphIntrinsics f76502c;

            {
                this.f76502c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ParagraphIntrinsics paragraphIntrinsics;
                ParagraphIntrinsics paragraphIntrinsics2;
                int i4 = i3;
                float fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                Object obj = null;
                int i5 = 1;
                MultiParagraphIntrinsics multiParagraphIntrinsics = this.f76502c;
                switch (i4) {
                    case 0:
                        ArrayList arrayList = multiParagraphIntrinsics.f10470e;
                        if (!arrayList.isEmpty()) {
                            Object obj2 = arrayList.get(0);
                            float fC2 = ((ParagraphIntrinsicInfo) obj2).f10476a.c();
                            int size = arrayList.size() - 1;
                            if (1 <= size) {
                                while (true) {
                                    Object obj3 = arrayList.get(i5);
                                    float fC3 = ((ParagraphIntrinsicInfo) obj3).f10476a.c();
                                    if (Float.compare(fC2, fC3) < 0) {
                                        obj2 = obj3;
                                        fC2 = fC3;
                                    }
                                    if (i5 != size) {
                                        i5++;
                                    }
                                }
                            }
                            obj = obj2;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
                        if (paragraphIntrinsicInfo != null && (paragraphIntrinsics = paragraphIntrinsicInfo.f10476a) != null) {
                            fC = paragraphIntrinsics.c();
                        }
                        return Float.valueOf(fC);
                    default:
                        ArrayList arrayList2 = multiParagraphIntrinsics.f10470e;
                        if (!arrayList2.isEmpty()) {
                            Object obj4 = arrayList2.get(0);
                            float fB = ((ParagraphIntrinsicInfo) obj4).f10476a.b();
                            int size2 = arrayList2.size() - 1;
                            if (1 <= size2) {
                                while (true) {
                                    Object obj5 = arrayList2.get(i5);
                                    float fB2 = ((ParagraphIntrinsicInfo) obj5).f10476a.b();
                                    if (Float.compare(fB, fB2) < 0) {
                                        obj4 = obj5;
                                        fB = fB2;
                                    }
                                    if (i5 != size2) {
                                        i5++;
                                    }
                                }
                            }
                            obj = obj4;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = (ParagraphIntrinsicInfo) obj;
                        if (paragraphIntrinsicInfo2 != null && (paragraphIntrinsics2 = paragraphIntrinsicInfo2.f10476a) != null) {
                            fC = paragraphIntrinsics2.b();
                        }
                        return Float.valueOf(fC);
                }
            }
        });
        final int i4 = 1;
        this.d = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: nd0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MultiParagraphIntrinsics f76502c;

            {
                this.f76502c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ParagraphIntrinsics paragraphIntrinsics;
                ParagraphIntrinsics paragraphIntrinsics2;
                int i5 = i4;
                float fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                Object obj = null;
                int i6 = 1;
                MultiParagraphIntrinsics multiParagraphIntrinsics = this.f76502c;
                switch (i5) {
                    case 0:
                        ArrayList arrayList = multiParagraphIntrinsics.f10470e;
                        if (!arrayList.isEmpty()) {
                            Object obj2 = arrayList.get(0);
                            float fC2 = ((ParagraphIntrinsicInfo) obj2).f10476a.c();
                            int size = arrayList.size() - 1;
                            if (1 <= size) {
                                while (true) {
                                    Object obj3 = arrayList.get(i6);
                                    float fC3 = ((ParagraphIntrinsicInfo) obj3).f10476a.c();
                                    if (Float.compare(fC2, fC3) < 0) {
                                        obj2 = obj3;
                                        fC2 = fC3;
                                    }
                                    if (i6 != size) {
                                        i6++;
                                    }
                                }
                            }
                            obj = obj2;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
                        if (paragraphIntrinsicInfo != null && (paragraphIntrinsics = paragraphIntrinsicInfo.f10476a) != null) {
                            fC = paragraphIntrinsics.c();
                        }
                        return Float.valueOf(fC);
                    default:
                        ArrayList arrayList2 = multiParagraphIntrinsics.f10470e;
                        if (!arrayList2.isEmpty()) {
                            Object obj4 = arrayList2.get(0);
                            float fB = ((ParagraphIntrinsicInfo) obj4).f10476a.b();
                            int size2 = arrayList2.size() - 1;
                            if (1 <= size2) {
                                while (true) {
                                    Object obj5 = arrayList2.get(i6);
                                    float fB2 = ((ParagraphIntrinsicInfo) obj5).f10476a.b();
                                    if (Float.compare(fB, fB2) < 0) {
                                        obj4 = obj5;
                                        fB = fB2;
                                    }
                                    if (i6 != size2) {
                                        i6++;
                                    }
                                }
                            }
                            obj = obj4;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = (ParagraphIntrinsicInfo) obj;
                        if (paragraphIntrinsicInfo2 != null && (paragraphIntrinsics2 = paragraphIntrinsicInfo2.f10476a) != null) {
                            fC = paragraphIntrinsics2.b();
                        }
                        return Float.valueOf(fC);
                }
            }
        });
        ParagraphStyle paragraphStyle = textStyle2.f10569b;
        AnnotatedString annotatedString3 = AnnotatedStringKt.f10431a;
        ArrayList arrayList = annotatedString2.f10421e;
        String str = annotatedString2.f10420c;
        List listO0 = (arrayList == null || (listO0 = CollectionsKt.o0(arrayList, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedStringKt$normalizedParagraphStyles$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((AnnotatedString.Range) obj).f10429b).compareTo(Integer.valueOf(((AnnotatedString.Range) obj2).f10429b));
            }
        })) == null) ? EmptyList.f71768b : listO0;
        ArrayList arrayList2 = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int size = listO0.size();
        int i5 = 0;
        int i6 = 0;
        while (i5 < size) {
            AnnotatedString.Range range = (AnnotatedString.Range) listO0.get(i5);
            AnnotatedString.Range rangeA = AnnotatedString.Range.a(range, paragraphStyle.a((ParagraphStyle) range.f10428a), i3, 14);
            Object obj = rangeA.f10428a;
            int i7 = rangeA.f10430c;
            int i8 = rangeA.f10429b;
            while (i6 < i8 && !arrayDeque.isEmpty()) {
                AnnotatedString.Range range2 = (AnnotatedString.Range) arrayDeque.last();
                int i9 = range2.f10430c;
                listO0 = listO0;
                Object obj2 = range2.f10428a;
                if (i8 < i9) {
                    arrayList2.add(new AnnotatedString.Range(obj2, i6, i8));
                    i6 = i8;
                } else {
                    int i10 = size;
                    arrayList2.add(new AnnotatedString.Range(obj2, i6, i9));
                    i6 = range2.f10430c;
                    while (!arrayDeque.isEmpty() && i6 == ((AnnotatedString.Range) arrayDeque.last()).f10430c) {
                        arrayDeque.removeLast();
                    }
                    size = i10;
                }
            }
            List list2 = listO0;
            int i11 = size;
            if (i6 < i8) {
                arrayList2.add(new AnnotatedString.Range(paragraphStyle, i6, i8));
                i6 = i8;
            }
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayDeque.p();
            if (range3 != null) {
                int i12 = range3.f10430c;
                Object obj3 = range3.f10428a;
                int i13 = range3.f10429b;
                if (i13 == i8 && i12 == i7) {
                    arrayDeque.removeLast();
                    arrayDeque.addLast(new AnnotatedString.Range(((ParagraphStyle) obj3).a((ParagraphStyle) obj), i8, i7));
                } else if (i13 == i12) {
                    arrayList2.add(new AnnotatedString.Range(obj3, i13, i12));
                    arrayDeque.removeLast();
                    arrayDeque.addLast(new AnnotatedString.Range(obj, i8, i7));
                } else {
                    if (i12 < i7) {
                        ct0.c();
                        throw null;
                    }
                    arrayDeque.addLast(new AnnotatedString.Range(((ParagraphStyle) obj3).a((ParagraphStyle) obj), i8, i7));
                }
            } else {
                arrayDeque.addLast(new AnnotatedString.Range(obj, i8, i7));
            }
            i5++;
            listO0 = list2;
            size = i11;
            i3 = 0;
        }
        while (i6 <= str.length() && !arrayDeque.isEmpty()) {
            AnnotatedString.Range range4 = (AnnotatedString.Range) arrayDeque.last();
            Object obj4 = range4.f10428a;
            int i14 = range4.f10430c;
            arrayList2.add(new AnnotatedString.Range(obj4, i6, i14));
            while (!arrayDeque.isEmpty() && i14 == ((AnnotatedString.Range) arrayDeque.last()).f10430c) {
                arrayDeque.removeLast();
            }
            i6 = i14;
        }
        if (i6 < str.length()) {
            arrayList2.add(new AnnotatedString.Range(paragraphStyle, i6, str.length()));
        }
        if (arrayList2.isEmpty()) {
            i2 = 0;
            arrayList2.add(new AnnotatedString.Range(paragraphStyle, 0, 0));
        } else {
            i2 = 0;
        }
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int i15 = i2;
        for (int size2 = arrayList2.size(); i15 < size2; size2 = size2) {
            AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList2.get(i15);
            int i16 = range5.f10429b;
            int i17 = range5.f10430c;
            String strSubstring = i16 != i17 ? str.substring(i16, i17) : "";
            List listA = AnnotatedStringKt.a(annotatedString2, i16, i17, new u5(1));
            AnnotatedString annotatedString4 = new AnnotatedString(strSubstring, (List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>>) (listA == null ? EmptyList.f71768b : listA));
            ParagraphStyle paragraphStyle2 = (ParagraphStyle) range5.f10428a;
            int i18 = paragraphStyle2.f10480b;
            TextDirection.f10969b.getClass();
            if (i18 == 0) {
                paragraphStyle2 = new ParagraphStyle(paragraphStyle2.f10479a, paragraphStyle.f10480b, paragraphStyle2.f10481c, paragraphStyle2.d, paragraphStyle2.f10482e, paragraphStyle2.f10483f, paragraphStyle2.g, paragraphStyle2.f10484h, paragraphStyle2.f10485i, (DefaultConstructorMarker) null);
            }
            TextStyle textStyle3 = new TextStyle(textStyle2.f10568a, textStyle2.f10569b.a(paragraphStyle2));
            List list3 = annotatedString4.f10419b;
            List list4 = list3 == null ? EmptyList.f71768b : list3;
            List list5 = this.f10468b;
            ArrayList arrayList4 = new ArrayList(list5.size());
            int size3 = list5.size();
            int i19 = 0;
            while (i19 < size3) {
                AnnotatedString.Range range6 = (AnnotatedString.Range) list5.get(i19);
                ParagraphStyle paragraphStyle3 = paragraphStyle;
                int i20 = range6.f10429b;
                TextStyle textStyle4 = textStyle3;
                int i21 = range6.f10430c;
                if (AnnotatedStringKt.b(i16, i17, i20, i21)) {
                    if (i16 > i20 || i21 > i17) {
                        InlineClassHelperKt.a("placeholder can not overlap with paragraph.");
                    }
                    arrayList4.add(new AnnotatedString.Range(range6.f10428a, i20 - i16, i21 - i16));
                }
                i19++;
                list5 = list5;
                textStyle3 = textStyle4;
                paragraphStyle = paragraphStyle3;
            }
            arrayList3.add(new ParagraphIntrinsicInfo(new AndroidParagraphIntrinsics(annotatedString4.f10420c, textStyle3, list4, arrayList4, resolver, density), i16, i17));
            i15++;
            annotatedString2 = annotatedString;
            textStyle2 = textStyle;
        }
        this.f10470e = arrayList3;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean a() {
        ArrayList arrayList = this.f10470e;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((ParagraphIntrinsicInfo) arrayList.get(i2)).f10476a.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float b() {
        return ((Number) this.d.getF71699b()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float c() {
        return ((Number) this.f10469c.getF71699b()).floatValue();
    }

    @Deprecated
    public MultiParagraphIntrinsics(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, Density density, Font.ResourceLoader resourceLoader) {
        this(annotatedString, textStyle, list, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader));
    }
}
