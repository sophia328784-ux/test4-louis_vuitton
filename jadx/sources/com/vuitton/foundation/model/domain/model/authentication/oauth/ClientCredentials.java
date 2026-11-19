package com.vuitton.foundation.model.domain.model.authentication.oauth;

import defpackage.fc;
import defpackage.n00;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;", "", "", "clientId", "redirectUri", "codeChallenge", "Ljava/util/UUID;", "state", "clientCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ClientCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66624c;
    public final UUID d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66625e;

    public ClientCredentials(String str, String str2, String str3, UUID uuid, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        uuid.getClass();
        str4.getClass();
        this.f66622a = str;
        this.f66623b = str2;
        this.f66624c = str3;
        this.d = uuid;
        this.f66625e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientCredentials)) {
            return false;
        }
        ClientCredentials clientCredentials = (ClientCredentials) obj;
        return Intrinsics.c(this.f66622a, clientCredentials.f66622a) && Intrinsics.c(this.f66623b, clientCredentials.f66623b) && Intrinsics.c(this.f66624c, clientCredentials.f66624c) && Intrinsics.c(this.d, clientCredentials.d) && Intrinsics.c(this.f66625e, clientCredentials.f66625e);
    }

    public final int hashCode() {
        return this.f66625e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f66622a.hashCode() * 31, 31, this.f66623b), 31, this.f66624c)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ClientCredentials(clientId=", this.f66622a, ", redirectUri=", this.f66623b, ", codeChallenge=");
        sbS.append(this.f66624c);
        sbS.append(", state=");
        sbS.append(this.d);
        sbS.append(", clientCode=");
        return n00.r(this.f66625e, ")", sbS);
    }
}
