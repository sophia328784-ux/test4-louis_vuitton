package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import java.util.Comparator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/semantics/LtrBoundsComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/semantics/SemanticsNode;", "Lkotlin/Comparator;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LtrBoundsComparator implements Comparator<SemanticsNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LtrBoundsComparator f10284b = new LtrBoundsComparator();

    @Override // java.util.Comparator
    public final int compare(SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        Rect rectH = semanticsNode.h();
        Rect rectH2 = semanticsNode2.h();
        int iCompare = Float.compare(rectH.f8811a, rectH2.f8811a);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Float.compare(rectH.f8812b, rectH2.f8812b);
        if (iCompare2 != 0) {
            return iCompare2;
        }
        int iCompare3 = Float.compare(rectH.d, rectH2.d);
        return iCompare3 != 0 ? iCompare3 : Float.compare(rectH.f8813c, rectH2.f8813c);
    }
}
