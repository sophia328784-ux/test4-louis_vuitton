package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface IAccountAccessor extends IInterface {

    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IAccountAccessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f29189a = 0;

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
            if (i2 != 2) {
                return false;
            }
            Account accountE0 = e0();
            parcel2.writeNoException();
            int i3 = com.google.android.gms.internal.common.zzc.f29818a;
            if (accountE0 == null) {
                parcel2.writeInt(0);
                return true;
            }
            parcel2.writeInt(1);
            accountE0.writeToParcel(parcel2, 1);
            return true;
        }
    }

    Account e0();
}
