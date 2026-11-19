package com.vuitton.foundation.model.domain.model.authentication.oauth;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterValidateBody;", "", "", "registrationIdentifier", "verificationCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RegisterValidateBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66644b;

    public RegisterValidateBody(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66643a = str;
        this.f66644b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterValidateBody)) {
            return false;
        }
        RegisterValidateBody registerValidateBody = (RegisterValidateBody) obj;
        return Intrinsics.c(this.f66643a, registerValidateBody.f66643a) && Intrinsics.c(this.f66644b, registerValidateBody.f66644b);
    }

    public final int hashCode() {
        return this.f66644b.hashCode() + (this.f66643a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("RegisterValidateBody(registrationIdentifier=", this.f66643a, ", verificationCode=", this.f66644b, ")");
    }
}
