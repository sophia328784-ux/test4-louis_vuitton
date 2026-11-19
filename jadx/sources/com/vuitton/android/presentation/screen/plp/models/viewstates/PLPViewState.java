package com.vuitton.android.presentation.screen.plp.models.viewstates;

import androidx.paging.PagingData;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\f\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "", "", "pageTitle", "trackingPageName", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/paging/PagingData;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "items", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "", "latestPage", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "currentGridMode", "changeGridVocalizationEnabled", "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;", "currentFocusedProduct", "totalCount", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;", "dispatchFilters", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Flow f63007c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f63008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f63009f;
    public final GridModes g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f63010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FocusedProductUiModel f63011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Integer f63012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f63013k;

    public PLPViewState(String str, String str2, Flow flow, boolean z, boolean z2, int i2, GridModes gridModes, boolean z3, FocusedProductUiModel focusedProductUiModel, Integer num, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? FlowKt.o() : flow, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? GridModes.Full.f55430b : gridModes, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? null : focusedProductUiModel, (i3 & 512) != 0 ? null : num, (i3 & 1024) != 0 ? EmptyList.f71768b : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPViewState)) {
            return false;
        }
        PLPViewState pLPViewState = (PLPViewState) obj;
        return Intrinsics.c(this.f63005a, pLPViewState.f63005a) && Intrinsics.c(this.f63006b, pLPViewState.f63006b) && Intrinsics.c(this.f63007c, pLPViewState.f63007c) && this.d == pLPViewState.d && this.f63008e == pLPViewState.f63008e && this.f63009f == pLPViewState.f63009f && Intrinsics.c(this.g, pLPViewState.g) && this.f63010h == pLPViewState.f63010h && Intrinsics.c(this.f63011i, pLPViewState.f63011i) && Intrinsics.c(this.f63012j, pLPViewState.f63012j) && Intrinsics.c(this.f63013k, pLPViewState.f63013k);
    }

    public final int hashCode() {
        String str = this.f63005a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f63006b;
        int iB = o60.b((this.g.hashCode() + tr.b(this.f63009f, o60.b(o60.b((this.f63007c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31, this.d), 31, this.f63008e), 31)) * 31, 31, this.f63010h);
        FocusedProductUiModel focusedProductUiModel = this.f63011i;
        int iHashCode2 = (iB + (focusedProductUiModel == null ? 0 : focusedProductUiModel.hashCode())) * 31;
        Integer num = this.f63012j;
        return this.f63013k.hashCode() + ((iHashCode2 + (num != null ? num.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PLPViewState(pageTitle=", this.f63005a, ", trackingPageName=", this.f63006b, ", items=");
        sbS.append(this.f63007c);
        sbS.append(", isPlpV3GridViewEnabled=");
        sbS.append(this.d);
        sbS.append(", isAiCompanionEnabled=");
        sbS.append(this.f63008e);
        sbS.append(", latestPage=");
        sbS.append(this.f63009f);
        sbS.append(", currentGridMode=");
        sbS.append(this.g);
        sbS.append(", changeGridVocalizationEnabled=");
        sbS.append(this.f63010h);
        sbS.append(", currentFocusedProduct=");
        sbS.append(this.f63011i);
        sbS.append(", totalCount=");
        sbS.append(this.f63012j);
        sbS.append(", dispatchFilters=");
        return a.o(sbS, this.f63013k, ")");
    }

    public PLPViewState(String str, String str2, Flow<PagingData<PlpSectionUiModel>> flow, boolean z, boolean z2, int i2, GridModes gridModes, boolean z3, FocusedProductUiModel focusedProductUiModel, Integer num, List<ProductFilterValueUiModel> list) {
        flow.getClass();
        gridModes.getClass();
        list.getClass();
        this.f63005a = str;
        this.f63006b = str2;
        this.f63007c = flow;
        this.d = z;
        this.f63008e = z2;
        this.f63009f = i2;
        this.g = gridModes;
        this.f63010h = z3;
        this.f63011i = focusedProductUiModel;
        this.f63012j = num;
        this.f63013k = list;
    }

    public PLPViewState() {
        this(null, null, null, false, false, 0, null, false, null, null, null, 2047, null);
    }
}
