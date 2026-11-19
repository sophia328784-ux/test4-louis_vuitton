package com.vuitton.foundation.model.domain.model.plp;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "", "", b.a.f24015b, "name", "trackingPageName", "", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "sectionList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;", "optionList", "", "totalCount", "currentPage", "nextPage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;IILjava/lang/Integer;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlpPagination {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67822c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductListOption f67823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f67824f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f67825h;

    public PlpPagination(String str, String str2, String str3, List<? extends PlpSection> list, ProductListOption productListOption, int i2, int i3, Integer num) {
        list.getClass();
        productListOption.getClass();
        this.f67820a = str;
        this.f67821b = str2;
        this.f67822c = str3;
        this.d = list;
        this.f67823e = productListOption;
        this.f67824f = i2;
        this.g = i3;
        this.f67825h = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlpPagination)) {
            return false;
        }
        PlpPagination plpPagination = (PlpPagination) obj;
        return Intrinsics.c(this.f67820a, plpPagination.f67820a) && Intrinsics.c(this.f67821b, plpPagination.f67821b) && Intrinsics.c(this.f67822c, plpPagination.f67822c) && Intrinsics.c(this.d, plpPagination.d) && Intrinsics.c(this.f67823e, plpPagination.f67823e) && this.f67824f == plpPagination.f67824f && this.g == plpPagination.g && Intrinsics.c(this.f67825h, plpPagination.f67825h);
    }

    public final int hashCode() {
        String str = this.f67820a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67821b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67822c;
        int iB = tr.b(this.g, tr.b(this.f67824f, (this.f67823e.hashCode() + n00.a((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d)) * 31, 31), 31);
        Integer num = this.f67825h;
        return iB + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PlpPagination(id=", this.f67820a, ", name=", this.f67821b, ", trackingPageName=");
        d21.z(this.f67822c, ", sectionList=", ", optionList=", sbS, this.d);
        sbS.append(this.f67823e);
        sbS.append(", totalCount=");
        sbS.append(this.f67824f);
        sbS.append(", currentPage=");
        sbS.append(this.g);
        sbS.append(", nextPage=");
        sbS.append(this.f67825h);
        sbS.append(")");
        return sbS.toString();
    }
}
