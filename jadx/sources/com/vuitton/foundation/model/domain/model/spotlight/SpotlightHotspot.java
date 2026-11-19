package com.vuitton.foundation.model.domain.model.spotlight;

import com.vuitton.foundation.model.domain.model.common.Asset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;", "", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;", "position", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;", "content", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightHotspot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpotlightPosition f68226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f68227c;
    public final HotspotContent d;

    public SpotlightHotspot(String str, SpotlightPosition spotlightPosition, Asset asset, HotspotContent hotspotContent) {
        str.getClass();
        spotlightPosition.getClass();
        asset.getClass();
        hotspotContent.getClass();
        this.f68225a = str;
        this.f68226b = spotlightPosition;
        this.f68227c = asset;
        this.d = hotspotContent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightHotspot)) {
            return false;
        }
        SpotlightHotspot spotlightHotspot = (SpotlightHotspot) obj;
        return Intrinsics.c(this.f68225a, spotlightHotspot.f68225a) && Intrinsics.c(this.f68226b, spotlightHotspot.f68226b) && Intrinsics.c(this.f68227c, spotlightHotspot.f68227c) && Intrinsics.c(this.d, spotlightHotspot.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f68227c.hashCode() + ((this.f68226b.hashCode() + (this.f68225a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SpotlightHotspot(identifier=" + this.f68225a + ", position=" + this.f68226b + ", asset=" + this.f68227c + ", content=" + this.d + ")";
    }
}
