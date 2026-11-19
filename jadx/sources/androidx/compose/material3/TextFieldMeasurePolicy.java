package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.os;
import defpackage.zt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/TextFieldMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "", "singleLine", "Landroidx/compose/material3/TextFieldLabelPosition;", "labelPosition", "Landroidx/compose/material3/internal/FloatProducer;", "labelProgress", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "Landroidx/compose/ui/unit/Dp;", "minimizedLabelHalfHeight", "<init>", "(ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TextFieldMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextFieldLabelPosition f7380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FloatProducer f7381c;
    public final PaddingValues d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f7382e;

    public TextFieldMeasurePolicy(boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7379a = z;
        this.f7380b = textFieldLabelPosition;
        this.f7381c = floatProducer;
        this.d = paddingValues;
        this.f7382e = f2;
    }

    public static int c(List list, int i2, Function2 function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        List list2 = list;
        int size = list2.size();
        for (int i3 = 0; i3 < size; i3++) {
            Object obj7 = list.get(i3);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj7), "TextField")) {
                int iIntValue = ((Number) function2.invoke(obj7, Integer.valueOf(i2))).intValue();
                int size2 = list2.size();
                int i4 = 0;
                while (true) {
                    obj = null;
                    if (i4 >= size2) {
                        obj2 = null;
                        break;
                    }
                    obj2 = list.get(i4);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj2), "Label")) {
                        break;
                    }
                    i4++;
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                int iIntValue2 = intrinsicMeasurable != null ? ((Number) function2.invoke(intrinsicMeasurable, Integer.valueOf(i2))).intValue() : 0;
                int size3 = list2.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size3) {
                        obj3 = null;
                        break;
                    }
                    obj3 = list.get(i5);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj3), "Trailing")) {
                        break;
                    }
                    i5++;
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                int iIntValue3 = intrinsicMeasurable2 != null ? ((Number) function2.invoke(intrinsicMeasurable2, Integer.valueOf(i2))).intValue() : 0;
                int size4 = list2.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size4) {
                        obj4 = null;
                        break;
                    }
                    obj4 = list.get(i6);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj4), "Prefix")) {
                        break;
                    }
                    i6++;
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                int iIntValue4 = intrinsicMeasurable3 != null ? ((Number) function2.invoke(intrinsicMeasurable3, Integer.valueOf(i2))).intValue() : 0;
                int size5 = list2.size();
                int i7 = 0;
                while (true) {
                    if (i7 >= size5) {
                        obj5 = null;
                        break;
                    }
                    obj5 = list.get(i7);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj5), "Suffix")) {
                        break;
                    }
                    i7++;
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
                int iIntValue5 = intrinsicMeasurable4 != null ? ((Number) function2.invoke(intrinsicMeasurable4, Integer.valueOf(i2))).intValue() : 0;
                int size6 = list2.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size6) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i8);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj6), "Leading")) {
                        break;
                    }
                    i8++;
                }
                IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) obj6;
                int iIntValue6 = intrinsicMeasurable5 != null ? ((Number) function2.invoke(intrinsicMeasurable5, Integer.valueOf(i2))).intValue() : 0;
                int size7 = list2.size();
                for (int i9 = 0; i9 < size7; i9++) {
                    Object obj8 = list.get(i9);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj8), "Hint")) {
                        obj = obj8;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable6 = (IntrinsicMeasurable) obj;
                int i10 = iIntValue4 + iIntValue5;
                return ConstraintsKt.g(Math.max(iIntValue + i10, Math.max((intrinsicMeasurable6 != null ? ((Number) function2.invoke(intrinsicMeasurable6, Integer.valueOf(i2))).intValue() : 0) + i10, iIntValue2)) + iIntValue6 + iIntValue3, ConstraintsKt.b(0, 0, 0, 0, 15));
            }
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return 0;
    }

    public static final int d(TextFieldMeasurePolicy textFieldMeasurePolicy, int i2, int i3, Placeable placeable) {
        if (!textFieldMeasurePolicy.f7379a) {
            return i3;
        }
        Alignment.f8582a.getClass();
        return Alignment.Companion.l.a(placeable.f9549c, i2);
    }

    public final int a(IntrinsicMeasureScope intrinsicMeasureScope, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, long j2, boolean z, float f2) {
        PaddingValues paddingValues = this.d;
        float d = paddingValues.getD() + paddingValues.getF5031b();
        Dp.Companion companion = Dp.f11004c;
        int iB0 = intrinsicMeasureScope.B0(d) + ((i3 <= 0 || z) ? 0 : Math.max(intrinsicMeasureScope.B0(this.f7382e * 2.0f), MathHelpersKt.c(0, i3, MotionTokens.f7811a.a(f2)))) + ComparisonsKt.b(i2, i8, i6, i7, z ? 0 : MathHelpersKt.c(i3, 0, f2));
        if (!z) {
            i3 = 0;
        }
        return ConstraintsKt.f(Math.max(i4, Math.max(i5, iB0)) + i3 + i9, j2);
    }

    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2, Function2 function2) {
        Object obj;
        int i3;
        int iB;
        int iIntValue;
        Object obj2;
        int iIntValue2;
        Object obj3;
        Object obj4;
        int iIntValue3;
        Object obj5;
        int i4;
        int i5;
        List list2;
        Object obj6;
        int i6;
        int iIntValue4;
        Object obj7;
        List list3 = list;
        int size = list3.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i7);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj), "Leading")) {
                break;
            }
            i7++;
        }
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj;
        if (intrinsicMeasurable != null) {
            i3 = i2;
            iB = LayoutUtilKt.b(i3, intrinsicMeasurable.S(Integer.MAX_VALUE));
            iIntValue = ((Number) function2.invoke(intrinsicMeasurable, Integer.valueOf(i3))).intValue();
        } else {
            i3 = i2;
            iB = i3;
            iIntValue = 0;
        }
        int size2 = list3.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i8);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj2), "Trailing")) {
                break;
            }
            i8++;
        }
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj2;
        if (intrinsicMeasurable2 != null) {
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable2.S(Integer.MAX_VALUE));
            iIntValue2 = ((Number) function2.invoke(intrinsicMeasurable2, Integer.valueOf(i3))).intValue();
        } else {
            iIntValue2 = 0;
        }
        int size3 = list3.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list.get(i9);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj3), "Label")) {
                break;
            }
            i9++;
        }
        Object obj8 = (IntrinsicMeasurable) obj3;
        int iIntValue5 = obj8 != null ? ((Number) function2.invoke(obj8, Integer.valueOf(iB))).intValue() : 0;
        int size4 = list3.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i10);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj4), "Prefix")) {
                break;
            }
            i10++;
        }
        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
        if (intrinsicMeasurable3 != null) {
            iIntValue3 = ((Number) function2.invoke(intrinsicMeasurable3, Integer.valueOf(iB))).intValue();
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable3.S(Integer.MAX_VALUE));
        } else {
            iIntValue3 = 0;
        }
        int size5 = list3.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list.get(i11);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj5), "Suffix")) {
                break;
            }
            i11++;
        }
        IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
        if (intrinsicMeasurable4 != null) {
            int iIntValue6 = ((Number) function2.invoke(intrinsicMeasurable4, Integer.valueOf(iB))).intValue();
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable4.S(Integer.MAX_VALUE));
            int i12 = iIntValue3;
            i5 = iIntValue6;
            i4 = i12;
        } else {
            i4 = iIntValue3;
            i5 = 0;
        }
        int size6 = list3.size();
        int i13 = 0;
        while (i13 < size6) {
            Object obj9 = list.get(i13);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj9), "TextField")) {
                int iIntValue7 = ((Number) function2.invoke(obj9, Integer.valueOf(iB))).intValue();
                int size7 = list3.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size7) {
                        list2 = list3;
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i14);
                    list2 = list3;
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj6), "Hint")) {
                        break;
                    }
                    i14++;
                    list3 = list2;
                }
                Object obj10 = (IntrinsicMeasurable) obj6;
                if (obj10 != null) {
                    int i15 = iIntValue;
                    iIntValue4 = ((Number) function2.invoke(obj10, Integer.valueOf(iB))).intValue();
                    i6 = i15;
                } else {
                    i6 = iIntValue;
                    iIntValue4 = 0;
                }
                int size8 = list2.size();
                int i16 = 0;
                while (true) {
                    if (i16 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list.get(i16);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj7), "Supporting")) {
                        break;
                    }
                    i16++;
                }
                Object obj11 = (IntrinsicMeasurable) obj7;
                return a(intrinsicMeasureScope, iIntValue7, iIntValue5, i6, iIntValue2, i4, i5, iIntValue4, obj11 != null ? ((Number) function2.invoke(obj11, Integer.valueOf(i3))).intValue() : 0, ConstraintsKt.b(0, 0, 0, 0, 15), this.f7380b instanceof TextFieldLabelPosition.Above, this.f7381c.invoke());
            }
            i13++;
            i4 = i4;
            list3 = list3;
            i5 = i5;
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return b(intrinsicMeasureScope, list, i2, new zt0(28));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return c(list, i2, new zt0(26));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:102:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:106:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:110:0x021a  */
    /* JADX WARN: Code duplicated, block: B:114:0x0253  */
    /* JADX WARN: Code duplicated, block: B:117:0x026c A[LOOP:7: B:113:0x0251->B:117:0x026c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:121:0x0279  */
    /* JADX WARN: Code duplicated, block: B:122:0x027e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0284  */
    /* JADX WARN: Code duplicated, block: B:126:0x0287  */
    /* JADX WARN: Code duplicated, block: B:129:0x0296  */
    /* JADX WARN: Code duplicated, block: B:130:0x0299  */
    /* JADX WARN: Code duplicated, block: B:133:0x029e  */
    /* JADX WARN: Code duplicated, block: B:134:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:137:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:138:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:141:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:142:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:145:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:146:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:149:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:150:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:153:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:155:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:156:0x0303  */
    /* JADX WARN: Code duplicated, block: B:158:0x0308  */
    /* JADX WARN: Code duplicated, block: B:161:0x0325  */
    /* JADX WARN: Code duplicated, block: B:162:0x032b  */
    /* JADX WARN: Code duplicated, block: B:164:0x032f  */
    /* JADX WARN: Code duplicated, block: B:165:0x0334  */
    /* JADX WARN: Code duplicated, block: B:168:0x033e  */
    /* JADX WARN: Code duplicated, block: B:169:0x0342  */
    /* JADX WARN: Code duplicated, block: B:171:0x0345  */
    /* JADX WARN: Code duplicated, block: B:172:0x034d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0351  */
    /* JADX WARN: Code duplicated, block: B:175:0x0359  */
    /* JADX WARN: Code duplicated, block: B:177:0x035d  */
    /* JADX WARN: Code duplicated, block: B:178:0x0360  */
    /* JADX WARN: Code duplicated, block: B:180:0x0363  */
    /* JADX WARN: Code duplicated, block: B:181:0x036b  */
    /* JADX WARN: Code duplicated, block: B:184:0x0371  */
    /* JADX WARN: Code duplicated, block: B:185:0x0379  */
    /* JADX WARN: Code duplicated, block: B:187:0x037d  */
    /* JADX WARN: Code duplicated, block: B:188:0x039e  */
    /* JADX WARN: Code duplicated, block: B:194:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:197:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:201:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:202:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:204:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:205:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:208:0x0425 A[LOOP:8: B:196:0x03d5->B:208:0x0425, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:211:0x043a A[LOOP:6: B:108:0x0216->B:211:0x043a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:224:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x01d7 A[EDGE_INSN: B:225:0x01d7->B:99:0x01d7 BREAK  A[LOOP:5: B:93:0x01b1->B:97:0x01cc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0271 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x0273 A[EDGE_INSN: B:229:0x0273->B:119:0x0273 BREAK  A[LOOP:7: B:113:0x0251->B:117:0x026c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:97:0x01cc A[LOOP:5: B:93:0x01b1->B:97:0x01cc, LOOP_END] */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(final MeasureScope measureScope, List list, long j2) {
        Object obj;
        Object obj2;
        List list2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i2;
        Placeable placeable;
        int size;
        int i3;
        long j3;
        Object obj6;
        Measurable measurable;
        int iH;
        Placeable placeable2;
        int i4;
        int i5;
        int i6;
        long jI;
        int size2;
        int i7;
        int i8;
        Measurable measurable2;
        int i9;
        int i10;
        Placeable placeableT;
        long jA;
        int size3;
        int i11;
        Object obj7;
        Measurable measurable3;
        Placeable placeableT2;
        int i12;
        int i13;
        final Placeable placeable3;
        int i14;
        int i15;
        int i16;
        Placeable placeable4;
        int i17;
        int i18;
        boolean z;
        final int iG;
        long j4;
        long jA2;
        final Placeable placeableT3;
        int i19;
        Placeable placeable5;
        int i20;
        Placeable placeable6;
        int i21;
        int i22;
        int i23;
        int i24;
        final Placeable placeable7;
        Placeable placeable8;
        int i25;
        Placeable placeable9;
        int i26;
        int i27;
        final int iA;
        int i28;
        final int i29;
        int size4;
        int i30;
        Measurable measurable4;
        int i31;
        int i32;
        Placeable placeable10;
        long jA3;
        Placeable placeableT4;
        int i33;
        int i34;
        int i35;
        List list3 = list;
        final float fInvoke = this.f7381c.invoke();
        PaddingValues paddingValues = this.d;
        int iB0 = measureScope.B0(paddingValues.getF5031b());
        int iB1 = measureScope.B0(paddingValues.getD());
        long jA4 = Constraints.a(j2, 0, 0, 0, 0, 10);
        List list4 = list3;
        int size5 = list4.size();
        int i36 = 0;
        while (true) {
            if (i36 >= size5) {
                obj = null;
                break;
            }
            obj = list3.get(i36);
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj), "Leading")) {
                break;
            }
            i36++;
        }
        Measurable measurable5 = (Measurable) obj;
        Placeable placeableT5 = measurable5 != null ? measurable5.T(jA4) : null;
        int i37 = placeableT5 != null ? placeableT5.f9548b : 0;
        int iMax = Math.max(0, placeableT5 != null ? placeableT5.f9549c : 0);
        int size6 = list4.size();
        int i38 = 0;
        while (true) {
            if (i38 >= size6) {
                obj2 = null;
                break;
            }
            obj2 = list3.get(i38);
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj2), "Trailing")) {
                break;
            }
            i38++;
        }
        Measurable measurable6 = (Measurable) obj2;
        Placeable placeableT6 = measurable6 != null ? measurable6.T(ConstraintsKt.j(-i37, 0, 2, jA4)) : null;
        int i39 = (placeableT6 != null ? placeableT6.f9548b : 0) + i37;
        int iMax2 = Math.max(iMax, placeableT6 != null ? placeableT6.f9549c : 0);
        int size7 = list4.size();
        int i40 = 0;
        while (true) {
            if (i40 >= size7) {
                list2 = list4;
                obj3 = null;
                break;
            }
            obj3 = list3.get(i40);
            list2 = list4;
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj3), "Prefix")) {
                break;
            }
            i40++;
            list4 = list2;
        }
        Measurable measurable7 = (Measurable) obj3;
        Placeable placeableT7 = measurable7 != null ? measurable7.T(ConstraintsKt.j(-i39, 0, 2, jA4)) : null;
        int i41 = i39 + (placeableT7 != null ? placeableT7.f9548b : 0);
        int iMax3 = Math.max(iMax2, placeableT7 != null ? placeableT7.f9549c : 0);
        int size8 = list2.size();
        int i42 = 0;
        while (true) {
            if (i42 >= size8) {
                obj4 = null;
                break;
            }
            obj4 = list3.get(i42);
            int i43 = size8;
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj4), "Suffix")) {
                break;
            }
            i42++;
            size8 = i43;
        }
        Measurable measurable8 = (Measurable) obj4;
        Placeable placeableT8 = measurable8 != null ? measurable8.T(ConstraintsKt.j(-i41, 0, 2, jA4)) : null;
        int i44 = i41 + (placeableT8 != null ? placeableT8.f9548b : 0);
        int iMax4 = Math.max(iMax3, placeableT8 != null ? placeableT8.f9549c : 0);
        boolean z2 = this.f7380b instanceof TextFieldLabelPosition.Above;
        int size9 = list2.size();
        int i45 = 0;
        while (true) {
            if (i45 >= size9) {
                obj5 = null;
                break;
            }
            obj5 = list3.get(i45);
            int i46 = size9;
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj5), "Label")) {
                break;
            }
            i45++;
            size9 = i46;
        }
        Measurable measurable9 = (Measurable) obj5;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (z2) {
            i2 = iB1;
            placeable = placeableT6;
            int iH2 = measurable9 != null ? measurable9.H(Constraints.j(j2)) : 0;
            size = list2.size();
            i3 = 0;
            while (true) {
                if (i3 < size) {
                    j3 = jA4;
                    obj6 = null;
                    break;
                }
                obj6 = list3.get(i3);
                i35 = size;
                j3 = jA4;
                if (Intrinsics.c(LayoutIdKt.a((Measurable) obj6), "Supporting")) {
                    break;
                }
                i3++;
                size = i35;
                jA4 = j3;
            }
            measurable = (Measurable) obj6;
            if (measurable != null) {
                iH = measurable.H(Constraints.j(j2));
            } else {
                iH = 0;
            }
            placeable2 = (Placeable) ref$ObjectRef.f71921b;
            if (placeable2 != null) {
                i4 = placeable2.f9549c;
            } else {
                i4 = 0;
            }
            i5 = i4 + iH2 + iB0;
            i6 = iH2;
            jI = ConstraintsKt.i(-i44, ((-i5) - i2) - iH, Constraints.a(j2, 0, 0, 0, 0, 11));
            size2 = list2.size();
            i7 = 0;
            while (i7 < size2) {
                i8 = size2;
                measurable2 = (Measurable) list3.get(i7);
                i9 = i5;
                i10 = i7;
                if (Intrinsics.c(LayoutIdKt.a(measurable2), "TextField")) {
                    placeableT = measurable2.T(jI);
                    jA = Constraints.a(jI, 0, 0, 0, 0, 14);
                    List list5 = list3;
                    size3 = list5.size();
                    i11 = 0;
                    while (true) {
                        if (i11 < size3) {
                            obj7 = null;
                            break;
                        }
                        obj7 = list3.get(i11);
                        i33 = size3;
                        i34 = i11;
                        if (Intrinsics.c(LayoutIdKt.a((Measurable) obj7), "Hint")) {
                            break;
                        }
                        i11 = i34 + 1;
                        size3 = i33;
                    }
                    measurable3 = (Measurable) obj7;
                    if (measurable3 != null) {
                        placeableT2 = measurable3.T(jA);
                    } else {
                        placeableT2 = null;
                    }
                    int i47 = placeableT.f9549c;
                    if (placeableT2 != null) {
                        i12 = placeableT2.f9549c;
                    } else {
                        i12 = 0;
                    }
                    int iMax5 = Math.max(iMax4, Math.max(i47, i12) + i9 + i2);
                    if (placeableT5 != null) {
                        i13 = placeableT5.f9548b;
                    } else {
                        i13 = 0;
                    }
                    placeable3 = placeable;
                    if (placeable != null) {
                        i14 = placeable3.f9548b;
                    } else {
                        i14 = 0;
                    }
                    int i48 = i14;
                    if (placeableT7 != null) {
                        i15 = placeableT7.f9548b;
                    } else {
                        i15 = 0;
                    }
                    int i49 = i15;
                    if (placeableT8 != null) {
                        i16 = placeableT8.f9548b;
                    } else {
                        i16 = 0;
                    }
                    int i50 = placeableT.f9548b;
                    placeable4 = (Placeable) ref$ObjectRef.f71921b;
                    if (placeable4 != null) {
                        i17 = placeable4.f9548b;
                    } else {
                        i17 = 0;
                    }
                    int i51 = i13;
                    if (placeableT2 != null) {
                        i18 = placeableT2.f9548b;
                    } else {
                        i18 = 0;
                    }
                    int i52 = i49 + i16;
                    z = z2;
                    iG = ConstraintsKt.g(Math.max(i50 + i52, Math.max(i18 + i52, i17)) + i51 + i48, j2);
                    if (z) {
                        long j5 = j3;
                        jA3 = Constraints.a(j5, 0, iG, 0, i6, 5);
                        j4 = j5;
                        if (measurable9 != null) {
                            placeableT4 = measurable9.T(jA3);
                        } else {
                            placeableT4 = null;
                        }
                        ref$ObjectRef.f71921b = placeableT4;
                    } else {
                        j4 = j3;
                    }
                    jA2 = Constraints.a(ConstraintsKt.j(0, -iMax5, 1, j4), 0, iG, 0, 0, 9);
                    if (measurable != null) {
                        placeableT3 = measurable.T(jA2);
                    } else {
                        placeableT3 = null;
                    }
                    if (placeableT3 != null) {
                        i19 = placeableT3.f9549c;
                    } else {
                        i19 = 0;
                    }
                    int i53 = placeableT.f9549c;
                    placeable5 = (Placeable) ref$ObjectRef.f71921b;
                    if (placeable5 != null) {
                        i20 = placeable5.f9549c;
                    } else {
                        i20 = 0;
                    }
                    if (placeableT5 != null) {
                        Placeable placeable11 = placeableT5;
                        i21 = placeableT5.f9549c;
                        placeable6 = placeable11;
                    } else {
                        placeable6 = placeableT5;
                        i21 = 0;
                    }
                    if (placeable3 != null) {
                        i22 = placeable3.f9549c;
                    } else {
                        i22 = 0;
                    }
                    if (placeableT7 != null) {
                        i23 = placeableT7.f9549c;
                    } else {
                        i23 = 0;
                    }
                    if (placeableT8 != null) {
                        i24 = placeableT8.f9549c;
                    } else {
                        i24 = 0;
                    }
                    placeable7 = placeable6;
                    if (placeableT2 != null) {
                        i25 = placeableT2.f9549c;
                        placeable8 = placeableT;
                    } else {
                        placeable8 = placeableT;
                        i25 = 0;
                    }
                    if (placeableT3 != null) {
                        placeable9 = placeable8;
                        i26 = placeableT3.f9549c;
                        i27 = 0;
                    } else {
                        placeable9 = placeable8;
                        i26 = 0;
                        i27 = 0;
                    }
                    iA = a(measureScope, i53, i20, i21, i22, i23, i24, i25, i26, j2, z, r10);
                    int i54 = iA - i19;
                    if (z != 0 || (placeable10 = (Placeable) ref$ObjectRef.f71921b) == null) {
                        i28 = i27;
                    } else {
                        i28 = placeable10.f9549c;
                    }
                    i29 = i54 - i28;
                    size4 = list5.size();
                    i30 = i27;
                    while (i30 < size4) {
                        measurable4 = (Measurable) list.get(i30);
                        if (Intrinsics.c(LayoutIdKt.a(measurable4), "Container")) {
                            if (iG != Integer.MAX_VALUE) {
                                i31 = iG;
                            } else {
                                i31 = i27;
                            }
                            if (i29 != Integer.MAX_VALUE) {
                                i32 = i29;
                            } else {
                                i32 = i27;
                            }
                            final Placeable placeableT9 = measurable4.T(ConstraintsKt.a(i31, iG, i32, i29));
                            final boolean z3 = z;
                            final Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                            final Placeable placeable12 = placeableT8;
                            final Placeable placeable13 = placeable9;
                            final Placeable placeable14 = placeableT2;
                            final int i55 = iB0;
                            final Placeable placeable15 = placeableT7;
                            return measureScope.V0(iG, iA, MapsKt.c(), new Function1() { // from class: androidx.compose.material3.s
                                /* JADX WARN: Code duplicated, block: B:42:0x00d2  */
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj8) {
                                    int i56;
                                    int iB2;
                                    int i57;
                                    int i58;
                                    int i59;
                                    Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj8;
                                    Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef2;
                                    Object obj9 = ref$ObjectRef3.f71921b;
                                    TextFieldMeasurePolicy textFieldMeasurePolicy = this;
                                    MeasureScope measureScope2 = measureScope;
                                    int i60 = iG;
                                    int i61 = iA;
                                    Placeable placeable16 = placeable13;
                                    Placeable placeable17 = placeable14;
                                    Placeable placeable18 = placeable7;
                                    Placeable placeable19 = placeable3;
                                    Placeable placeable20 = placeable15;
                                    Placeable placeable21 = placeable12;
                                    Placeable placeable22 = placeableT9;
                                    Placeable placeable23 = placeableT3;
                                    if (obj9 != null) {
                                        boolean z4 = z3;
                                        int i62 = i55;
                                        if (z4) {
                                            i56 = i62;
                                            iB2 = 0;
                                        } else {
                                            i56 = i62;
                                            if (textFieldMeasurePolicy.f7379a) {
                                                Alignment.f8582a.getClass();
                                                iB2 = Alignment.Companion.l.a(((Placeable) ref$ObjectRef3.f71921b).f9549c, i29);
                                            } else {
                                                iB2 = measureScope2.B0(textFieldMeasurePolicy.f7382e) + i56;
                                            }
                                        }
                                        int i63 = z4 ? 0 : i56;
                                        Placeable placeable24 = (Placeable) ref$ObjectRef3.f71921b;
                                        int i64 = i56 + (z4 ? 0 : placeable24.f9549c);
                                        LayoutDirection f9421c = measureScope2.getF9421c();
                                        TextFieldLabelPosition textFieldLabelPosition = textFieldMeasurePolicy.f7380b;
                                        int i65 = z4 ? placeable24.f9549c : 0;
                                        placementScope.j(placeable22, 0, i65, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        int i66 = (i61 - (placeable23 != null ? placeable23.f9549c : 0)) - (z4 ? placeable24.f9549c : 0);
                                        if (placeable18 != null) {
                                            Alignment.f8582a.getClass();
                                            i57 = i65;
                                            Placeable.PlacementScope.y(placementScope, placeable18, 0, Alignment.Companion.l.a(placeable18.f9549c, i66) + i57);
                                        } else {
                                            i57 = i65;
                                        }
                                        float f2 = fInvoke;
                                        int iC = MathHelpersKt.c(iB2, i63, f2);
                                        if (z4) {
                                            placementScope.j(placeable24, TextFieldImplKt.d(textFieldLabelPosition).a(placeable24.f9548b, i60, f9421c), iC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            i59 = i60;
                                        } else {
                                            if (f9421c == LayoutDirection.Ltr) {
                                                if (placeable18 != null) {
                                                    i58 = placeable18.f9548b;
                                                } else {
                                                    i58 = 0;
                                                }
                                            } else if (placeable19 != null) {
                                                i58 = placeable19.f9548b;
                                            } else {
                                                i58 = 0;
                                            }
                                            i59 = i60;
                                            placementScope.j(placeable24, MathHelpersKt.c(TextFieldImplKt.c(textFieldLabelPosition).a(placeable24.f9548b, (i59 - (placeable18 != null ? placeable18.f9548b : 0)) - (placeable19 != null ? placeable19.f9548b : 0), f9421c) + i58, TextFieldImplKt.d(textFieldLabelPosition).a(placeable24.f9548b, (i59 - (placeable18 != null ? placeable18.f9548b : 0)) - (placeable19 != null ? placeable19.f9548b : 0), f9421c) + i58, f2), iC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        }
                                        if (placeable20 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable20, placeable18 != null ? placeable18.f9548b : 0, i57 + i64);
                                        }
                                        int i67 = (placeable18 != null ? placeable18.f9548b : 0) + (placeable20 != null ? placeable20.f9548b : 0);
                                        int i68 = i57 + i64;
                                        Placeable.PlacementScope.y(placementScope, placeable16, i67, i68);
                                        if (placeable17 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable17, i67, i68);
                                        }
                                        if (placeable21 != 0) {
                                            Placeable.PlacementScope.y(placementScope, placeable21, (i59 - (placeable19 != null ? placeable19.f9548b : 0)) - placeable21.f9548b, i68);
                                        }
                                        if (placeable19 != null) {
                                            int i69 = i59 - placeable19.f9548b;
                                            Alignment.f8582a.getClass();
                                            Placeable.PlacementScope.y(placementScope, placeable19, i69, Alignment.Companion.l.a(placeable19.f9549c, i66) + i57);
                                        }
                                        if (placeable23 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable23, 0, i57 + i66);
                                        }
                                    } else {
                                        float f11002b = measureScope2.getF11002b();
                                        IntOffset.f11012b.getClass();
                                        Placeable.PlacementScope.u(placementScope, placeable22, 0L);
                                        int i70 = i61 - (placeable23 != null ? placeable23.f9549c : 0);
                                        int iC2 = MathKt.c(textFieldMeasurePolicy.d.getF5031b() * f11002b);
                                        if (placeable18 != null) {
                                            Alignment.f8582a.getClass();
                                            Placeable.PlacementScope.y(placementScope, placeable18, 0, Alignment.Companion.l.a(placeable18.f9549c, i70));
                                        }
                                        if (placeable20 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable20, placeable18 != null ? placeable18.f9548b : 0, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable20));
                                        }
                                        int i71 = (placeable18 != null ? placeable18.f9548b : 0) + (placeable20 != null ? placeable20.f9548b : 0);
                                        Placeable.PlacementScope.y(placementScope, placeable16, i71, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable16));
                                        if (placeable17 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable17, i71, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable17));
                                        }
                                        if (placeable21 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable21, (i60 - (placeable19 != null ? placeable19.f9548b : 0)) - placeable21.f9548b, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable21));
                                        }
                                        if (placeable19 != null) {
                                            int i72 = i60 - placeable19.f9548b;
                                            Alignment.f8582a.getClass();
                                            Placeable.PlacementScope.y(placementScope, placeable19, i72, Alignment.Companion.l.a(placeable19.f9549c, i70));
                                        }
                                        if (placeable23 != null) {
                                            Placeable.PlacementScope.y(placementScope, placeable23, 0, i70);
                                        }
                                    }
                                    return Unit.f71739a;
                                }
                            });
                        }
                        i30++;
                        z = z;
                        i29 = i29;
                    }
                    ListUtilsKt.b("Collection contains no element matching the predicate.");
                    os.d();
                    return null;
                }
                iB0 = iB0;
                j3 = j3;
                z2 = z2;
                placeableT5 = placeableT5;
                jI = jI;
                placeableT8 = placeableT8;
                list3 = list3;
                i7 = i10 + 1;
                placeableT7 = placeableT7;
                i5 = i9;
                ref$ObjectRef = ref$ObjectRef;
                size2 = i8;
            }
            ListUtilsKt.b("Collection contains no element matching the predicate.");
            os.d();
            return null;
        }
        i2 = iB1;
        placeable = placeableT6;
        ref$ObjectRef.f71921b = measurable9 != null ? measurable9.T(ConstraintsKt.i(-i44, -iB1, jA4)) : null;
        size = list2.size();
        i3 = 0;
        while (true) {
            if (i3 < size) {
                j3 = jA4;
                obj6 = null;
                break;
            }
            obj6 = list3.get(i3);
            i35 = size;
            j3 = jA4;
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj6), "Supporting")) {
                break;
                break;
            }
            i3++;
            size = i35;
            jA4 = j3;
        }
        measurable = (Measurable) obj6;
        if (measurable != null) {
            iH = measurable.H(Constraints.j(j2));
        } else {
            iH = 0;
        }
        placeable2 = (Placeable) ref$ObjectRef.f71921b;
        if (placeable2 != null) {
            i4 = placeable2.f9549c;
        } else {
            i4 = 0;
        }
        i5 = i4 + iH2 + iB0;
        i6 = iH2;
        jI = ConstraintsKt.i(-i44, ((-i5) - i2) - iH, Constraints.a(j2, 0, 0, 0, 0, 11));
        size2 = list2.size();
        i7 = 0;
        while (i7 < size2) {
            i8 = size2;
            measurable2 = (Measurable) list3.get(i7);
            i9 = i5;
            i10 = i7;
            if (Intrinsics.c(LayoutIdKt.a(measurable2), "TextField")) {
                placeableT = measurable2.T(jI);
                jA = Constraints.a(jI, 0, 0, 0, 0, 14);
                List list6 = list3;
                size3 = list6.size();
                i11 = 0;
                while (true) {
                    if (i11 < size3) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list3.get(i11);
                    i33 = size3;
                    i34 = i11;
                    if (Intrinsics.c(LayoutIdKt.a((Measurable) obj7), "Hint")) {
                        break;
                        break;
                    }
                    i11 = i34 + 1;
                    size3 = i33;
                }
                measurable3 = (Measurable) obj7;
                if (measurable3 != null) {
                    placeableT2 = measurable3.T(jA);
                } else {
                    placeableT2 = null;
                }
                int i410 = placeableT.f9549c;
                if (placeableT2 != null) {
                    i12 = placeableT2.f9549c;
                } else {
                    i12 = 0;
                }
                int iMax6 = Math.max(iMax4, Math.max(i410, i12) + i9 + i2);
                if (placeableT5 != null) {
                    i13 = placeableT5.f9548b;
                } else {
                    i13 = 0;
                }
                placeable3 = placeable;
                if (placeable != null) {
                    i14 = placeable3.f9548b;
                } else {
                    i14 = 0;
                }
                int i411 = i14;
                if (placeableT7 != null) {
                    i15 = placeableT7.f9548b;
                } else {
                    i15 = 0;
                }
                int i412 = i15;
                if (placeableT8 != null) {
                    i16 = placeableT8.f9548b;
                } else {
                    i16 = 0;
                }
                int i56 = placeableT.f9548b;
                placeable4 = (Placeable) ref$ObjectRef.f71921b;
                if (placeable4 != null) {
                    i17 = placeable4.f9548b;
                } else {
                    i17 = 0;
                }
                int i57 = i13;
                if (placeableT2 != null) {
                    i18 = placeableT2.f9548b;
                } else {
                    i18 = 0;
                }
                int i58 = i412 + i16;
                z = z2;
                iG = ConstraintsKt.g(Math.max(i56 + i58, Math.max(i18 + i58, i17)) + i57 + i411, j2);
                if (z) {
                    long j6 = j3;
                    jA3 = Constraints.a(j6, 0, iG, 0, i6, 5);
                    j4 = j6;
                    if (measurable9 != null) {
                        placeableT4 = measurable9.T(jA3);
                    } else {
                        placeableT4 = null;
                    }
                    ref$ObjectRef.f71921b = placeableT4;
                } else {
                    j4 = j3;
                }
                jA2 = Constraints.a(ConstraintsKt.j(0, -iMax6, 1, j4), 0, iG, 0, 0, 9);
                if (measurable != null) {
                    placeableT3 = measurable.T(jA2);
                } else {
                    placeableT3 = null;
                }
                if (placeableT3 != null) {
                    i19 = placeableT3.f9549c;
                } else {
                    i19 = 0;
                }
                int i59 = placeableT.f9549c;
                placeable5 = (Placeable) ref$ObjectRef.f71921b;
                if (placeable5 != null) {
                    i20 = placeable5.f9549c;
                } else {
                    i20 = 0;
                }
                if (placeableT5 != null) {
                    Placeable placeable16 = placeableT5;
                    i21 = placeableT5.f9549c;
                    placeable6 = placeable16;
                } else {
                    placeable6 = placeableT5;
                    i21 = 0;
                }
                if (placeable3 != null) {
                    i22 = placeable3.f9549c;
                } else {
                    i22 = 0;
                }
                if (placeableT7 != null) {
                    i23 = placeableT7.f9549c;
                } else {
                    i23 = 0;
                }
                if (placeableT8 != null) {
                    i24 = placeableT8.f9549c;
                } else {
                    i24 = 0;
                }
                placeable7 = placeable6;
                if (placeableT2 != null) {
                    i25 = placeableT2.f9549c;
                    placeable8 = placeableT;
                } else {
                    placeable8 = placeableT;
                    i25 = 0;
                }
                if (placeableT3 != null) {
                    placeable9 = placeable8;
                    i26 = placeableT3.f9549c;
                    i27 = 0;
                } else {
                    placeable9 = placeable8;
                    i26 = 0;
                    i27 = 0;
                }
                iA = a(measureScope, i59, i20, i21, i22, i23, i24, i25, i26, j2, z, r10);
                int i510 = iA - i19;
                if (z != 0) {
                    i28 = i27;
                } else {
                    i28 = i27;
                }
                i29 = i510 - i28;
                size4 = list6.size();
                i30 = i27;
                while (i30 < size4) {
                    measurable4 = (Measurable) list.get(i30);
                    if (Intrinsics.c(LayoutIdKt.a(measurable4), "Container")) {
                        if (iG != Integer.MAX_VALUE) {
                            i31 = iG;
                        } else {
                            i31 = i27;
                        }
                        if (i29 != Integer.MAX_VALUE) {
                            i32 = i29;
                        } else {
                            i32 = i27;
                        }
                        final Placeable placeableT10 = measurable4.T(ConstraintsKt.a(i31, iG, i32, i29));
                        final boolean z4 = z;
                        final Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef;
                        final Placeable placeable17 = placeableT8;
                        final Placeable placeable18 = placeable9;
                        final Placeable placeable19 = placeableT2;
                        final int i511 = iB0;
                        final Placeable placeable110 = placeableT7;
                        return measureScope.V0(iG, iA, MapsKt.c(), new Function1() { // from class: androidx.compose.material3.s
                            /* JADX WARN: Code duplicated, block: B:42:0x00d2  */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                int i512;
                                int iB2;
                                int i513;
                                int i514;
                                int i515;
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj8;
                                Ref$ObjectRef ref$ObjectRef4 = ref$ObjectRef3;
                                Object obj9 = ref$ObjectRef4.f71921b;
                                TextFieldMeasurePolicy textFieldMeasurePolicy = this;
                                MeasureScope measureScope2 = measureScope;
                                int i60 = iG;
                                int i61 = iA;
                                Placeable placeable111 = placeable18;
                                Placeable placeable112 = placeable19;
                                Placeable placeable113 = placeable7;
                                Placeable placeable114 = placeable3;
                                Placeable placeable20 = placeable110;
                                Placeable placeable21 = placeable17;
                                Placeable placeable22 = placeableT10;
                                Placeable placeable23 = placeableT3;
                                if (obj9 != null) {
                                    boolean z5 = z4;
                                    int i62 = i511;
                                    if (z5) {
                                        i512 = i62;
                                        iB2 = 0;
                                    } else {
                                        i512 = i62;
                                        if (textFieldMeasurePolicy.f7379a) {
                                            Alignment.f8582a.getClass();
                                            iB2 = Alignment.Companion.l.a(((Placeable) ref$ObjectRef4.f71921b).f9549c, i29);
                                        } else {
                                            iB2 = measureScope2.B0(textFieldMeasurePolicy.f7382e) + i512;
                                        }
                                    }
                                    int i63 = z5 ? 0 : i512;
                                    Placeable placeable24 = (Placeable) ref$ObjectRef4.f71921b;
                                    int i64 = i512 + (z5 ? 0 : placeable24.f9549c);
                                    LayoutDirection f9421c = measureScope2.getF9421c();
                                    TextFieldLabelPosition textFieldLabelPosition = textFieldMeasurePolicy.f7380b;
                                    int i65 = z5 ? placeable24.f9549c : 0;
                                    placementScope.j(placeable22, 0, i65, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    int i66 = (i61 - (placeable23 != null ? placeable23.f9549c : 0)) - (z5 ? placeable24.f9549c : 0);
                                    if (placeable113 != null) {
                                        Alignment.f8582a.getClass();
                                        i513 = i65;
                                        Placeable.PlacementScope.y(placementScope, placeable113, 0, Alignment.Companion.l.a(placeable113.f9549c, i66) + i513);
                                    } else {
                                        i513 = i65;
                                    }
                                    float f2 = fInvoke;
                                    int iC = MathHelpersKt.c(iB2, i63, f2);
                                    if (z5) {
                                        placementScope.j(placeable24, TextFieldImplKt.d(textFieldLabelPosition).a(placeable24.f9548b, i60, f9421c), iC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        i515 = i60;
                                    } else {
                                        if (f9421c == LayoutDirection.Ltr) {
                                            if (placeable113 != null) {
                                                i514 = placeable113.f9548b;
                                            } else {
                                                i514 = 0;
                                            }
                                        } else if (placeable114 != null) {
                                            i514 = placeable114.f9548b;
                                        } else {
                                            i514 = 0;
                                        }
                                        i515 = i60;
                                        placementScope.j(placeable24, MathHelpersKt.c(TextFieldImplKt.c(textFieldLabelPosition).a(placeable24.f9548b, (i515 - (placeable113 != null ? placeable113.f9548b : 0)) - (placeable114 != null ? placeable114.f9548b : 0), f9421c) + i514, TextFieldImplKt.d(textFieldLabelPosition).a(placeable24.f9548b, (i515 - (placeable113 != null ? placeable113.f9548b : 0)) - (placeable114 != null ? placeable114.f9548b : 0), f9421c) + i514, f2), iC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    }
                                    if (placeable20 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable20, placeable113 != null ? placeable113.f9548b : 0, i513 + i64);
                                    }
                                    int i67 = (placeable113 != null ? placeable113.f9548b : 0) + (placeable20 != null ? placeable20.f9548b : 0);
                                    int i68 = i513 + i64;
                                    Placeable.PlacementScope.y(placementScope, placeable111, i67, i68);
                                    if (placeable112 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable112, i67, i68);
                                    }
                                    if (placeable21 != 0) {
                                        Placeable.PlacementScope.y(placementScope, placeable21, (i515 - (placeable114 != null ? placeable114.f9548b : 0)) - placeable21.f9548b, i68);
                                    }
                                    if (placeable114 != null) {
                                        int i69 = i515 - placeable114.f9548b;
                                        Alignment.f8582a.getClass();
                                        Placeable.PlacementScope.y(placementScope, placeable114, i69, Alignment.Companion.l.a(placeable114.f9549c, i66) + i513);
                                    }
                                    if (placeable23 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable23, 0, i513 + i66);
                                    }
                                } else {
                                    float f11002b = measureScope2.getF11002b();
                                    IntOffset.f11012b.getClass();
                                    Placeable.PlacementScope.u(placementScope, placeable22, 0L);
                                    int i70 = i61 - (placeable23 != null ? placeable23.f9549c : 0);
                                    int iC2 = MathKt.c(textFieldMeasurePolicy.d.getF5031b() * f11002b);
                                    if (placeable113 != null) {
                                        Alignment.f8582a.getClass();
                                        Placeable.PlacementScope.y(placementScope, placeable113, 0, Alignment.Companion.l.a(placeable113.f9549c, i70));
                                    }
                                    if (placeable20 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable20, placeable113 != null ? placeable113.f9548b : 0, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable20));
                                    }
                                    int i71 = (placeable113 != null ? placeable113.f9548b : 0) + (placeable20 != null ? placeable20.f9548b : 0);
                                    Placeable.PlacementScope.y(placementScope, placeable111, i71, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable111));
                                    if (placeable112 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable112, i71, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable112));
                                    }
                                    if (placeable21 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable21, (i60 - (placeable114 != null ? placeable114.f9548b : 0)) - placeable21.f9548b, TextFieldMeasurePolicy.d(textFieldMeasurePolicy, i70, iC2, placeable21));
                                    }
                                    if (placeable114 != null) {
                                        int i72 = i60 - placeable114.f9548b;
                                        Alignment.f8582a.getClass();
                                        Placeable.PlacementScope.y(placementScope, placeable114, i72, Alignment.Companion.l.a(placeable114.f9549c, i70));
                                    }
                                    if (placeable23 != null) {
                                        Placeable.PlacementScope.y(placementScope, placeable23, 0, i70);
                                    }
                                }
                                return Unit.f71739a;
                            }
                        });
                    }
                    i30++;
                    z = z;
                    i29 = i29;
                }
                ListUtilsKt.b("Collection contains no element matching the predicate.");
                os.d();
                return null;
            }
            iB0 = iB0;
            j3 = j3;
            z2 = z2;
            placeableT5 = placeableT5;
            jI = jI;
            placeableT8 = placeableT8;
            list3 = list3;
            i7 = i10 + 1;
            placeableT7 = placeableT7;
            i5 = i9;
            ref$ObjectRef = ref$ObjectRef;
            size2 = i8;
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return b(intrinsicMeasureScope, list, i2, new zt0(27));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return c(list, i2, new zt0(25));
    }
}
