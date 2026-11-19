package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B½\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;", "assessmentState", "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;", "assessment", "careService", "", "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;", "addresses", "selectedShippingAddress", "selectedBillingAddress", "", "selectedAddressToDisplay", "addressesLoader", "updateLoader", "repairsPayByLinkUrl", "userFirstname", "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "distantRepairsConfig", "isRepairCancellationReasonEnabled", "isDistantRepairPaymentMethodsIconsEnabled", "isDistantRepairsBillingAddressEnabled", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssessmentViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f57356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f57357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssessmentStateUIModel f57358c;
    public final CareServiceDetailUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceDetailUiModel f57359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f57360f;
    public final AddressUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AddressUiModel f57361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f57362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f57363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f57364k;
    public final String l;
    public final String m;
    public final DistantRepairsConfigUiModel n;
    public final boolean o;
    public final boolean p;
    public final boolean q;

    public AssessmentViewState(InAppDispatch inAppDispatch, boolean z, AssessmentStateUIModel assessmentStateUIModel, CareServiceDetailUiModel careServiceDetailUiModel, CareServiceDetailUiModel careServiceDetailUiModel2, List list, AddressUiModel addressUiModel, AddressUiModel addressUiModel2, String str, boolean z2, boolean z3, String str2, String str3, DistantRepairsConfigUiModel distantRepairsConfigUiModel, boolean z4, boolean z5, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? new AssessmentStateUIModel(null, null, null, null, 15, null) : assessmentStateUIModel, (i2 & 8) != 0 ? null : careServiceDetailUiModel, (i2 & 16) != 0 ? null : careServiceDetailUiModel2, (i2 & 32) != 0 ? EmptyList.f71768b : list, (i2 & 64) != 0 ? null : addressUiModel, (i2 & 128) == 0 ? addressUiModel2 : null, (i2 & 256) != 0 ? new String() : str, (i2 & 512) != 0 ? false : z2, (i2 & 1024) != 0 ? false : z3, (i2 & 2048) != 0 ? new String() : str2, (i2 & 4096) != 0 ? new String() : str3, (i2 & 8192) != 0 ? new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null) : distantRepairsConfigUiModel, (i2 & 16384) != 0 ? false : z4, (i2 & 32768) != 0 ? false : z5, (i2 & 65536) != 0 ? false : z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssessmentViewState)) {
            return false;
        }
        AssessmentViewState assessmentViewState = (AssessmentViewState) obj;
        return Intrinsics.c(this.f57356a, assessmentViewState.f57356a) && this.f57357b == assessmentViewState.f57357b && Intrinsics.c(this.f57358c, assessmentViewState.f57358c) && Intrinsics.c(this.d, assessmentViewState.d) && Intrinsics.c(this.f57359e, assessmentViewState.f57359e) && Intrinsics.c(this.f57360f, assessmentViewState.f57360f) && Intrinsics.c(this.g, assessmentViewState.g) && Intrinsics.c(this.f57361h, assessmentViewState.f57361h) && Intrinsics.c(this.f57362i, assessmentViewState.f57362i) && this.f57363j == assessmentViewState.f57363j && this.f57364k == assessmentViewState.f57364k && Intrinsics.c(this.l, assessmentViewState.l) && Intrinsics.c(this.m, assessmentViewState.m) && Intrinsics.c(this.n, assessmentViewState.n) && this.o == assessmentViewState.o && this.p == assessmentViewState.p && this.q == assessmentViewState.q;
    }

    public final int hashCode() {
        int iHashCode = (this.f57358c.hashCode() + o60.b(this.f57356a.hashCode() * 31, 31, this.f57357b)) * 31;
        CareServiceDetailUiModel careServiceDetailUiModel = this.d;
        int iHashCode2 = (iHashCode + (careServiceDetailUiModel == null ? 0 : careServiceDetailUiModel.hashCode())) * 31;
        CareServiceDetailUiModel careServiceDetailUiModel2 = this.f57359e;
        int iA = n00.a((iHashCode2 + (careServiceDetailUiModel2 == null ? 0 : careServiceDetailUiModel2.hashCode())) * 31, 31, this.f57360f);
        AddressUiModel addressUiModel = this.g;
        int iHashCode3 = (iA + (addressUiModel == null ? 0 : addressUiModel.hashCode())) * 31;
        AddressUiModel addressUiModel2 = this.f57361h;
        return Boolean.hashCode(this.q) + o60.b(o60.b((this.n.hashCode() + fc.b(fc.b(o60.b(o60.b(fc.b((iHashCode3 + (addressUiModel2 != null ? addressUiModel2.hashCode() : 0)) * 31, 31, this.f57362i), 31, this.f57363j), 31, this.f57364k), 31, this.l), 31, this.m)) * 31, 31, this.o), 31, this.p);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AssessmentViewState(inAppDispatch=");
        sb.append(this.f57356a);
        sb.append(", isLoading=");
        sb.append(this.f57357b);
        sb.append(", assessmentState=");
        sb.append(this.f57358c);
        sb.append(", assessment=");
        sb.append(this.d);
        sb.append(", careService=");
        sb.append(this.f57359e);
        sb.append(", addresses=");
        sb.append(this.f57360f);
        sb.append(", selectedShippingAddress=");
        sb.append(this.g);
        sb.append(", selectedBillingAddress=");
        sb.append(this.f57361h);
        sb.append(", selectedAddressToDisplay=");
        pq0.A(this.f57362i, ", addressesLoader=", ", updateLoader=", sb, this.f57363j);
        cj.A(", repairsPayByLinkUrl=", this.l, ", userFirstname=", sb, this.f57364k);
        sb.append(this.m);
        sb.append(", distantRepairsConfig=");
        sb.append(this.n);
        sb.append(", isRepairCancellationReasonEnabled=");
        fc.y(sb, this.o, ", isDistantRepairPaymentMethodsIconsEnabled=", this.p, ", isDistantRepairsBillingAddressEnabled=");
        return a.p(sb, this.q, ")");
    }

    public AssessmentViewState(InAppDispatch inAppDispatch, boolean z, AssessmentStateUIModel assessmentStateUIModel, CareServiceDetailUiModel careServiceDetailUiModel, CareServiceDetailUiModel careServiceDetailUiModel2, List<AddressUiModel> list, AddressUiModel addressUiModel, AddressUiModel addressUiModel2, String str, boolean z2, boolean z3, String str2, String str3, DistantRepairsConfigUiModel distantRepairsConfigUiModel, boolean z4, boolean z5, boolean z6) {
        inAppDispatch.getClass();
        assessmentStateUIModel.getClass();
        list.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        distantRepairsConfigUiModel.getClass();
        this.f57356a = inAppDispatch;
        this.f57357b = z;
        this.f57358c = assessmentStateUIModel;
        this.d = careServiceDetailUiModel;
        this.f57359e = careServiceDetailUiModel2;
        this.f57360f = list;
        this.g = addressUiModel;
        this.f57361h = addressUiModel2;
        this.f57362i = str;
        this.f57363j = z2;
        this.f57364k = z3;
        this.l = str2;
        this.m = str3;
        this.n = distantRepairsConfigUiModel;
        this.o = z4;
        this.p = z5;
        this.q = z6;
    }
}
