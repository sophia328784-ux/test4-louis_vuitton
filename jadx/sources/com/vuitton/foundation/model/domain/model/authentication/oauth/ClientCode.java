package com.vuitton.foundation.model.domain.model.authentication.oauth;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.fc;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;", "", "", m.v, "codeVerifier", "Ljava/util/UUID;", "state", "guestSlasAccessToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ClientCode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UUID f66621c;
    public final String d;

    public ClientCode(String str, String str2, UUID uuid, String str3) {
        str.getClass();
        str2.getClass();
        uuid.getClass();
        this.f66619a = str;
        this.f66620b = str2;
        this.f66621c = uuid;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientCode)) {
            return false;
        }
        ClientCode clientCode = (ClientCode) obj;
        return Intrinsics.c(this.f66619a, clientCode.f66619a) && Intrinsics.c(this.f66620b, clientCode.f66620b) && Intrinsics.c(this.f66621c, clientCode.f66621c) && Intrinsics.c(this.d, clientCode.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f66621c.hashCode() + fc.b(this.f66619a.hashCode() * 31, 31, this.f66620b)) * 31;
        String str = this.d;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ClientCode(code=", this.f66619a, ", codeVerifier=", this.f66620b, ", state=");
        sbS.append(this.f66621c);
        sbS.append(", guestSlasAccessToken=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
