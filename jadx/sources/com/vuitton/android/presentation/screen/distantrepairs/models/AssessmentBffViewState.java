package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B±\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;", "assessmentState", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;", "careService", "", "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;", "addresses", "selectedShippingAddress", "selectedBillingAddress", "", "selectedAddressToDisplay", "addressesLoader", "updateLoader", "repairsPayByLinkUrl", "userFirstname", "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "distantRepairsConfig", "isRepairCancellationReasonEnabled", "isDistantRepairPaymentMethodsIconsEnabled", "isDistantRepairsBillingAddressEnabled", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssessmentBffViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f57344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f57345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssessmentBffStateUIModel f57346c;
    public final CareServiceDetailUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f57347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AddressUiModel f57348f;
    public final AddressUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f57349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f57350i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f57351j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f57352k;
    public final String l;
    public final DistantRepairsConfigUiModel m;
    public final boolean n;
    public final boolean o;
    public final boolean p;

    public AssessmentBffViewState(InAppDispatch inAppDispatch, boolean z, AssessmentBffStateUIModel assessmentBffStateUIModel, CareServiceDetailUiModel careServiceDetailUiModel, List list, AddressUiModel addressUiModel, AddressUiModel addressUiModel2, String str, boolean z2, boolean z3, String str2, String str3, DistantRepairsConfigUiModel distantRepairsConfigUiModel, boolean z4, boolean z5, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? new AssessmentBffStateUIModel(null, null, null, null, 15, null) : assessmentBffStateUIModel, (i2 & 8) != 0 ? null : careServiceDetailUiModel, (i2 & 16) != 0 ? EmptyList.f71768b : list, (i2 & 32) != 0 ? null : addressUiModel, (i2 & 64) == 0 ? addressUiModel2 : null, (i2 & 128) != 0 ? new String() : str, (i2 & 256) != 0 ? false : z2, (i2 & 512) != 0 ? false : z3, (i2 & 1024) != 0 ? new String() : str2, (i2 & 2048) != 0 ? new String() : str3, (i2 & 4096) != 0 ? new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null) : distantRepairsConfigUiModel, (i2 & 8192) != 0 ? false : z4, (i2 & 16384) != 0 ? false : z5, (i2 & 32768) != 0 ? false : z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssessmentBffViewState)) {
            return false;
        }
        AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj;
        return Intrinsics.c(this.f57344a, assessmentBffViewState.f57344a) && this.f57345b == assessmentBffViewState.f57345b && Intrinsics.c(this.f57346c, assessmentBffViewState.f57346c) && Intrinsics.c(this.d, assessmentBffViewState.d) && Intrinsics.c(this.f57347e, assessmentBffViewState.f57347e) && Intrinsics.c(this.f57348f, assessmentBffViewState.f57348f) && Intrinsics.c(this.g, assessmentBffViewState.g) && Intrinsics.c(this.f57349h, assessmentBffViewState.f57349h) && this.f57350i == assessmentBffViewState.f57350i && this.f57351j == assessmentBffViewState.f57351j && Intrinsics.c(this.f57352k, assessmentBffViewState.f57352k) && Intrinsics.c(this.l, assessmentBffViewState.l) && Intrinsics.c(this.m, assessmentBffViewState.m) && this.n == assessmentBffViewState.n && this.o == assessmentBffViewState.o && this.p == assessmentBffViewState.p;
    }

    public final int hashCode() {
        int iHashCode = (this.f57346c.hashCode() + o60.b(this.f57344a.hashCode() * 31, 31, this.f57345b)) * 31;
        CareServiceDetailUiModel careServiceDetailUiModel = this.d;
        int iA = n00.a((iHashCode + (careServiceDetailUiModel == null ? 0 : careServiceDetailUiModel.hashCode())) * 31, 31, this.f57347e);
        AddressUiModel addressUiModel = this.f57348f;
        int iHashCode2 = (iA + (addressUiModel == null ? 0 : addressUiModel.hashCode())) * 31;
        AddressUiModel addressUiModel2 = this.g;
        return Boolean.hashCode(this.p) + o60.b(o60.b((this.m.hashCode() + fc.b(fc.b(o60.b(o60.b(fc.b((iHashCode2 + (addressUiModel2 != null ? addressUiModel2.hashCode() : 0)) * 31, 31, this.f57349h), 31, this.f57350i), 31, this.f57351j), 31, this.f57352k), 31, this.l)) * 31, 31, this.n), 31, this.o);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AssessmentBffViewState(inAppDispatch=");
        sb.append(this.f57344a);
        sb.append(", isLoading=");
        sb.append(this.f57345b);
        sb.append(", assessmentState=");
        sb.append(this.f57346c);
        sb.append(", careService=");
        sb.append(this.d);
        sb.append(", addresses=");
        sb.append(this.f57347e);
        sb.append(", selectedShippingAddress=");
        sb.append(this.f57348f);
        sb.append(", selectedBillingAddress=");
        sb.append(this.g);
        sb.append(", selectedAddressToDisplay=");
        sb.append(this.f57349h);
        sb.append(", addressesLoader=");
        fc.y(sb, this.f57350i, ", updateLoader=", this.f57351j, ", repairsPayByLinkUrl=");
        cj.C(sb, this.f57352k, ", userFirstname=", this.l, ", distantRepairsConfig=");
        sb.append(this.m);
        sb.append(", isRepairCancellationReasonEnabled=");
        sb.append(this.n);
        sb.append(", isDistantRepairPaymentMethodsIconsEnabled=");
        return pq0.p(sb, this.o, ", isDistantRepairsBillingAddressEnabled=", this.p, ")");
    }

    public AssessmentBffViewState(InAppDispatch inAppDispatch, boolean z, AssessmentBffStateUIModel assessmentBffStateUIModel, CareServiceDetailUiModel careServiceDetailUiModel, List<AddressUiModel> list, AddressUiModel addressUiModel, AddressUiModel addressUiModel2, String str, boolean z2, boolean z3, String str2, String str3, DistantRepairsConfigUiModel distantRepairsConfigUiModel, boolean z4, boolean z5, boolean z6) {
        inAppDispatch.getClass();
        assessmentBffStateUIModel.getClass();
        list.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        distantRepairsConfigUiModel.getClass();
        this.f57344a = inAppDispatch;
        this.f57345b = z;
        this.f57346c = assessmentBffStateUIModel;
        this.d = careServiceDetailUiModel;
        this.f57347e = list;
        this.f57348f = addressUiModel;
        this.g = addressUiModel2;
        this.f57349h = str;
        this.f57350i = z2;
        this.f57351j = z3;
        this.f57352k = str2;
        this.l = str3;
        this.m = distantRepairsConfigUiModel;
        this.n = z4;
        this.o = z5;
        this.p = z6;
    }
}
