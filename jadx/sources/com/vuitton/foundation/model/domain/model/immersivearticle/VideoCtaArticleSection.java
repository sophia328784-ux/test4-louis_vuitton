package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;", "video", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;", "looks", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "contributionLink", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "mustBeScaled", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;ZLcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoCtaArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67741c;
    public final ImmersiveArticleFont d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFont f67743f;
    public final ImmersiveArticleSizeCard g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmersiveArticleVideo f67744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f67745i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContributionLink f67746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Asset f67747k;
    public boolean l;
    public final SectionTheme m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCtaArticleSection(String str, String str2, String str3, ImmersiveArticleFont immersiveArticleFont, String str4, ImmersiveArticleFont immersiveArticleFont2, ImmersiveArticleSizeCard immersiveArticleSizeCard, ImmersiveArticleVideo immersiveArticleVideo, List<ImmersiveArticleLookCard> list, ContributionLink contributionLink, Asset asset, boolean z, SectionTheme sectionTheme) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFont.getClass();
        str4.getClass();
        immersiveArticleFont2.getClass();
        immersiveArticleSizeCard.getClass();
        list.getClass();
        this.f67739a = str;
        this.f67740b = str2;
        this.f67741c = str3;
        this.d = immersiveArticleFont;
        this.f67742e = str4;
        this.f67743f = immersiveArticleFont2;
        this.g = immersiveArticleSizeCard;
        this.f67744h = immersiveArticleVideo;
        this.f67745i = list;
        this.f67746j = contributionLink;
        this.f67747k = asset;
        this.l = z;
        this.m = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoCtaArticleSection)) {
            return false;
        }
        VideoCtaArticleSection videoCtaArticleSection = (VideoCtaArticleSection) obj;
        return Intrinsics.c(this.f67739a, videoCtaArticleSection.f67739a) && Intrinsics.c(this.f67740b, videoCtaArticleSection.f67740b) && Intrinsics.c(this.f67741c, videoCtaArticleSection.f67741c) && this.d == videoCtaArticleSection.d && Intrinsics.c(this.f67742e, videoCtaArticleSection.f67742e) && this.f67743f == videoCtaArticleSection.f67743f && this.g == videoCtaArticleSection.g && Intrinsics.c(this.f67744h, videoCtaArticleSection.f67744h) && Intrinsics.c(this.f67745i, videoCtaArticleSection.f67745i) && Intrinsics.c(this.f67746j, videoCtaArticleSection.f67746j) && Intrinsics.c(this.f67747k, videoCtaArticleSection.f67747k) && this.l == videoCtaArticleSection.l && Intrinsics.c(this.m, videoCtaArticleSection.m);
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f67743f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f67739a.hashCode() * 31, 31, this.f67740b), 31, this.f67741c)) * 31, 31, this.f67742e)) * 31)) * 31;
        ImmersiveArticleVideo immersiveArticleVideo = this.f67744h;
        int iA = n00.a((iHashCode + (immersiveArticleVideo == null ? 0 : immersiveArticleVideo.hashCode())) * 31, 31, this.f67745i);
        ContributionLink contributionLink = this.f67746j;
        int iHashCode2 = (iA + (contributionLink == null ? 0 : contributionLink.hashCode())) * 31;
        Asset asset = this.f67747k;
        int iB = o60.b((iHashCode2 + (asset == null ? 0 : asset.hashCode())) * 31, 31, this.l);
        SectionTheme sectionTheme = this.m;
        return iB + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        boolean z = this.l;
        StringBuilder sbS = fc.s("VideoCtaArticleSection(key=", this.f67739a, ", type=", this.f67740b, ", title=");
        sbS.append(this.f67741c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f67742e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f67743f);
        sbS.append(", ratio=");
        sbS.append(this.g);
        sbS.append(", video=");
        sbS.append(this.f67744h);
        sbS.append(", looks=");
        sbS.append(this.f67745i);
        sbS.append(", contributionLink=");
        sbS.append(this.f67746j);
        sbS.append(", asset=");
        sbS.append(this.f67747k);
        sbS.append(", mustBeScaled=");
        sbS.append(z);
        sbS.append(", mainTheme=");
        sbS.append(this.m);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ VideoCtaArticleSection(String str, String str2, String str3, ImmersiveArticleFont immersiveArticleFont, String str4, ImmersiveArticleFont immersiveArticleFont2, ImmersiveArticleSizeCard immersiveArticleSizeCard, ImmersiveArticleVideo immersiveArticleVideo, List list, ContributionLink contributionLink, Asset asset, boolean z, SectionTheme sectionTheme, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, immersiveArticleFont, str4, immersiveArticleFont2, immersiveArticleSizeCard, immersiveArticleVideo, list, contributionLink, asset, (i2 & 2048) != 0 ? false : z, sectionTheme);
    }
}
