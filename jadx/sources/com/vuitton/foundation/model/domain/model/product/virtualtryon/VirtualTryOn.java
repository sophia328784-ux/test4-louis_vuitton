package com.vuitton.foundation.model.domain.model.product.virtualtryon;

import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;", "", "Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;", "type", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VirtualTryOn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BeautyProductType f68036a;

    public VirtualTryOn(BeautyProductType beautyProductType) {
        beautyProductType.getClass();
        this.f68036a = beautyProductType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VirtualTryOn) && this.f68036a == ((VirtualTryOn) obj).f68036a;
    }

    public final int hashCode() {
        return this.f68036a.hashCode();
    }

    public final String toString() {
        return "VirtualTryOn(type=" + this.f68036a + ")";
    }
}
