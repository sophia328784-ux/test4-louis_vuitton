package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0018\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "", "Lkotlin/Pair;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "ctas", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CtaListArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67625c;
    public final SectionTheme d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionTheme f67626e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CtaListArticleSection(String str, String str2, List<? extends Pair<String, ? extends ContributionLink>> list, SectionTheme sectionTheme, SectionTheme sectionTheme2) {
        super(null);
        pq0.B(str, str2, list);
        this.f67623a = str;
        this.f67624b = str2;
        this.f67625c = list;
        this.d = sectionTheme;
        this.f67626e = sectionTheme2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CtaListArticleSection)) {
            return false;
        }
        CtaListArticleSection ctaListArticleSection = (CtaListArticleSection) obj;
        return Intrinsics.c(this.f67623a, ctaListArticleSection.f67623a) && Intrinsics.c(this.f67624b, ctaListArticleSection.f67624b) && Intrinsics.c(this.f67625c, ctaListArticleSection.f67625c) && Intrinsics.c(this.d, ctaListArticleSection.d) && Intrinsics.c(this.f67626e, ctaListArticleSection.f67626e);
    }

    public final int hashCode() {
        int iA = n00.a(fc.b(this.f67623a.hashCode() * 31, 31, this.f67624b), 31, this.f67625c);
        SectionTheme sectionTheme = this.d;
        int iHashCode = (iA + (sectionTheme == null ? 0 : sectionTheme.hashCode())) * 31;
        SectionTheme sectionTheme2 = this.f67626e;
        return iHashCode + (sectionTheme2 != null ? sectionTheme2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CtaListArticleSection(key=", this.f67623a, ", type=", this.f67624b, ", ctas=");
        sbS.append(this.f67625c);
        sbS.append(", mainTheme=");
        sbS.append(this.d);
        sbS.append(", ctaTheme=");
        sbS.append(this.f67626e);
        sbS.append(")");
        return sbS.toString();
    }
}
