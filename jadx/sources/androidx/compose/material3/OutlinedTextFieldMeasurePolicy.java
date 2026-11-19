package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.aj0;
import defpackage.os;
import java.util.List;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001BC\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Size;", "", "onLabelMeasured", "", "singleLine", "Landroidx/compose/material3/TextFieldLabelPosition;", "labelPosition", "Landroidx/compose/material3/internal/FloatProducer;", "labelProgress", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "Landroidx/compose/ui/unit/Dp;", "horizontalIconPadding", "<init>", "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f7144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f7145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextFieldLabelPosition f7146c;
    public final FloatProducer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PaddingValues f7147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f7148f;

    public OutlinedTextFieldMeasurePolicy(Function1 function1, boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7144a = function1;
        this.f7145b = z;
        this.f7146c = textFieldLabelPosition;
        this.d = floatProducer;
        this.f7147e = paddingValues;
        this.f7148f = f2;
    }

    public static final int e(int i2, OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy, int i3, int i4, Placeable placeable, Placeable placeable2) {
        if (outlinedTextFieldMeasurePolicy.f7145b) {
            Alignment.f8582a.getClass();
            i4 = Alignment.Companion.l.a(placeable2.f9549c, i3);
        }
        int i5 = i2 + i4;
        if (outlinedTextFieldMeasurePolicy.f7146c instanceof TextFieldLabelPosition.Above) {
            return i5;
        }
        return Math.max(i5, (placeable != null ? placeable.f9549c : 0) / 2);
    }

    public final int a(IntrinsicMeasureScope intrinsicMeasureScope, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, long j2, boolean z, float f2) {
        int iB = ComparisonsKt.b(i6, i8, i4, i5, z ? 0 : MathHelpersKt.c(i7, 0, f2));
        PaddingValues paddingValues = this.f7147e;
        float fU1 = intrinsicMeasureScope.u1(paddingValues.getF5031b());
        if (!z) {
            fU1 = MathHelpersKt.b(fU1, Math.max(fU1, i7 / 2.0f), f2);
        }
        float fU2 = fU1 + iB + intrinsicMeasureScope.u1(paddingValues.getD());
        if (!z) {
            i7 = 0;
        }
        return ConstraintsKt.f(Math.max(i2, Math.max(i3, MathKt.c(fU2))) + i7 + i9, j2);
    }

    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, float f2) {
        int i9 = i4 + i5;
        int iMax = Math.max(i6 + i9, Math.max(i8 + i9, MathHelpersKt.c(i7, 0, f2))) + i2 + i3;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        PaddingValues paddingValues = this.f7147e;
        float fC = paddingValues.c(layoutDirection) + paddingValues.b(layoutDirection);
        Dp.Companion companion = Dp.f11004c;
        return ConstraintsKt.g(Math.max(iMax, MathKt.c((i7 + intrinsicMeasureScope.u1(fC)) * f2)), j2);
    }

    public final int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2, Function2 function2) {
        Object obj;
        int iB;
        int iIntValue;
        Object obj2;
        int iIntValue2;
        Object obj3;
        Object obj4;
        int iIntValue3;
        Object obj5;
        int iIntValue4;
        int i3;
        Object obj6;
        Object obj7;
        OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = this;
        float fInvoke = outlinedTextFieldMeasurePolicy.d.invoke();
        List list2 = list;
        int size = list2.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i4);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj), "Leading")) {
                break;
            }
            i4++;
        }
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj;
        if (intrinsicMeasurable != null) {
            iB = LayoutUtilKt.b(i2, intrinsicMeasurable.S(Integer.MAX_VALUE));
            iIntValue = ((Number) function2.invoke(intrinsicMeasurable, Integer.valueOf(i2))).intValue();
        } else {
            iB = i2;
            iIntValue = 0;
        }
        int size2 = list2.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i5);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj2), "Trailing")) {
                break;
            }
            i5++;
        }
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj2;
        if (intrinsicMeasurable2 != null) {
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable2.S(Integer.MAX_VALUE));
            iIntValue2 = ((Number) function2.invoke(intrinsicMeasurable2, Integer.valueOf(i2))).intValue();
        } else {
            iIntValue2 = 0;
        }
        int size3 = list2.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list.get(i6);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj3), "Label")) {
                break;
            }
            i6++;
        }
        Object obj8 = (IntrinsicMeasurable) obj3;
        int iIntValue5 = obj8 != null ? ((Number) function2.invoke(obj8, Integer.valueOf(MathHelpersKt.c(iB, i2, fInvoke)))).intValue() : 0;
        int size4 = list2.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i7);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj4), "Prefix")) {
                break;
            }
            i7++;
        }
        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
        if (intrinsicMeasurable3 != null) {
            iIntValue3 = ((Number) function2.invoke(intrinsicMeasurable3, Integer.valueOf(iB))).intValue();
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable3.S(Integer.MAX_VALUE));
        } else {
            iIntValue3 = 0;
        }
        int size5 = list2.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list.get(i8);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj5), "Suffix")) {
                break;
            }
            i8++;
        }
        IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
        if (intrinsicMeasurable4 != null) {
            iIntValue4 = ((Number) function2.invoke(intrinsicMeasurable4, Integer.valueOf(iB))).intValue();
            iB = LayoutUtilKt.b(iB, intrinsicMeasurable4.S(Integer.MAX_VALUE));
        } else {
            iIntValue4 = 0;
        }
        int size6 = list2.size();
        int i9 = 0;
        while (i9 < size6) {
            Object obj9 = list.get(i9);
            if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj9), "TextField")) {
                int iIntValue6 = ((Number) function2.invoke(obj9, Integer.valueOf(iB))).intValue();
                int size7 = list2.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size7) {
                        i3 = iIntValue6;
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i10);
                    i3 = iIntValue6;
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj6), "Hint")) {
                        break;
                    }
                    i10++;
                    iIntValue6 = i3;
                }
                Object obj10 = (IntrinsicMeasurable) obj6;
                int iIntValue7 = obj10 != null ? ((Number) function2.invoke(obj10, Integer.valueOf(iB))).intValue() : 0;
                int size8 = list2.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list.get(i11);
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj7), "Supporting")) {
                        break;
                    }
                    i11++;
                }
                Object obj11 = (IntrinsicMeasurable) obj7;
                return outlinedTextFieldMeasurePolicy.a(intrinsicMeasureScope, iIntValue, iIntValue2, iIntValue3, iIntValue4, i3, iIntValue5, iIntValue7, obj11 != null ? ((Number) function2.invoke(obj11, Integer.valueOf(i2))).intValue() : 0, ConstraintsKt.b(0, 0, 0, 0, 15), outlinedTextFieldMeasurePolicy.f7146c instanceof TextFieldLabelPosition.Above, fInvoke);
            }
            i9++;
            outlinedTextFieldMeasurePolicy = this;
            iIntValue3 = iIntValue3;
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return 0;
    }

    public final int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2, Function2 function2) {
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
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj4), "Leading")) {
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
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj5), "Prefix")) {
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
                    if (Intrinsics.c(LayoutUtilKt.a((IntrinsicMeasurable) obj6), "Suffix")) {
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
                return b(intrinsicMeasureScope, iIntValue4, iIntValue3, iIntValue5, iIntValue6, iIntValue, iIntValue2, intrinsicMeasurable6 != null ? ((Number) function2.invoke(intrinsicMeasurable6, Integer.valueOf(i2))).intValue() : 0, ConstraintsKt.b(0, 0, 0, 0, 15), this.d.invoke());
            }
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return c(intrinsicMeasureScope, list, i2, new aj0(5));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return d(intrinsicMeasureScope, list, i2, new aj0(4));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r7v22 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.ModVisitor.anonymousCallArgMod(ModVisitor.java:535)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.ModVisitor.processAnonymousConstructor(ModVisitor.java:528)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:111)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final androidx.compose.ui.layout.MeasureResult mo1measure3p2s80s(androidx.compose.ui.layout.MeasureScope r50, java.util.List r51, long r52) {
        /*
            Method dump skipped, instruction units count: 1349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldMeasurePolicy.mo1measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return c(intrinsicMeasureScope, list, i2, new aj0(3));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return d(intrinsicMeasureScope, list, i2, new aj0(6));
    }
}
