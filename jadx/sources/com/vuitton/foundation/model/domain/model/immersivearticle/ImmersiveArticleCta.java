package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;", "", "", "title", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "contributionLink", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "theme", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleCta {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLink f67639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SectionTheme f67640c;

    public ImmersiveArticleCta(String str, ContributionLink contributionLink, SectionTheme sectionTheme) {
        contributionLink.getClass();
        this.f67638a = str;
        this.f67639b = contributionLink;
        this.f67640c = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleCta)) {
            return false;
        }
        ImmersiveArticleCta immersiveArticleCta = (ImmersiveArticleCta) obj;
        return Intrinsics.c(this.f67638a, immersiveArticleCta.f67638a) && Intrinsics.c(this.f67639b, immersiveArticleCta.f67639b) && Intrinsics.c(this.f67640c, immersiveArticleCta.f67640c);
    }

    public final int hashCode() {
        String str = this.f67638a;
        int iHashCode = (this.f67639b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31;
        SectionTheme sectionTheme = this.f67640c;
        return iHashCode + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleCta(title=" + this.f67638a + ", contributionLink=" + this.f67639b + ", theme=" + this.f67640c + ")";
    }
}
