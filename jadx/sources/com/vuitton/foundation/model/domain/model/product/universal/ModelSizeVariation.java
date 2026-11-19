package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "", "name", "mediaUrl", "dimensions", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;", "wearingList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ModelSizeVariation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67997c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f67999f;

    public ModelSizeVariation(String str, String str2, String str3, String str4, String str5, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str3.getClass();
        str5.getClass();
        list.getClass();
        this.f67995a = str;
        this.f67996b = str2;
        this.f67997c = str3;
        this.d = str4;
        this.f67998e = str5;
        this.f67999f = list;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof ModelSizeVariation) {
                ModelSizeVariation modelSizeVariation = (ModelSizeVariation) obj;
                String str = modelSizeVariation.f67995a;
                SkuId.Companion companion = SkuId.INSTANCE;
                if (this.f67995a.equals(str)) {
                    String str2 = modelSizeVariation.f67996b;
                    String str3 = this.f67996b;
                    if (str3 == null) {
                        if (str2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str2 == null) {
                        zEquals = false;
                    } else {
                        ProductId.Companion companion2 = ProductId.INSTANCE;
                        zEquals = str3.equals(str2);
                    }
                    if (zEquals && this.f67997c.equals(modelSizeVariation.f67997c) && Intrinsics.c(this.d, modelSizeVariation.d) && this.f67998e.equals(modelSizeVariation.f67998e) && this.f67999f.equals(modelSizeVariation.f67999f)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode2 = this.f67995a.hashCode() * 31;
        String str = this.f67996b;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB = fc.b((iHashCode2 + iHashCode) * 31, 31, this.f67997c);
        String str2 = this.d;
        return this.f67999f.hashCode() + fc.b((iB + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.f67998e);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        String str = this.f67996b;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
        }
        StringBuilder sbS = fc.s("ModelSizeVariation(sku=", this.f67995a, ", productId=", str, ", name=");
        cj.C(sbS, this.f67997c, ", mediaUrl=", this.d, ", dimensions=");
        return o60.o(this.f67998e, ", wearingList=", ")", sbS, this.f67999f);
    }
}
