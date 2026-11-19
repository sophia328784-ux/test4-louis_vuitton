package androidx.compose.ui.platform.accessibility;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CollectionInfo_androidKt {
    public static final boolean a(ArrayList arrayList) {
        List list;
        long j2;
        if (arrayList.size() >= 2) {
            if (arrayList.size() <= 1) {
                list = EmptyList.f71768b;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Object obj = arrayList.get(0);
                int size = arrayList.size() - 1;
                int i2 = 0;
                while (i2 < size) {
                    i2++;
                    Object obj2 = arrayList.get(i2);
                    SemanticsNode semanticsNode = (SemanticsNode) obj2;
                    SemanticsNode semanticsNode2 = (SemanticsNode) obj;
                    arrayList2.add(new Offset((((long) Float.floatToRawIntBits(Math.abs(Float.intBitsToFloat((int) (semanticsNode2.g().b() >> 32)) - Float.intBitsToFloat((int) (semanticsNode.g().b() >> 32))))) << 32) | (((long) Float.floatToRawIntBits(Math.abs(Float.intBitsToFloat((int) (semanticsNode2.g().b() & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (semanticsNode.g().b() & BodyPartID.bodyIdMax))))) & BodyPartID.bodyIdMax)));
                    obj = obj2;
                }
                list = arrayList2;
            }
            if (list.size() == 1) {
                j2 = ((Offset) CollectionsKt.B(list)).f8808a;
            } else {
                if (list.isEmpty()) {
                    ListUtilsKt.c("Empty collection can't be reduced.");
                }
                Object objB = CollectionsKt.B(list);
                int size2 = list.size() - 1;
                if (1 <= size2) {
                    int i3 = 1;
                    while (true) {
                        objB = new Offset(Offset.f(((Offset) objB).f8808a, ((Offset) list.get(i3)).f8808a));
                        if (i3 == size2) {
                            break;
                        }
                        i3++;
                    }
                }
                j2 = ((Offset) objB).f8808a;
            }
            if (Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2)) >= Float.intBitsToFloat((int) (j2 >> 32))) {
                return false;
            }
        }
        return true;
    }

    public static final void b(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        CollectionItemInfo collectionItemInfo = (CollectionItemInfo) SemanticsConfigurationKt.a(semanticsNode.k(), SemanticsProperties.g);
        if (collectionItemInfo != null) {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(collectionItemInfo.f10276a, collectionItemInfo.f10277b, ((Boolean) semanticsNode.k().h(SemanticsProperties.J, CollectionInfo_androidKt$toAccessibilityCollectionItemInfo$1.f10218c)).booleanValue(), collectionItemInfo.f10278c, collectionItemInfo.d));
        }
        SemanticsNode semanticsNodeL = semanticsNode.l();
        if (semanticsNodeL == null || SemanticsConfigurationKt.a(semanticsNodeL.k(), SemanticsProperties.f10334e) == null) {
            return;
        }
        CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsNodeL.k(), SemanticsProperties.f10335f);
        if (collectionInfo == null || (collectionInfo.f10274a >= 0 && collectionInfo.f10275b >= 0)) {
            if (semanticsNode.k().f10312b.c(SemanticsProperties.J)) {
                ArrayList arrayList = new ArrayList();
                List listJ = SemanticsNode.j(4, semanticsNodeL);
                int size = listJ.size();
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    SemanticsNode semanticsNode2 = (SemanticsNode) listJ.get(i3);
                    if (semanticsNode2.k().f10312b.c(SemanticsProperties.J)) {
                        arrayList.add(semanticsNode2);
                        if (semanticsNode2.f10320c.P() < semanticsNode.f10320c.P()) {
                            i2++;
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                boolean zA = a(arrayList);
                accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(zA ? 0 : i2, 1, ((Boolean) semanticsNode.k().h(SemanticsProperties.J, CollectionInfo_androidKt$setCollectionItemInfo$itemInfo$1.f10217c)).booleanValue(), zA ? i2 : 0, 1));
            }
        }
    }
}
