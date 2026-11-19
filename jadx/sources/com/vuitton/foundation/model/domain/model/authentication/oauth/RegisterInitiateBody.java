package com.vuitton.foundation.model.domain.model.authentication.oauth;

import com.vuitton.foundation.model.domain.model.authentication.LoginParam;
import com.vuitton.foundation.model.domain.model.authentication.RegisterConsents;
import com.vuitton.foundation.model.domain.model.authentication.RegistrationAddress;
import com.vuitton.foundation.model.domain.model.authentication.UserInformation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;", "", "Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;", "userInformation", "Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;", "address", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;", "credentials", "Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;", "consents", "<init>", "(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RegisterInitiateBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInformation f66640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RegistrationAddress f66641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LoginParam f66642c;
    public final RegisterConsents d;

    public RegisterInitiateBody(UserInformation userInformation, RegistrationAddress registrationAddress, LoginParam loginParam, RegisterConsents registerConsents) {
        userInformation.getClass();
        loginParam.getClass();
        registerConsents.getClass();
        this.f66640a = userInformation;
        this.f66641b = registrationAddress;
        this.f66642c = loginParam;
        this.d = registerConsents;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterInitiateBody)) {
            return false;
        }
        RegisterInitiateBody registerInitiateBody = (RegisterInitiateBody) obj;
        return Intrinsics.c(this.f66640a, registerInitiateBody.f66640a) && Intrinsics.c(this.f66641b, registerInitiateBody.f66641b) && Intrinsics.c(this.f66642c, registerInitiateBody.f66642c) && Intrinsics.c(this.d, registerInitiateBody.d);
    }

    public final int hashCode() {
        int iHashCode = this.f66640a.hashCode() * 31;
        RegistrationAddress registrationAddress = this.f66641b;
        return this.d.hashCode() + ((this.f66642c.hashCode() + ((iHashCode + (registrationAddress == null ? 0 : registrationAddress.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        return "RegisterInitiateBody(userInformation=" + this.f66640a + ", address=" + this.f66641b + ", credentials=" + this.f66642c + ", consents=" + this.d + ")";
    }

    public /* synthetic */ RegisterInitiateBody(UserInformation userInformation, RegistrationAddress registrationAddress, LoginParam loginParam, RegisterConsents registerConsents, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(userInformation, (i2 & 2) != 0 ? null : registrationAddress, loginParam, registerConsents);
    }
}
