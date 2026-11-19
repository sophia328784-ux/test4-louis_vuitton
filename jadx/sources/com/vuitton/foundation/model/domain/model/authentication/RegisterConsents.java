package com.vuitton.foundation.model.domain.model.authentication;

import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;", "", "", "privacyPolicy", "Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;", "userConsents", "<init>", "(ZLcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RegisterConsents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f66601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserConsents f66602b;

    public /* synthetic */ RegisterConsents(boolean z, UserConsents userConsents, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? null : userConsents);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterConsents)) {
            return false;
        }
        RegisterConsents registerConsents = (RegisterConsents) obj;
        return this.f66601a == registerConsents.f66601a && Intrinsics.c(this.f66602b, registerConsents.f66602b);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f66601a) * 31;
        UserConsents userConsents = this.f66602b;
        return iHashCode + (userConsents == null ? 0 : userConsents.hashCode());
    }

    public final String toString() {
        return "RegisterConsents(privacyPolicy=" + this.f66601a + ", userConsents=" + this.f66602b + ")";
    }

    public RegisterConsents(boolean z, UserConsents userConsents) {
        this.f66601a = z;
        this.f66602b = userConsents;
    }
}
