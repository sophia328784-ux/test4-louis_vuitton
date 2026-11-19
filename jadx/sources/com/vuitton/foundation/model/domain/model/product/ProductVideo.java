package com.vuitton.foundation.model.domain.model.product;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;", "Lcom/vuitton/foundation/model/domain/model/product/ProductMedia;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeHolder", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductVideo extends ProductMedia {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67919b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductVideo(String str, String str2) {
        super(null);
        str.getClass();
        this.f67918a = str;
        this.f67919b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVideo)) {
            return false;
        }
        ProductVideo productVideo = (ProductVideo) obj;
        return Intrinsics.c(this.f67918a, productVideo.f67918a) && Intrinsics.c(this.f67919b, productVideo.f67919b);
    }

    public final int hashCode() {
        int iHashCode = this.f67918a.hashCode() * 31;
        String str = this.f67919b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("ProductVideo(url=", this.f67918a, ", placeHolder=", this.f67919b, ")");
    }
}
