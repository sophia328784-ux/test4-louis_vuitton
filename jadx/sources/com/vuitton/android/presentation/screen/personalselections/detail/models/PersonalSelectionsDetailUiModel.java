package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u007f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\f\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\f¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;", "selectionType", "creationDate", "clientAdvisorText", "shareURL", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;", Payload.TYPE_STORE, "", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;", "assets", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;", Product.TYPE, "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSelectionsDetailUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionTypeUiModel f62570c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f62571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f62572f;
    public final SelectionStoreUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f62573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f62574i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f62575j;

    public PersonalSelectionsDetailUiModel(String str, String str2, SelectionTypeUiModel selectionTypeUiModel, String str3, String str4, String str5, SelectionStoreUiModel selectionStoreUiModel, List list, List list2, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? SelectionTypeUiModel.IN_STORE : selectionTypeUiModel, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) == 0 ? str5 : "", (i2 & 64) != 0 ? new SelectionStoreUiModel(null, null, null, 7, null) : selectionStoreUiModel, (i2 & 128) != 0 ? EmptyList.f71768b : list, (i2 & 256) != 0 ? EmptyList.f71768b : list2, (i2 & 512) != 0 ? EmptyList.f71768b : list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelectionsDetailUiModel)) {
            return false;
        }
        PersonalSelectionsDetailUiModel personalSelectionsDetailUiModel = (PersonalSelectionsDetailUiModel) obj;
        return Intrinsics.c(this.f62568a, personalSelectionsDetailUiModel.f62568a) && Intrinsics.c(this.f62569b, personalSelectionsDetailUiModel.f62569b) && this.f62570c == personalSelectionsDetailUiModel.f62570c && Intrinsics.c(this.d, personalSelectionsDetailUiModel.d) && Intrinsics.c(this.f62571e, personalSelectionsDetailUiModel.f62571e) && Intrinsics.c(this.f62572f, personalSelectionsDetailUiModel.f62572f) && Intrinsics.c(this.g, personalSelectionsDetailUiModel.g) && Intrinsics.c(this.f62573h, personalSelectionsDetailUiModel.f62573h) && Intrinsics.c(this.f62574i, personalSelectionsDetailUiModel.f62574i) && Intrinsics.c(this.f62575j, personalSelectionsDetailUiModel.f62575j);
    }

    public final int hashCode() {
        int iHashCode = this.f62568a.hashCode() * 31;
        String str = this.f62569b;
        return this.f62575j.hashCode() + n00.a(n00.a((this.g.hashCode() + fc.b(fc.b(fc.b((this.f62570c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.d), 31, this.f62571e), 31, this.f62572f)) * 31, 31, this.f62573h), 31, this.f62574i);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSelectionsDetailUiModel(id=", this.f62568a, ", title=", this.f62569b, ", selectionType=");
        sbS.append(this.f62570c);
        sbS.append(", creationDate=");
        sbS.append(this.d);
        sbS.append(", clientAdvisorText=");
        cj.C(sbS, this.f62571e, ", shareURL=", this.f62572f, ", store=");
        sbS.append(this.g);
        sbS.append(", assets=");
        sbS.append(this.f62573h);
        sbS.append(", products=");
        sbS.append(this.f62574i);
        sbS.append(", sections=");
        sbS.append(this.f62575j);
        sbS.append(")");
        return sbS.toString();
    }

    public PersonalSelectionsDetailUiModel(String str, String str2, SelectionTypeUiModel selectionTypeUiModel, String str3, String str4, String str5, SelectionStoreUiModel selectionStoreUiModel, List<SelectionAssetUiModel> list, List<SelectionProductUiModel> list2, List<? extends EditorialModuleUiModel> list3) {
        str.getClass();
        selectionTypeUiModel.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        selectionStoreUiModel.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        this.f62568a = str;
        this.f62569b = str2;
        this.f62570c = selectionTypeUiModel;
        this.d = str3;
        this.f62571e = str4;
        this.f62572f = str5;
        this.g = selectionStoreUiModel;
        this.f62573h = list;
        this.f62574i = list2;
        this.f62575j = list3;
    }

    public PersonalSelectionsDetailUiModel() {
        this(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }
}
