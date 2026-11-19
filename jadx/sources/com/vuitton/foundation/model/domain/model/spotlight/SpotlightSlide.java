package com.vuitton.foundation.model.domain.model.spotlight;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "assetRatio", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "introVideo", "outroVideo", "", "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;", "hotspots", "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "theme", "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;FLcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightSlide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f68232c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetVideo f68233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetVideo f68234f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FeatureTheme f68235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SpotlightCta f68236i;

    public SpotlightSlide(String str, String str2, Asset asset, float f2, AssetVideo assetVideo, AssetVideo assetVideo2, List<SpotlightHotspot> list, FeatureTheme featureTheme, SpotlightCta spotlightCta) {
        str.getClass();
        str2.getClass();
        asset.getClass();
        list.getClass();
        featureTheme.getClass();
        this.f68230a = str;
        this.f68231b = str2;
        this.f68232c = asset;
        this.d = f2;
        this.f68233e = assetVideo;
        this.f68234f = assetVideo2;
        this.g = list;
        this.f68235h = featureTheme;
        this.f68236i = spotlightCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightSlide)) {
            return false;
        }
        SpotlightSlide spotlightSlide = (SpotlightSlide) obj;
        return Intrinsics.c(this.f68230a, spotlightSlide.f68230a) && Intrinsics.c(this.f68231b, spotlightSlide.f68231b) && Intrinsics.c(this.f68232c, spotlightSlide.f68232c) && Float.compare(this.d, spotlightSlide.d) == 0 && Intrinsics.c(this.f68233e, spotlightSlide.f68233e) && Intrinsics.c(this.f68234f, spotlightSlide.f68234f) && Intrinsics.c(this.g, spotlightSlide.g) && this.f68235h == spotlightSlide.f68235h && Intrinsics.c(this.f68236i, spotlightSlide.f68236i);
    }

    public final int hashCode() {
        int iB = pq0.b((this.f68232c.hashCode() + fc.b(this.f68230a.hashCode() * 31, 31, this.f68231b)) * 31, 31, this.d);
        AssetVideo assetVideo = this.f68233e;
        int iHashCode = (iB + (assetVideo == null ? 0 : assetVideo.hashCode())) * 31;
        AssetVideo assetVideo2 = this.f68234f;
        int iHashCode2 = (this.f68235h.hashCode() + n00.a((iHashCode + (assetVideo2 == null ? 0 : assetVideo2.hashCode())) * 31, 31, this.g)) * 31;
        SpotlightCta spotlightCta = this.f68236i;
        return iHashCode2 + (spotlightCta != null ? spotlightCta.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SpotlightSlide(id=", this.f68230a, ", title=", this.f68231b, ", asset=");
        sbS.append(this.f68232c);
        sbS.append(", assetRatio=");
        sbS.append(this.d);
        sbS.append(", introVideo=");
        sbS.append(this.f68233e);
        sbS.append(", outroVideo=");
        sbS.append(this.f68234f);
        sbS.append(", hotspots=");
        sbS.append(this.g);
        sbS.append(", theme=");
        sbS.append(this.f68235h);
        sbS.append(", cta=");
        sbS.append(this.f68236i);
        sbS.append(")");
        return sbS.toString();
    }
}
