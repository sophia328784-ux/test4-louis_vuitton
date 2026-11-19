package com.vuitton.foundation.model.domain.model.immersivearticle;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "theme", "", "title", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;", "cta", "<init>", "(Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleBanner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionTheme f67635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleCta f67637c;

    public ImmersiveArticleBanner(SectionTheme sectionTheme, String str, ImmersiveArticleCta immersiveArticleCta) {
        sectionTheme.getClass();
        str.getClass();
        this.f67635a = sectionTheme;
        this.f67636b = str;
        this.f67637c = immersiveArticleCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleBanner)) {
            return false;
        }
        ImmersiveArticleBanner immersiveArticleBanner = (ImmersiveArticleBanner) obj;
        return Intrinsics.c(this.f67635a, immersiveArticleBanner.f67635a) && Intrinsics.c(this.f67636b, immersiveArticleBanner.f67636b) && Intrinsics.c(this.f67637c, immersiveArticleBanner.f67637c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67635a.hashCode() * 31, 31, this.f67636b);
        ImmersiveArticleCta immersiveArticleCta = this.f67637c;
        return iB + (immersiveArticleCta == null ? 0 : immersiveArticleCta.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleBanner(theme=" + this.f67635a + ", title=" + this.f67636b + ", cta=" + this.f67637c + ")";
    }
}
