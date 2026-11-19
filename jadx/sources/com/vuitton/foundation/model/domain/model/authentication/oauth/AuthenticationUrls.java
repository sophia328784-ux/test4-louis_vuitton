package com.vuitton.foundation.model.domain.model.authentication.oauth;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;", "", "", "pageUrl", "redirectUrl", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;", "clientCredentials", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AuthenticationUrls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClientCredentials f66618c;

    public AuthenticationUrls(String str, String str2, ClientCredentials clientCredentials) {
        str.getClass();
        str2.getClass();
        clientCredentials.getClass();
        this.f66616a = str;
        this.f66617b = str2;
        this.f66618c = clientCredentials;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationUrls)) {
            return false;
        }
        AuthenticationUrls authenticationUrls = (AuthenticationUrls) obj;
        return Intrinsics.c(this.f66616a, authenticationUrls.f66616a) && Intrinsics.c(this.f66617b, authenticationUrls.f66617b) && Intrinsics.c(this.f66618c, authenticationUrls.f66618c);
    }

    public final int hashCode() {
        return this.f66618c.hashCode() + fc.b(this.f66616a.hashCode() * 31, 31, this.f66617b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AuthenticationUrls(pageUrl=", this.f66616a, ", redirectUrl=", this.f66617b, ", clientCredentials=");
        sbS.append(this.f66618c);
        sbS.append(")");
        return sbS.toString();
    }
}
