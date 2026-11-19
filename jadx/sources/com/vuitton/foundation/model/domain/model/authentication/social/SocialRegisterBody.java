package com.vuitton.foundation.model.domain.model.authentication.social;

import com.vuitton.foundation.model.domain.model.authentication.RegisterConsents;
import com.vuitton.foundation.model.domain.model.authentication.UserInformation;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;", "", "Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;", "userInformation", "", "identityToken", "rawNonce", "Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;", "consents", "<init>", "(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialRegisterBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInformation f66661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66663c;
    public final RegisterConsents d;

    public SocialRegisterBody(UserInformation userInformation, String str, String str2, RegisterConsents registerConsents) {
        userInformation.getClass();
        str.getClass();
        str2.getClass();
        registerConsents.getClass();
        this.f66661a = userInformation;
        this.f66662b = str;
        this.f66663c = str2;
        this.d = registerConsents;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialRegisterBody)) {
            return false;
        }
        SocialRegisterBody socialRegisterBody = (SocialRegisterBody) obj;
        return Intrinsics.c(this.f66661a, socialRegisterBody.f66661a) && Intrinsics.c(this.f66662b, socialRegisterBody.f66662b) && Intrinsics.c(this.f66663c, socialRegisterBody.f66663c) && Intrinsics.c(this.d, socialRegisterBody.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f66661a.hashCode() * 31, 31, this.f66662b), 31, this.f66663c);
    }

    public final String toString() {
        return "SocialRegisterBody(userInformation=" + this.f66661a + ", identityToken=" + this.f66662b + ", rawNonce=" + this.f66663c + ", consents=" + this.d + ")";
    }
}
