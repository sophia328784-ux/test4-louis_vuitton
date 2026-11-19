package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;", "titlesDuringCountdown", "titlesAfterCountdown", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;", "content", "deadline", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleEventSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleTitles f67648c;
    public final ImmersiveArticleTitles d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Asset f67649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67650f;
    public final ImmersiveArticleEventContent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67651h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SectionTheme f67652i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SectionTheme f67653j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleEventSection(String str, String str2, ImmersiveArticleTitles immersiveArticleTitles, ImmersiveArticleTitles immersiveArticleTitles2, Asset asset, ImmersiveArticleSizeCard immersiveArticleSizeCard, ImmersiveArticleEventContent immersiveArticleEventContent, String str3, SectionTheme sectionTheme, SectionTheme sectionTheme2) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleTitles.getClass();
        immersiveArticleTitles2.getClass();
        asset.getClass();
        immersiveArticleSizeCard.getClass();
        str3.getClass();
        this.f67646a = str;
        this.f67647b = str2;
        this.f67648c = immersiveArticleTitles;
        this.d = immersiveArticleTitles2;
        this.f67649e = asset;
        this.f67650f = immersiveArticleSizeCard;
        this.g = immersiveArticleEventContent;
        this.f67651h = str3;
        this.f67652i = sectionTheme;
        this.f67653j = sectionTheme2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleEventSection)) {
            return false;
        }
        ImmersiveArticleEventSection immersiveArticleEventSection = (ImmersiveArticleEventSection) obj;
        return Intrinsics.c(this.f67646a, immersiveArticleEventSection.f67646a) && Intrinsics.c(this.f67647b, immersiveArticleEventSection.f67647b) && Intrinsics.c(this.f67648c, immersiveArticleEventSection.f67648c) && Intrinsics.c(this.d, immersiveArticleEventSection.d) && Intrinsics.c(this.f67649e, immersiveArticleEventSection.f67649e) && this.f67650f == immersiveArticleEventSection.f67650f && Intrinsics.c(this.g, immersiveArticleEventSection.g) && Intrinsics.c(this.f67651h, immersiveArticleEventSection.f67651h) && Intrinsics.c(this.f67652i, immersiveArticleEventSection.f67652i) && Intrinsics.c(this.f67653j, immersiveArticleEventSection.f67653j);
    }

    public final int hashCode() {
        int iHashCode = (this.f67650f.hashCode() + ((this.f67649e.hashCode() + ((this.d.hashCode() + ((this.f67648c.hashCode() + fc.b(this.f67646a.hashCode() * 31, 31, this.f67647b)) * 31)) * 31)) * 31)) * 31;
        ImmersiveArticleEventContent immersiveArticleEventContent = this.g;
        int iB = fc.b((iHashCode + (immersiveArticleEventContent == null ? 0 : immersiveArticleEventContent.hashCode())) * 31, 31, this.f67651h);
        SectionTheme sectionTheme = this.f67652i;
        int iHashCode2 = (iB + (sectionTheme == null ? 0 : sectionTheme.hashCode())) * 31;
        SectionTheme sectionTheme2 = this.f67653j;
        return iHashCode2 + (sectionTheme2 != null ? sectionTheme2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleEventSection(key=", this.f67646a, ", type=", this.f67647b, ", titlesDuringCountdown=");
        sbS.append(this.f67648c);
        sbS.append(", titlesAfterCountdown=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f67649e);
        sbS.append(", ratio=");
        sbS.append(this.f67650f);
        sbS.append(", content=");
        sbS.append(this.g);
        sbS.append(", deadline=");
        sbS.append(this.f67651h);
        sbS.append(", mainTheme=");
        sbS.append(this.f67652i);
        sbS.append(", ctaTheme=");
        sbS.append(this.f67653j);
        sbS.append(")");
        return sbS.toString();
    }
}
