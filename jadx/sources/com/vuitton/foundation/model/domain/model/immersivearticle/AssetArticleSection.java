package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "mustBeScaled", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/Asset;ZLcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67613c;
    public final ImmersiveArticleFont d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFont f67615f;
    public final ImmersiveArticleSizeCard g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Asset f67616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f67617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SectionTheme f67618j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssetArticleSection(String str, String str2, String str3, ImmersiveArticleFont immersiveArticleFont, String str4, ImmersiveArticleFont immersiveArticleFont2, ImmersiveArticleSizeCard immersiveArticleSizeCard, Asset asset, boolean z, SectionTheme sectionTheme) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFont.getClass();
        str4.getClass();
        immersiveArticleFont2.getClass();
        immersiveArticleSizeCard.getClass();
        this.f67611a = str;
        this.f67612b = str2;
        this.f67613c = str3;
        this.d = immersiveArticleFont;
        this.f67614e = str4;
        this.f67615f = immersiveArticleFont2;
        this.g = immersiveArticleSizeCard;
        this.f67616h = asset;
        this.f67617i = z;
        this.f67618j = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetArticleSection)) {
            return false;
        }
        AssetArticleSection assetArticleSection = (AssetArticleSection) obj;
        return Intrinsics.c(this.f67611a, assetArticleSection.f67611a) && Intrinsics.c(this.f67612b, assetArticleSection.f67612b) && Intrinsics.c(this.f67613c, assetArticleSection.f67613c) && this.d == assetArticleSection.d && Intrinsics.c(this.f67614e, assetArticleSection.f67614e) && this.f67615f == assetArticleSection.f67615f && this.g == assetArticleSection.g && Intrinsics.c(this.f67616h, assetArticleSection.f67616h) && this.f67617i == assetArticleSection.f67617i && Intrinsics.c(this.f67618j, assetArticleSection.f67618j);
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f67615f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f67611a.hashCode() * 31, 31, this.f67612b), 31, this.f67613c)) * 31, 31, this.f67614e)) * 31)) * 31;
        Asset asset = this.f67616h;
        int iB = o60.b((iHashCode + (asset == null ? 0 : asset.hashCode())) * 31, 31, this.f67617i);
        SectionTheme sectionTheme = this.f67618j;
        return iB + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetArticleSection(key=", this.f67611a, ", type=", this.f67612b, ", title=");
        sbS.append(this.f67613c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f67614e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f67615f);
        sbS.append(", ratio=");
        sbS.append(this.g);
        sbS.append(", asset=");
        sbS.append(this.f67616h);
        sbS.append(", mustBeScaled=");
        sbS.append(this.f67617i);
        sbS.append(", mainTheme=");
        sbS.append(this.f67618j);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ AssetArticleSection(String str, String str2, String str3, ImmersiveArticleFont immersiveArticleFont, String str4, ImmersiveArticleFont immersiveArticleFont2, ImmersiveArticleSizeCard immersiveArticleSizeCard, Asset asset, boolean z, SectionTheme sectionTheme, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, immersiveArticleFont, str4, immersiveArticleFont2, immersiveArticleSizeCard, asset, (i2 & 256) != 0 ? false : z, sectionTheme);
    }
}
