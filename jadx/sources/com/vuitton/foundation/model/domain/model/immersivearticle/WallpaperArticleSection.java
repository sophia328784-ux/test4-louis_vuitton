package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "ctaText", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "", "wallpapers", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WallpaperArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67750c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Asset f67751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67752f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SectionTheme f67753h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WallpaperArticleSection(String str, String str2, String str3, String str4, Asset asset, ImmersiveArticleSizeCard immersiveArticleSizeCard, List<String> list, SectionTheme sectionTheme) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        this.f67748a = str;
        this.f67749b = str2;
        this.f67750c = str3;
        this.d = str4;
        this.f67751e = asset;
        this.f67752f = immersiveArticleSizeCard;
        this.g = list;
        this.f67753h = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WallpaperArticleSection)) {
            return false;
        }
        WallpaperArticleSection wallpaperArticleSection = (WallpaperArticleSection) obj;
        return Intrinsics.c(this.f67748a, wallpaperArticleSection.f67748a) && Intrinsics.c(this.f67749b, wallpaperArticleSection.f67749b) && Intrinsics.c(this.f67750c, wallpaperArticleSection.f67750c) && Intrinsics.c(this.d, wallpaperArticleSection.d) && Intrinsics.c(this.f67751e, wallpaperArticleSection.f67751e) && this.f67752f == wallpaperArticleSection.f67752f && Intrinsics.c(this.g, wallpaperArticleSection.g) && Intrinsics.c(this.f67753h, wallpaperArticleSection.f67753h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f67748a.hashCode() * 31, 31, this.f67749b), 31, this.f67750c), 31, this.d);
        Asset asset = this.f67751e;
        int iHashCode = (iB + (asset == null ? 0 : asset.hashCode())) * 31;
        ImmersiveArticleSizeCard immersiveArticleSizeCard = this.f67752f;
        int iA = n00.a((iHashCode + (immersiveArticleSizeCard == null ? 0 : immersiveArticleSizeCard.hashCode())) * 31, 31, this.g);
        SectionTheme sectionTheme = this.f67753h;
        return iA + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("WallpaperArticleSection(key=", this.f67748a, ", type=", this.f67749b, ", title=");
        cj.C(sbS, this.f67750c, ", ctaText=", this.d, ", asset=");
        sbS.append(this.f67751e);
        sbS.append(", ratio=");
        sbS.append(this.f67752f);
        sbS.append(", wallpapers=");
        sbS.append(this.g);
        sbS.append(", mainTheme=");
        sbS.append(this.f67753h);
        sbS.append(")");
        return sbS.toString();
    }
}
