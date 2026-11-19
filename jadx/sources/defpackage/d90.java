package defpackage;

import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f68482c;
    public final /* synthetic */ ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f68483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f68484f;

    public /* synthetic */ d90(MutableState mutableState, ArrayList arrayList, List list, boolean z, int i2) {
        this.f68481b = i2;
        this.f68482c = mutableState;
        this.d = arrayList;
        this.f68483e = list;
        this.f68484f = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68481b;
        boolean z = this.f68484f;
        List list = this.f68483e;
        ArrayList arrayList = this.d;
        MutableState mutableState = this.f68482c;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i2) {
            case 0:
                placementScope.f9552b = true;
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((LazyGridMeasuredItem) arrayList.get(i3)).q(placementScope, z);
                }
                int size2 = list.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ((LazyGridMeasuredItem) list.get(i4)).q(placementScope, z);
                }
                placementScope.f9552b = false;
                mutableState.getF10755b();
                break;
            default:
                placementScope.f9552b = true;
                int size3 = arrayList.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    ((LazyListMeasuredItem) arrayList.get(i5)).f(placementScope, z);
                }
                int size4 = list.size();
                for (int i6 = 0; i6 < size4; i6++) {
                    ((LazyListMeasuredItem) list.get(i6)).f(placementScope, z);
                }
                placementScope.f9552b = false;
                mutableState.getF10755b();
                break;
        }
        return Unit.f71739a;
    }
}
