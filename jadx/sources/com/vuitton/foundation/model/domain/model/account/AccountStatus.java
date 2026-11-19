package com.vuitton.foundation.model.domain.model.account;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;", "", "Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;", "status", "", "cid", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccountStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountStatusValue f66230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66231b;

    public AccountStatus(AccountStatusValue accountStatusValue, String str) {
        accountStatusValue.getClass();
        this.f66230a = accountStatusValue;
        this.f66231b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountStatus)) {
            return false;
        }
        AccountStatus accountStatus = (AccountStatus) obj;
        return this.f66230a == accountStatus.f66230a && Intrinsics.c(this.f66231b, accountStatus.f66231b);
    }

    public final int hashCode() {
        int iHashCode = this.f66230a.hashCode() * 31;
        String str = this.f66231b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "AccountStatus(status=" + this.f66230a + ", cid=" + this.f66231b + ")";
    }

    public /* synthetic */ AccountStatus(AccountStatusValue accountStatusValue, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(accountStatusValue, (i2 & 2) != 0 ? null : str);
    }
}
