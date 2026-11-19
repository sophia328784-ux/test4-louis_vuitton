package com.vuitton.foundation.model.domain.model.product.vto;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;", "", "", "sku", "productId", "title", "surtitle", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "introduction", "", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;", "sectionList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Tutorial {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68091c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImage f68092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68093f;
    public final List g;

    public Tutorial(String str, String str2, String str3, String str4, AssetImage assetImage, String str5, List<TutorialSection> list) {
        str.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        this.f68089a = str;
        this.f68090b = str2;
        this.f68091c = str3;
        this.d = str4;
        this.f68092e = assetImage;
        this.f68093f = str5;
        this.g = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tutorial)) {
            return false;
        }
        Tutorial tutorial = (Tutorial) obj;
        return Intrinsics.c(this.f68089a, tutorial.f68089a) && Intrinsics.c(this.f68090b, tutorial.f68090b) && Intrinsics.c(this.f68091c, tutorial.f68091c) && Intrinsics.c(this.d, tutorial.d) && Intrinsics.c(this.f68092e, tutorial.f68092e) && Intrinsics.c(this.f68093f, tutorial.f68093f) && Intrinsics.c(this.g, tutorial.g);
    }

    public final int hashCode() {
        int iHashCode = this.f68089a.hashCode() * 31;
        String str = this.f68090b;
        int iB = fc.b(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f68091c), 31, this.d);
        AssetImage assetImage = this.f68092e;
        int iHashCode2 = (iB + (assetImage == null ? 0 : assetImage.hashCode())) * 31;
        String str2 = this.f68093f;
        return this.g.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Tutorial(sku=", this.f68089a, ", productId=", this.f68090b, ", title=");
        cj.C(sbS, this.f68091c, ", surtitle=", this.d, ", image=");
        sbS.append(this.f68092e);
        sbS.append(", introduction=");
        sbS.append(this.f68093f);
        sbS.append(", sectionList=");
        return a.o(sbS, this.g, ")");
    }

    public /* synthetic */ Tutorial(String str, String str2, String str3, String str4, AssetImage assetImage, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, str3, str4, (i2 & 16) != 0 ? null : assetImage, (i2 & 32) != 0 ? null : str5, list);
    }
}
