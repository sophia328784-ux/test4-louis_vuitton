package defpackage;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.savedstate.serialization.SavedStateConfigurationKt;
import androidx.savedstate.serialization.serializers.MutableStateFlowSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.SerialModuleImpl;
import okhttp3.OkHttpClient;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gt0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69489b;

    public /* synthetic */ gt0(int i2) {
        this.f69489b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SpanStyle spanStyle = null;
        textLinkStyles = null;
        TextLinkStyles textLinkStyles = null;
        spanStyle = null;
        int i2 = 0;
        switch (this.f69489b) {
            case 0:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 1:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 2:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 3:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 4:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 5:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 6:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 7:
                ((OkHttpClient.Builder) obj).getClass();
                return Unit.f71739a;
            case 8:
                List list = (List) obj;
                SerialModuleImpl serialModuleImpl = SavedStateConfigurationKt.f19821a;
                list.getClass();
                return new MutableStateFlowSerializer((KSerializer) CollectionsKt.B(list));
            case 9:
                List list2 = (List) obj;
                list2.getClass();
                return new SparseArraySerializer((KSerializer) CollectionsKt.B(list2));
            case 10:
                return obj;
            case 11:
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                obj.getClass();
                List list3 = (List) obj;
                Object obj2 = list3.get(0);
                SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10510i;
                Function1 function1 = saverKt$Saver$2.f8439b;
                Boolean bool = Boolean.FALSE;
                SpanStyle spanStyle2 = ((!Intrinsics.c(obj2, bool) || (saverKt$Saver$2 instanceof NonNullValueClassSaver)) && obj2 != null) ? (SpanStyle) function1.invoke(obj2) : null;
                Object obj3 = list3.get(1);
                SpanStyle spanStyle3 = ((!Intrinsics.c(obj3, bool) || (saverKt$Saver$2 instanceof NonNullValueClassSaver)) && obj3 != null) ? (SpanStyle) function1.invoke(obj3) : null;
                Object obj4 = list3.get(2);
                SpanStyle spanStyle4 = ((!Intrinsics.c(obj4, bool) || (saverKt$Saver$2 instanceof NonNullValueClassSaver)) && obj4 != null) ? (SpanStyle) function1.invoke(obj4) : null;
                Object obj5 = list3.get(3);
                if ((!Intrinsics.c(obj5, bool) || (saverKt$Saver$2 instanceof NonNullValueClassSaver)) && obj5 != null) {
                    spanStyle = (SpanStyle) function1.invoke(obj5);
                }
                return new TextLinkStyles(spanStyle2, spanStyle3, spanStyle4, spanStyle);
            case 12:
                SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                obj.getClass();
                List list4 = (List) obj;
                Object obj6 = list4.get(1);
                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10505b;
                List list5 = ((!Intrinsics.c(obj6, Boolean.FALSE) || (saverKt$Saver$4 instanceof NonNullValueClassSaver)) && obj6 != null) ? (List) saverKt$Saver$4.f8439b.invoke(obj6) : null;
                Object obj7 = list4.get(0);
                String str = obj7 != null ? (String) obj7 : null;
                str.getClass();
                return new AnnotatedString((List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>>) list5, str);
            case 13:
                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10504a;
                obj.getClass();
                return new TextDecoration(((Integer) obj).intValue());
            case 14:
                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.f10504a;
                obj.getClass();
                List list6 = (List) obj;
                return new TextGeometricTransform(((Number) list6.get(0)).floatValue(), ((Number) list6.get(1)).floatValue());
            case 15:
                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10504a;
                obj.getClass();
                List list7 = (List) obj;
                Object obj8 = list7.get(0);
                TextUnit.Companion companion = TextUnit.f11023b;
                Function1 function2 = SaversKt.x.f10516b;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.c(obj8, bool2);
                TextUnit textUnit = obj8 != null ? (TextUnit) function2.invoke(obj8) : null;
                textUnit.getClass();
                long j2 = textUnit.f11025a;
                Object obj9 = list7.get(1);
                Intrinsics.c(obj9, bool2);
                TextUnit textUnit2 = obj9 != null ? (TextUnit) function2.invoke(obj9) : null;
                textUnit2.getClass();
                return new TextIndent(j2, textUnit2.f11025a, null);
            case 16:
                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10504a;
                obj.getClass();
                return new FontWeight(((Integer) obj).intValue());
            case 17:
                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.f10504a;
                obj.getClass();
                return new BaselineShift(((Float) obj).floatValue());
            case 18:
                SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                obj.getClass();
                List list8 = (List) obj;
                Object obj10 = list8.get(0);
                Integer num = obj10 != null ? (Integer) obj10 : null;
                num.getClass();
                int iIntValue = num.intValue();
                Object obj11 = list8.get(1);
                Integer num2 = obj11 != null ? (Integer) obj11 : null;
                num2.getClass();
                return new TextRange(TextRangeKt.a(iIntValue, num2.intValue()));
            case 19:
                SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.f10504a;
                obj.getClass();
                return new TextAlign(((Integer) obj).intValue());
            case 20:
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.f10504a;
                obj.getClass();
                List list9 = (List) obj;
                Object obj12 = list9.get(0);
                String str2 = obj12 != null ? (String) obj12 : null;
                str2.getClass();
                Object obj13 = list9.get(1);
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.f10511j;
                if ((!Intrinsics.c(obj13, Boolean.FALSE) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj13 != null) {
                    textLinkStyles = (TextLinkStyles) saverKt$Saver$13.f8439b.invoke(obj13);
                }
                return new LinkAnnotation.Url(str2, textLinkStyles, null, 4, null);
            case 21:
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.f10504a;
                obj.getClass();
                return new TextDirection(((Integer) obj).intValue());
            case 22:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.f10504a;
                obj.getClass();
                return new Hyphens(((Integer) obj).intValue());
            case 23:
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.f10504a;
                obj.getClass();
                List list10 = (List) obj;
                ArrayList arrayList = new ArrayList(list10.size());
                int size = list10.size();
                while (i2 < size) {
                    Object obj14 = list10.get(i2);
                    SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.f10506c;
                    AnnotatedString.Range range = ((!Intrinsics.c(obj14, Boolean.FALSE) || (saverKt$Saver$17 instanceof NonNullValueClassSaver)) && obj14 != null) ? (AnnotatedString.Range) saverKt$Saver$17.f8439b.invoke(obj14) : null;
                    range.getClass();
                    arrayList.add(range);
                    i2++;
                }
                return arrayList;
            case 24:
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.f10504a;
                obj.getClass();
                return new FontStyle(((Integer) obj).intValue());
            case 25:
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.f10504a;
                obj.getClass();
                return new FontSynthesis(((Integer) obj).intValue());
            case 26:
                SaverKt$Saver$1 saverKt$Saver$20 = SaversKt.f10504a;
                Boolean bool3 = Boolean.FALSE;
                if (Intrinsics.c(obj, bool3)) {
                    TextUnit.f11023b.getClass();
                    return new TextUnit(TextUnit.d);
                }
                obj.getClass();
                List list11 = (List) obj;
                Object obj15 = list11.get(0);
                Float f2 = obj15 != null ? (Float) obj15 : null;
                f2.getClass();
                float fFloatValue = f2.floatValue();
                Object obj16 = list11.get(1);
                TextUnitType.Companion companion2 = TextUnitType.f11026b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.y;
                Intrinsics.c(obj16, bool3);
                TextUnitType textUnitType = obj16 != null ? (TextUnitType) saversKt$NonNullValueClassSaver$1.f10516b.invoke(obj16) : null;
                textUnitType.getClass();
                return new TextUnit(TextUnitKt.d(fFloatValue, textUnitType.f11028a));
            case 27:
                SaverKt$Saver$1 saverKt$Saver$21 = SaversKt.f10504a;
                if (Intrinsics.c(obj, 0)) {
                    TextUnitType.f11026b.getClass();
                    return new TextUnitType(TextUnitType.d);
                }
                if (Intrinsics.c(obj, 1)) {
                    TextUnitType.f11026b.getClass();
                    return new TextUnitType(TextUnitType.f11027c);
                }
                TextUnitType.f11026b.getClass();
                return new TextUnitType(0L);
            case 28:
                SaverKt$Saver$1 saverKt$Saver$22 = SaversKt.f10504a;
                if (Intrinsics.c(obj, Boolean.FALSE)) {
                    Offset.f8806b.getClass();
                    return new Offset(Offset.d);
                }
                obj.getClass();
                List list12 = (List) obj;
                Object obj17 = list12.get(0);
                Float f3 = obj17 != null ? (Float) obj17 : null;
                f3.getClass();
                float fFloatValue2 = f3.floatValue();
                Object obj18 = list12.get(1);
                Float f4 = obj18 != null ? (Float) obj18 : null;
                f4.getClass();
                return new Offset((((long) Float.floatToRawIntBits(f4.floatValue())) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fFloatValue2)) << 32));
            default:
                SaverKt$Saver$1 saverKt$Saver$23 = SaversKt.f10504a;
                obj.getClass();
                List list13 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list13.size());
                int size2 = list13.size();
                while (i2 < size2) {
                    Object obj19 = list13.get(i2);
                    Locale.Companion companion3 = Locale.f10870b;
                    SaverKt$Saver$1 saverKt$Saver$24 = SaversKt.B;
                    Locale locale = ((!Intrinsics.c(obj19, Boolean.FALSE) || (saverKt$Saver$24 instanceof NonNullValueClassSaver)) && obj19 != null) ? (Locale) saverKt$Saver$24.f8439b.invoke(obj19) : null;
                    locale.getClass();
                    arrayList2.add(locale);
                    i2++;
                }
                return new LocaleList(arrayList2);
        }
    }
}
