package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;", "assets", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67621c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionTheme f67622e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarouselArticleSection(String str, String str2, ImmersiveArticleSizeCard immersiveArticleSizeCard, List<ImmersiveArticleAsset> list, SectionTheme sectionTheme) {
        super(null);
        pq0.B(str, str2, list);
        this.f67619a = str;
        this.f67620b = str2;
        this.f67621c = immersiveArticleSizeCard;
        this.d = list;
        this.f67622e = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselArticleSection)) {
            return false;
        }
        CarouselArticleSection carouselArticleSection = (CarouselArticleSection) obj;
        return Intrinsics.c(this.f67619a, carouselArticleSection.f67619a) && Intrinsics.c(this.f67620b, carouselArticleSection.f67620b) && this.f67621c == carouselArticleSection.f67621c && Intrinsics.c(this.d, carouselArticleSection.d) && Intrinsics.c(this.f67622e, carouselArticleSection.f67622e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67619a.hashCode() * 31, 31, this.f67620b);
        ImmersiveArticleSizeCard immersiveArticleSizeCard = this.f67621c;
        int iA = n00.a((iB + (immersiveArticleSizeCard == null ? 0 : immersiveArticleSizeCard.hashCode())) * 31, 31, this.d);
        SectionTheme sectionTheme = this.f67622e;
        return iA + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CarouselArticleSection(key=", this.f67619a, ", type=", this.f67620b, ", ratio=");
        sbS.append(this.f67621c);
        sbS.append(", assets=");
        sbS.append(this.d);
        sbS.append(", mainTheme=");
        sbS.append(this.f67622e);
        sbS.append(")");
        return sbS.toString();
    }
}
