package com.vuitton.android.presentation.screen.repairs.models.bff;

import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isDetailError", "", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;", "repairsOnGoing", "repairsHistory", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;", "repairStatus", "", "trackingNumber", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;", "careServiceDetail", "isRepairCancelled", "repairPayByLinkUrl", "Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "distantRepairsConfig", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairsBffViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f64083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64085c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f64086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f64087f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CareServiceDetailUiModel f64088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f64089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f64090j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RepairFeatureFlags f64091k;
    public final DistantRepairsConfigUiModel l;

    public RepairsBffViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List list, List list2, List list3, String str, CareServiceDetailUiModel careServiceDetailUiModel, boolean z3, String str2, RepairFeatureFlags repairFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? EmptyList.f71768b : list2, (i2 & 32) != 0 ? EmptyList.f71768b : list3, (i2 & 64) != 0 ? new String() : str, (i2 & 128) != 0 ? null : careServiceDetailUiModel, (i2 & 256) == 0 ? z3 : false, (i2 & 512) != 0 ? new String() : str2, (i2 & 1024) != 0 ? new RepairFeatureFlags(false, false, false, false, false, 31, null) : repairFeatureFlags, (i2 & 2048) != 0 ? new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null) : distantRepairsConfigUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairsBffViewState)) {
            return false;
        }
        RepairsBffViewState repairsBffViewState = (RepairsBffViewState) obj;
        return Intrinsics.c(this.f64083a, repairsBffViewState.f64083a) && this.f64084b == repairsBffViewState.f64084b && this.f64085c == repairsBffViewState.f64085c && Intrinsics.c(this.d, repairsBffViewState.d) && Intrinsics.c(this.f64086e, repairsBffViewState.f64086e) && Intrinsics.c(this.f64087f, repairsBffViewState.f64087f) && Intrinsics.c(this.g, repairsBffViewState.g) && Intrinsics.c(this.f64088h, repairsBffViewState.f64088h) && this.f64089i == repairsBffViewState.f64089i && Intrinsics.c(this.f64090j, repairsBffViewState.f64090j) && Intrinsics.c(this.f64091k, repairsBffViewState.f64091k) && Intrinsics.c(this.l, repairsBffViewState.l);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(n00.a(n00.a(o60.b(o60.b(this.f64083a.hashCode() * 31, 31, this.f64084b), 31, this.f64085c), 31, this.d), 31, this.f64086e), 31, this.f64087f), 31, this.g);
        CareServiceDetailUiModel careServiceDetailUiModel = this.f64088h;
        int iB2 = o60.b((iB + (careServiceDetailUiModel == null ? 0 : careServiceDetailUiModel.hashCode())) * 31, 31, this.f64089i);
        String str = this.f64090j;
        return this.l.hashCode() + ((this.f64091k.hashCode() + ((iB2 + (str != null ? str.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RepairsBffViewState(inAppDispatch=");
        sb.append(this.f64083a);
        sb.append(", isLoading=");
        sb.append(this.f64084b);
        sb.append(", isDetailError=");
        sb.append(this.f64085c);
        sb.append(", repairsOnGoing=");
        sb.append(this.d);
        sb.append(", repairsHistory=");
        a.C(sb, this.f64086e, ", repairStatus=", this.f64087f, ", trackingNumber=");
        sb.append(this.g);
        sb.append(", careServiceDetail=");
        sb.append(this.f64088h);
        sb.append(", isRepairCancelled=");
        cj.A(", repairPayByLinkUrl=", this.f64090j, ", featureFlags=", sb, this.f64089i);
        sb.append(this.f64091k);
        sb.append(", distantRepairsConfig=");
        sb.append(this.l);
        sb.append(")");
        return sb.toString();
    }

    public RepairsBffViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List<CareServiceShortUiModel> list, List<CareServiceShortUiModel> list2, List<RepairStatusTranslationUiModel> list3, String str, CareServiceDetailUiModel careServiceDetailUiModel, boolean z3, String str2, RepairFeatureFlags repairFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel) {
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        str.getClass();
        repairFeatureFlags.getClass();
        distantRepairsConfigUiModel.getClass();
        this.f64083a = inAppDispatch;
        this.f64084b = z;
        this.f64085c = z2;
        this.d = list;
        this.f64086e = list2;
        this.f64087f = list3;
        this.g = str;
        this.f64088h = careServiceDetailUiModel;
        this.f64089i = z3;
        this.f64090j = str2;
        this.f64091k = repairFeatureFlags;
        this.l = distantRepairsConfigUiModel;
    }
}
