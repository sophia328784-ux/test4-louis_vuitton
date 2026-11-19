package com.vuitton.foundation.model.domain.model.authentication.oauth;

import defpackage.n00;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;", "", "", "codeChallenge", "Ljava/util/UUID;", "state", "cid", "<init>", "(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LoginRegistrationCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UUID f66630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66631c;

    public LoginRegistrationCredentials(String str, UUID uuid, String str2) {
        str.getClass();
        uuid.getClass();
        this.f66629a = str;
        this.f66630b = uuid;
        this.f66631c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoginRegistrationCredentials)) {
            return false;
        }
        LoginRegistrationCredentials loginRegistrationCredentials = (LoginRegistrationCredentials) obj;
        return Intrinsics.c(this.f66629a, loginRegistrationCredentials.f66629a) && Intrinsics.c(this.f66630b, loginRegistrationCredentials.f66630b) && Intrinsics.c(this.f66631c, loginRegistrationCredentials.f66631c);
    }

    public final int hashCode() {
        int iHashCode = (this.f66630b.hashCode() + (this.f66629a.hashCode() * 31)) * 31;
        String str = this.f66631c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LoginRegistrationCredentials(codeChallenge=");
        sb.append(this.f66629a);
        sb.append(", state=");
        sb.append(this.f66630b);
        sb.append(", cid=");
        return n00.r(this.f66631c, ")", sb);
    }

    public /* synthetic */ LoginRegistrationCredentials(String str, UUID uuid, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, uuid, (i2 & 4) != 0 ? null : str2);
    }
}
