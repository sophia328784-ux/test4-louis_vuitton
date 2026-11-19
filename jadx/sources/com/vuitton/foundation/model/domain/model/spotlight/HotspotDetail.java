package com.vuitton.foundation.model.domain.model.spotlight;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;", "", "", "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotspotDetail {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f68220c;
    public final SpotlightCta d;

    public HotspotDetail(String str, String str2, AssetImage assetImage, SpotlightCta spotlightCta) {
        str.getClass();
        assetImage.getClass();
        spotlightCta.getClass();
        this.f68218a = str;
        this.f68219b = str2;
        this.f68220c = assetImage;
        this.d = spotlightCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotspotDetail)) {
            return false;
        }
        HotspotDetail hotspotDetail = (HotspotDetail) obj;
        return Intrinsics.c(this.f68218a, hotspotDetail.f68218a) && Intrinsics.c(this.f68219b, hotspotDetail.f68219b) && Intrinsics.c(this.f68220c, hotspotDetail.f68220c) && Intrinsics.c(this.d, hotspotDetail.d);
    }

    public final int hashCode() {
        int iHashCode = this.f68218a.hashCode() * 31;
        String str = this.f68219b;
        return this.d.hashCode() + ((this.f68220c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HotspotDetail(title=", this.f68218a, ", description=", this.f68219b, ", image=");
        sbS.append(this.f68220c);
        sbS.append(", cta=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
