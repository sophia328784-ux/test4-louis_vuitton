package com.vuitton.foundation.model.domain.model.productshortlist;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "toggleFiltersId", "", "isSelected", "isEnabled", "subCategoryTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;ZZLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFilterValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f68113c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f68114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f68115f;
    public final String g;

    public ProductFilterValue(String str, String str2, AssetImage assetImage, String str3, boolean z, boolean z2, String str4) {
        str.getClass();
        str2.getClass();
        this.f68111a = str;
        this.f68112b = str2;
        this.f68113c = assetImage;
        this.d = str3;
        this.f68114e = z;
        this.f68115f = z2;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFilterValue)) {
            return false;
        }
        ProductFilterValue productFilterValue = (ProductFilterValue) obj;
        return Intrinsics.c(this.f68111a, productFilterValue.f68111a) && Intrinsics.c(this.f68112b, productFilterValue.f68112b) && Intrinsics.c(this.f68113c, productFilterValue.f68113c) && Intrinsics.c(this.d, productFilterValue.d) && this.f68114e == productFilterValue.f68114e && this.f68115f == productFilterValue.f68115f && Intrinsics.c(this.g, productFilterValue.g);
    }

    public final int hashCode() {
        int iB = fc.b(this.f68111a.hashCode() * 31, 31, this.f68112b);
        AssetImage assetImage = this.f68113c;
        int iHashCode = (iB + (assetImage == null ? 0 : assetImage.hashCode())) * 31;
        String str = this.d;
        int iB2 = o60.b(o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f68114e), 31, this.f68115f);
        String str2 = this.g;
        return iB2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFilterValue(id=", this.f68111a, ", title=", this.f68112b, ", image=");
        sbS.append(this.f68113c);
        sbS.append(", toggleFiltersId=");
        sbS.append(this.d);
        sbS.append(", isSelected=");
        fc.y(sbS, this.f68114e, ", isEnabled=", this.f68115f, ", subCategoryTitle=");
        return n00.r(this.g, ")", sbS);
    }
}
