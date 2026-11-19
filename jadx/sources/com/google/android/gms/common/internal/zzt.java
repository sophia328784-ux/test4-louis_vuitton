package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account e0() {
        Parcel parcelE2 = E2(2, F2());
        Account account = (Account) com.google.android.gms.internal.common.zzc.a(parcelE2, Account.CREATOR);
        parcelE2.recycle();
        return account;
    }
}
