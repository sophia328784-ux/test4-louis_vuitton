package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28686c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Account f28687e;

    public AccountChangeEventsRequest(int i2, int i3, String str, Account account) {
        this.f28685b = i2;
        this.f28686c = i3;
        this.d = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f28687e = account;
        } else {
            this.f28687e = new Account(str, "com.google");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28685b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28686c);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.j(parcel, 4, this.f28687e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public AccountChangeEventsRequest() {
        this.f28685b = 1;
    }
}
