package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import defpackage.m21;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00050\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/TextMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Lkotlin/Function0;", "", "shouldMeasureLinks", "", "Landroidx/compose/ui/geometry/Rect;", "placements", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TextMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f6022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f6023b;

    public TextMeasurePolicy(Function0<Boolean> function0, Function0<? extends List<Rect>> function1) {
        this.f6022a = function0;
        this.f6023b = function1;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        ArrayList arrayList;
        Pair pair;
        ArrayList arrayList2 = new ArrayList(list.size());
        List list2 = list;
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (!(((Measurable) obj).getZ() instanceof TextRangeLayoutModifier)) {
                arrayList2.add(obj);
            }
        }
        List list3 = (List) this.f6023b.mo47invoke();
        if (list3 != null) {
            ArrayList arrayList3 = new ArrayList(list3.size());
            int size2 = list3.size();
            int i3 = 0;
            while (i3 < size2) {
                Rect rect = (Rect) list3.get(i3);
                if (rect != null) {
                    float f2 = rect.f8812b;
                    float f3 = rect.f8811a;
                    Placeable placeableT = ((Measurable) arrayList2.get(i3)).T(ConstraintsKt.b(0, (int) Math.floor(rect.f8813c - f3), 0, (int) Math.floor(rect.d - f2), 5));
                    int iRound = Math.round(f3);
                    pair = new Pair(placeableT, new IntOffset((((long) Math.round(f2)) & BodyPartID.bodyIdMax) | (((long) iRound) << 32)));
                } else {
                    pair = null;
                }
                ArrayList arrayList4 = arrayList3;
                if (pair != null) {
                    arrayList4.add(pair);
                }
                i3++;
                arrayList3 = arrayList4;
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        ArrayList arrayList5 = new ArrayList(list.size());
        int size3 = list2.size();
        for (int i4 = 0; i4 < size3; i4++) {
            Object obj2 = list.get(i4);
            if (((Measurable) obj2).getZ() instanceof TextRangeLayoutModifier) {
                arrayList5.add(obj2);
            }
        }
        return measureScope.V0(Constraints.h(j2), Constraints.g(j2), MapsKt.c(), new m21(arrayList, BasicTextKt.d(arrayList5, this.f6022a), 8));
    }
}
