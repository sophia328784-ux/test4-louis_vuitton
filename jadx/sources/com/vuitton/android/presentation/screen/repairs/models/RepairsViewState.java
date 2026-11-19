package com.vuitton.android.presentation.screen.repairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModel;
import com.vuitton.android.presentation.screen.repairs.FollowUp;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B¹\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u001a\b\u0002\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\r0\u00120\u0007\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isDetailError", "", "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;", "repairsOnGoing", "repairsHistory", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;", "repairStatus", "", "trackingNumber", "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;", "repairDetailUiModel", "showCareExpertNoteInDetails", "Lkotlin/Pair;", "Lcom/vuitton/android/presentation/screen/repairs/FollowUp;", "followUp", "isRepairCancelled", "repairPayByLinkUrl", "Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "distantRepairsConfig", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairsViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f64013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64015c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f64016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f64017f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CareServiceDetailUiModel f64018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f64019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f64020j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f64021k;
    public final String l;
    public final RepairFeatureFlags m;
    public final DistantRepairsConfigUiModel n;

    public RepairsViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List list, List list2, List list3, String str, CareServiceDetailUiModel careServiceDetailUiModel, boolean z3, List list4, boolean z4, String str2, RepairFeatureFlags repairFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? EmptyList.f71768b : list2, (i2 & 32) != 0 ? EmptyList.f71768b : list3, (i2 & 64) != 0 ? new String() : str, (i2 & 128) != 0 ? null : careServiceDetailUiModel, (i2 & 256) != 0 ? true : z3, (i2 & 512) != 0 ? EmptyList.f71768b : list4, (i2 & 1024) == 0 ? z4 : false, (i2 & 2048) != 0 ? new String() : str2, (i2 & 4096) != 0 ? new RepairFeatureFlags(false, false, false, false, false, 31, null) : repairFeatureFlags, (i2 & 8192) != 0 ? new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null) : distantRepairsConfigUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairsViewState)) {
            return false;
        }
        RepairsViewState repairsViewState = (RepairsViewState) obj;
        return Intrinsics.c(this.f64013a, repairsViewState.f64013a) && this.f64014b == repairsViewState.f64014b && this.f64015c == repairsViewState.f64015c && Intrinsics.c(this.d, repairsViewState.d) && Intrinsics.c(this.f64016e, repairsViewState.f64016e) && Intrinsics.c(this.f64017f, repairsViewState.f64017f) && Intrinsics.c(this.g, repairsViewState.g) && Intrinsics.c(this.f64018h, repairsViewState.f64018h) && this.f64019i == repairsViewState.f64019i && Intrinsics.c(this.f64020j, repairsViewState.f64020j) && this.f64021k == repairsViewState.f64021k && Intrinsics.c(this.l, repairsViewState.l) && Intrinsics.c(this.m, repairsViewState.m) && Intrinsics.c(this.n, repairsViewState.n);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(n00.a(n00.a(o60.b(o60.b(this.f64013a.hashCode() * 31, 31, this.f64014b), 31, this.f64015c), 31, this.d), 31, this.f64016e), 31, this.f64017f), 31, this.g);
        CareServiceDetailUiModel careServiceDetailUiModel = this.f64018h;
        int iB2 = o60.b(n00.a(o60.b((iB + (careServiceDetailUiModel == null ? 0 : careServiceDetailUiModel.hashCode())) * 31, 31, this.f64019i), 31, this.f64020j), 31, this.f64021k);
        String str = this.l;
        return this.n.hashCode() + ((this.m.hashCode() + ((iB2 + (str != null ? str.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RepairsViewState(inAppDispatch=");
        sb.append(this.f64013a);
        sb.append(", isLoading=");
        sb.append(this.f64014b);
        sb.append(", isDetailError=");
        sb.append(this.f64015c);
        sb.append(", repairsOnGoing=");
        sb.append(this.d);
        sb.append(", repairsHistory=");
        a.C(sb, this.f64016e, ", repairStatus=", this.f64017f, ", trackingNumber=");
        sb.append(this.g);
        sb.append(", repairDetailUiModel=");
        sb.append(this.f64018h);
        sb.append(", showCareExpertNoteInDetails=");
        sb.append(this.f64019i);
        sb.append(", followUp=");
        sb.append(this.f64020j);
        sb.append(", isRepairCancelled=");
        cj.A(", repairPayByLinkUrl=", this.l, ", featureFlags=", sb, this.f64021k);
        sb.append(this.m);
        sb.append(", distantRepairsConfig=");
        sb.append(this.n);
        sb.append(")");
        return sb.toString();
    }

    public RepairsViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List<CareServiceUiModel> list, List<CareServiceUiModel> list2, List<RepairStatusTranslationUiModel> list3, String str, CareServiceDetailUiModel careServiceDetailUiModel, boolean z3, List<? extends Pair<? extends FollowUp, String>> list4, boolean z4, String str2, RepairFeatureFlags repairFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel) {
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        str.getClass();
        list4.getClass();
        repairFeatureFlags.getClass();
        distantRepairsConfigUiModel.getClass();
        this.f64013a = inAppDispatch;
        this.f64014b = z;
        this.f64015c = z2;
        this.d = list;
        this.f64016e = list2;
        this.f64017f = list3;
        this.g = str;
        this.f64018h = careServiceDetailUiModel;
        this.f64019i = z3;
        this.f64020j = list4;
        this.f64021k = z4;
        this.l = str2;
        this.m = repairFeatureFlags;
        this.n = distantRepairsConfigUiModel;
    }
}
