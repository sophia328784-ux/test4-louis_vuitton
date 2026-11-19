package androidx.compose.ui.semantics;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.x5;
import defpackage.xm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsSortKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Comparator[] f10367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Function2 f10368b;

    static {
        Comparator[] comparatorArr = new Comparator[2];
        int i2 = 0;
        while (i2 < 2) {
            final Comparator comparator = i2 == 0 ? RtlBoundsComparator.f10297b : LtrBoundsComparator.f10284b;
            LayoutNode.T.getClass();
            final x5 x5Var = LayoutNode.Y;
            final Comparator comparator2 = new Comparator() { // from class: androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int iCompare = comparator.compare(obj, obj2);
                    if (iCompare != 0) {
                        return iCompare;
                    }
                    return x5Var.compare(((SemanticsNode) obj).f10320c, ((SemanticsNode) obj2).f10320c);
                }
            };
            comparatorArr[i2] = new Comparator() { // from class: androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int iCompare = comparator2.compare(obj, obj2);
                    return iCompare != 0 ? iCompare : Integer.valueOf(((SemanticsNode) obj).f10322f).compareTo(Integer.valueOf(((SemanticsNode) obj2).f10322f));
                }
            };
            i2++;
        }
        f10367a = comparatorArr;
        f10368b = SemanticsSortKt$UnmergedConfigComparator$1.f10369c;
    }

    public static final void a(SemanticsNode semanticsNode, ArrayList arrayList, Function1 function1, Function1 function2, MutableIntObjectMap mutableIntObjectMap) {
        boolean zBooleanValue = ((Boolean) semanticsNode.d.h(SemanticsProperties.n, SemanticsSortKt$geometryDepthFirstSearch$isTraversalGroup$1.f10372c)).booleanValue();
        if ((zBooleanValue || ((Boolean) function2.invoke(semanticsNode)).booleanValue()) && ((Boolean) function1.invoke(semanticsNode)).booleanValue()) {
            arrayList.add(semanticsNode);
        }
        if (zBooleanValue) {
            mutableIntObjectMap.i(semanticsNode.f10322f, b(semanticsNode, function1, function2, SemanticsNode.j(7, semanticsNode)));
            return;
        }
        List listJ = SemanticsNode.j(7, semanticsNode);
        int size = listJ.size();
        for (int i2 = 0; i2 < size; i2++) {
            a((SemanticsNode) listJ.get(i2), arrayList, function1, function2, mutableIntObjectMap);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00d5  */
    public static final ArrayList b(SemanticsNode semanticsNode, Function1 function1, Function1 function2, List list) {
        int i2;
        MutableIntObjectMap mutableIntObjectMapA = IntObjectMapKt.a();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            a((SemanticsNode) list.get(i3), arrayList, function1, function2, mutableIntObjectMapA);
        }
        int i4 = 1;
        char c2 = semanticsNode.f10320c.B == LayoutDirection.Rtl ? (char) 1 : (char) 0;
        ArrayList arrayList2 = new ArrayList(arrayList.size() / 2);
        int size2 = arrayList.size() - 1;
        if (size2 >= 0) {
            int i5 = 0;
            while (true) {
                SemanticsNode semanticsNode2 = (SemanticsNode) arrayList.get(i5);
                if (i5 == 0) {
                    i2 = i4;
                    arrayList2.add(new Pair(semanticsNode2.h(), CollectionsKt.U(semanticsNode2)));
                    break;
                }
                float f2 = semanticsNode2.h().f8812b;
                float f3 = semanticsNode2.h().d;
                int i6 = f2 >= f3 ? i4 : 0;
                int size3 = arrayList2.size() - i4;
                if (size3 >= 0) {
                    int i7 = 0;
                    while (true) {
                        Rect rect = (Rect) ((Pair) arrayList2.get(i7)).f71705b;
                        float f4 = rect.f8812b;
                        i2 = i4;
                        float f5 = rect.d;
                        int i8 = f4 >= f5 ? i2 : 0;
                        if (i6 == 0 && i8 == 0 && Math.max(f2, f4) < Math.min(f3, f5)) {
                            arrayList2.set(i7, new Pair(new Rect(Math.max(rect.f8811a, Call.Parameters.DEFAULT_CAMERA_ZOOM), Math.max(rect.f8812b, f2), Math.min(rect.f8813c, Float.POSITIVE_INFINITY), Math.min(f5, f3)), ((Pair) arrayList2.get(i7)).f71706c));
                            ((List) ((Pair) arrayList2.get(i7)).f71706c).add(semanticsNode2);
                            break;
                        }
                        if (i7 != size3) {
                            i7++;
                            i4 = i2;
                        }
                    }
                } else {
                    i2 = i4;
                }
                arrayList2.add(new Pair(semanticsNode2.h(), CollectionsKt.U(semanticsNode2)));
                break;
                if (i5 == size2) {
                    break;
                }
                i5++;
                i4 = i2;
            }
        }
        CollectionsKt.m0(TopBottomBoundsComparator.f10376b, arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Comparator comparator = f10367a[c2 ^ 1];
        int size4 = arrayList2.size();
        for (int i9 = 0; i9 < size4; i9++) {
            Pair pair = (Pair) arrayList2.get(i9);
            CollectionsKt.m0(comparator, (List) pair.f71706c);
            arrayList3.addAll((Collection) pair.f71706c);
        }
        CollectionsKt.m0(new xm(f10368b, 3), arrayList3);
        int size5 = 0;
        while (size5 <= arrayList3.size() - 1) {
            List list2 = (List) mutableIntObjectMapA.b(((SemanticsNode) arrayList3.get(size5)).f10322f);
            if (list2 != null) {
                if (((Boolean) function2.invoke(arrayList3.get(size5))).booleanValue()) {
                    size5++;
                } else {
                    arrayList3.remove(size5);
                }
                arrayList3.addAll(size5, list2);
                size5 += list2.size();
            } else {
                size5++;
            }
        }
        return arrayList3;
    }
}
