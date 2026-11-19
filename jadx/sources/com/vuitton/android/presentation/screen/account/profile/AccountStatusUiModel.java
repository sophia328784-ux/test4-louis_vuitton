package com.vuitton.android.presentation.screen.account.profile;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;", "", "Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;", "status", "", "cid", "<init>", "(Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccountStatusUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountStatusValueUiModel f52670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52671b;

    public AccountStatusUiModel(AccountStatusValueUiModel accountStatusValueUiModel, String str) {
        accountStatusValueUiModel.getClass();
        this.f52670a = accountStatusValueUiModel;
        this.f52671b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountStatusUiModel)) {
            return false;
        }
        AccountStatusUiModel accountStatusUiModel = (AccountStatusUiModel) obj;
        return this.f52670a == accountStatusUiModel.f52670a && Intrinsics.c(this.f52671b, accountStatusUiModel.f52671b);
    }

    public final int hashCode() {
        int iHashCode = this.f52670a.hashCode() * 31;
        String str = this.f52671b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "AccountStatusUiModel(status=" + this.f52670a + ", cid=" + this.f52671b + ")";
    }
}
