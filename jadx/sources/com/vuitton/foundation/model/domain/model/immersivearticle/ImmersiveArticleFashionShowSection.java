package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.editorial.LiveFormat;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;", "titlesDuringLive", "titlesDuringReplay", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;", "format", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;", "content", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleFashionShowSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleTitles f67663c;
    public final ImmersiveArticleTitles d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Asset f67664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67665f;
    public final AssetVideo g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LiveFormat f67666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmersiveArticleFashionShowContent f67667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SectionTheme f67668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SectionTheme f67669k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleFashionShowSection(String str, String str2, ImmersiveArticleTitles immersiveArticleTitles, ImmersiveArticleTitles immersiveArticleTitles2, Asset asset, ImmersiveArticleSizeCard immersiveArticleSizeCard, AssetVideo assetVideo, LiveFormat liveFormat, ImmersiveArticleFashionShowContent immersiveArticleFashionShowContent, SectionTheme sectionTheme, SectionTheme sectionTheme2) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleTitles.getClass();
        immersiveArticleTitles2.getClass();
        asset.getClass();
        immersiveArticleSizeCard.getClass();
        assetVideo.getClass();
        liveFormat.getClass();
        this.f67661a = str;
        this.f67662b = str2;
        this.f67663c = immersiveArticleTitles;
        this.d = immersiveArticleTitles2;
        this.f67664e = asset;
        this.f67665f = immersiveArticleSizeCard;
        this.g = assetVideo;
        this.f67666h = liveFormat;
        this.f67667i = immersiveArticleFashionShowContent;
        this.f67668j = sectionTheme;
        this.f67669k = sectionTheme2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleFashionShowSection)) {
            return false;
        }
        ImmersiveArticleFashionShowSection immersiveArticleFashionShowSection = (ImmersiveArticleFashionShowSection) obj;
        return Intrinsics.c(this.f67661a, immersiveArticleFashionShowSection.f67661a) && Intrinsics.c(this.f67662b, immersiveArticleFashionShowSection.f67662b) && Intrinsics.c(this.f67663c, immersiveArticleFashionShowSection.f67663c) && Intrinsics.c(this.d, immersiveArticleFashionShowSection.d) && Intrinsics.c(this.f67664e, immersiveArticleFashionShowSection.f67664e) && this.f67665f == immersiveArticleFashionShowSection.f67665f && Intrinsics.c(this.g, immersiveArticleFashionShowSection.g) && this.f67666h == immersiveArticleFashionShowSection.f67666h && Intrinsics.c(this.f67667i, immersiveArticleFashionShowSection.f67667i) && Intrinsics.c(this.f67668j, immersiveArticleFashionShowSection.f67668j) && Intrinsics.c(this.f67669k, immersiveArticleFashionShowSection.f67669k);
    }

    public final int hashCode() {
        int iHashCode = (this.f67666h.hashCode() + ((this.g.hashCode() + ((this.f67665f.hashCode() + ((this.f67664e.hashCode() + ((this.d.hashCode() + ((this.f67663c.hashCode() + fc.b(this.f67661a.hashCode() * 31, 31, this.f67662b)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        ImmersiveArticleFashionShowContent immersiveArticleFashionShowContent = this.f67667i;
        int iHashCode2 = (iHashCode + (immersiveArticleFashionShowContent == null ? 0 : immersiveArticleFashionShowContent.hashCode())) * 31;
        SectionTheme sectionTheme = this.f67668j;
        int iHashCode3 = (iHashCode2 + (sectionTheme == null ? 0 : sectionTheme.hashCode())) * 31;
        SectionTheme sectionTheme2 = this.f67669k;
        return iHashCode3 + (sectionTheme2 != null ? sectionTheme2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleFashionShowSection(key=", this.f67661a, ", type=", this.f67662b, ", titlesDuringLive=");
        sbS.append(this.f67663c);
        sbS.append(", titlesDuringReplay=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f67664e);
        sbS.append(", ratio=");
        sbS.append(this.f67665f);
        sbS.append(", video=");
        sbS.append(this.g);
        sbS.append(", format=");
        sbS.append(this.f67666h);
        sbS.append(", content=");
        sbS.append(this.f67667i);
        sbS.append(", mainTheme=");
        sbS.append(this.f67668j);
        sbS.append(", ctaTheme=");
        sbS.append(this.f67669k);
        sbS.append(")");
        return sbS.toString();
    }
}
