package com.vuitton.foundation.model.domain.model.spotlight;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "productSku", "Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;", "detail", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotspotContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HotspotDetail f68217b;

    public HotspotContent(String str, HotspotDetail hotspotDetail, DefaultConstructorMarker defaultConstructorMarker) {
        this.f68216a = str;
        this.f68217b = hotspotDetail;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotspotContent)) {
            return false;
        }
        HotspotContent hotspotContent = (HotspotContent) obj;
        String str = hotspotContent.f68216a;
        String str2 = this.f68216a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.f68217b, hotspotContent.f68217b);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f68216a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        HotspotDetail hotspotDetail = this.f68217b;
        return i2 + (hotspotDetail != null ? hotspotDetail.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f68216a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return "HotspotContent(productSku=" + str + ", detail=" + this.f68217b + ")";
    }
}
