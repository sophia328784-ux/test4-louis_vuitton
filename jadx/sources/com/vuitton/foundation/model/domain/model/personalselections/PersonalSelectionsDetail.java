package com.vuitton.foundation.model.domain.model.personalselections;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sightcall.universal.agent.Product;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\f¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;", "selectionType", "creationDate", "clientAdvisorText", "shareURL", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;", Payload.TYPE_STORE, "", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionAsset;", "assets", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;", Product.TYPE, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSelectionsDetail {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionType f67793c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67795f;
    public final SelectionStore g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f67796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f67797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f67798j;

    public PersonalSelectionsDetail(String str, String str2, SelectionType selectionType, String str3, String str4, String str5, SelectionStore selectionStore, List<SelectionAsset> list, List<SelectionProduct> list2, List<? extends EditorialModule> list3) {
        str.getClass();
        selectionType.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        selectionStore.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        this.f67791a = str;
        this.f67792b = str2;
        this.f67793c = selectionType;
        this.d = str3;
        this.f67794e = str4;
        this.f67795f = str5;
        this.g = selectionStore;
        this.f67796h = list;
        this.f67797i = list2;
        this.f67798j = list3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelectionsDetail)) {
            return false;
        }
        PersonalSelectionsDetail personalSelectionsDetail = (PersonalSelectionsDetail) obj;
        return Intrinsics.c(this.f67791a, personalSelectionsDetail.f67791a) && Intrinsics.c(this.f67792b, personalSelectionsDetail.f67792b) && this.f67793c == personalSelectionsDetail.f67793c && Intrinsics.c(this.d, personalSelectionsDetail.d) && Intrinsics.c(this.f67794e, personalSelectionsDetail.f67794e) && Intrinsics.c(this.f67795f, personalSelectionsDetail.f67795f) && Intrinsics.c(this.g, personalSelectionsDetail.g) && Intrinsics.c(this.f67796h, personalSelectionsDetail.f67796h) && Intrinsics.c(this.f67797i, personalSelectionsDetail.f67797i) && Intrinsics.c(this.f67798j, personalSelectionsDetail.f67798j);
    }

    public final int hashCode() {
        int iHashCode = this.f67791a.hashCode() * 31;
        String str = this.f67792b;
        return this.f67798j.hashCode() + n00.a(n00.a((this.g.hashCode() + fc.b(fc.b(fc.b((this.f67793c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.d), 31, this.f67794e), 31, this.f67795f)) * 31, 31, this.f67796h), 31, this.f67797i);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSelectionsDetail(id=", this.f67791a, ", title=", this.f67792b, ", selectionType=");
        sbS.append(this.f67793c);
        sbS.append(", creationDate=");
        sbS.append(this.d);
        sbS.append(", clientAdvisorText=");
        cj.C(sbS, this.f67794e, ", shareURL=", this.f67795f, ", store=");
        sbS.append(this.g);
        sbS.append(", assets=");
        sbS.append(this.f67796h);
        sbS.append(", products=");
        sbS.append(this.f67797i);
        sbS.append(", sections=");
        sbS.append(this.f67798j);
        sbS.append(")");
        return sbS.toString();
    }
}
