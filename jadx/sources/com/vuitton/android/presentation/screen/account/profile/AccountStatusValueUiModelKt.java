package com.vuitton.android.presentation.screen.account.profile;

import com.vuitton.foundation.model.domain.model.account.AccountStatus;
import com.vuitton.foundation.model.domain.model.account.AccountStatusValue;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountStatusValueUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52672a;

        static {
            int[] iArr = new int[AccountStatusValue.values().length];
            try {
                iArr[AccountStatusValue.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccountStatusValue.UNACTIVATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccountStatusValue.ACTIVATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f52672a = iArr;
        }
    }

    public static final AccountStatusUiModel a(AccountStatus accountStatus) {
        AccountStatusValueUiModel accountStatusValueUiModel;
        accountStatus.getClass();
        int i2 = WhenMappings.f52672a[accountStatus.f66230a.ordinal()];
        if (i2 == 1) {
            accountStatusValueUiModel = AccountStatusValueUiModel.UNKNOWN;
        } else if (i2 == 2) {
            accountStatusValueUiModel = AccountStatusValueUiModel.UNACTIVATED;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            accountStatusValueUiModel = AccountStatusValueUiModel.ACTIVATED;
        }
        return new AccountStatusUiModel(accountStatusValueUiModel, accountStatus.f66231b);
    }
}
