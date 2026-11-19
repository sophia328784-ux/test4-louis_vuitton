package com.vuitton.foundation.model.domain.model.immersivearticle;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;", "", "", "surtitle", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleFashionShowContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67660c;

    public ImmersiveArticleFashionShowContent(String str, String str2, String str3) {
        str2.getClass();
        this.f67658a = str;
        this.f67659b = str2;
        this.f67660c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleFashionShowContent)) {
            return false;
        }
        ImmersiveArticleFashionShowContent immersiveArticleFashionShowContent = (ImmersiveArticleFashionShowContent) obj;
        return Intrinsics.c(this.f67658a, immersiveArticleFashionShowContent.f67658a) && Intrinsics.c(this.f67659b, immersiveArticleFashionShowContent.f67659b) && Intrinsics.c(this.f67660c, immersiveArticleFashionShowContent.f67660c);
    }

    public final int hashCode() {
        String str = this.f67658a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f67659b);
        String str2 = this.f67660c;
        return iB + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f67660c, ")", fc.s("ImmersiveArticleFashionShowContent(surtitle=", this.f67658a, ", title=", this.f67659b, ", description="));
    }
}
