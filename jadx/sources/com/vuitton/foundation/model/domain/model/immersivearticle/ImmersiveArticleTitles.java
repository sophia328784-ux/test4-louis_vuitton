package com.vuitton.foundation.model.domain.model.immersivearticle;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;", "", "", "title", "surtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleTitles {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67702b;

    public ImmersiveArticleTitles(String str, String str2) {
        str.getClass();
        this.f67701a = str;
        this.f67702b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleTitles)) {
            return false;
        }
        ImmersiveArticleTitles immersiveArticleTitles = (ImmersiveArticleTitles) obj;
        return Intrinsics.c(this.f67701a, immersiveArticleTitles.f67701a) && Intrinsics.c(this.f67702b, immersiveArticleTitles.f67702b);
    }

    public final int hashCode() {
        int iHashCode = this.f67701a.hashCode() * 31;
        String str = this.f67702b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("ImmersiveArticleTitles(title=", this.f67701a, ", surtitle=", this.f67702b, ")");
    }
}
