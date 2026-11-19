package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;", "", "", "description", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;", "cta", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleDisclaimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleCta f67642b;

    public ImmersiveArticleDisclaimer(String str, ImmersiveArticleCta immersiveArticleCta) {
        str.getClass();
        this.f67641a = str;
        this.f67642b = immersiveArticleCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleDisclaimer)) {
            return false;
        }
        ImmersiveArticleDisclaimer immersiveArticleDisclaimer = (ImmersiveArticleDisclaimer) obj;
        return Intrinsics.c(this.f67641a, immersiveArticleDisclaimer.f67641a) && Intrinsics.c(this.f67642b, immersiveArticleDisclaimer.f67642b);
    }

    public final int hashCode() {
        int iHashCode = this.f67641a.hashCode() * 31;
        ImmersiveArticleCta immersiveArticleCta = this.f67642b;
        return iHashCode + (immersiveArticleCta == null ? 0 : immersiveArticleCta.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleDisclaimer(description=" + this.f67641a + ", cta=" + this.f67642b + ")";
    }
}
