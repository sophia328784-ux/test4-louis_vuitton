package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaw> CREATOR = new zax();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Account f29238c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GoogleSignInAccount f29239e;

    public zaw(int i2, Account account, int i3, GoogleSignInAccount googleSignInAccount) {
        this.f29237b = i2;
        this.f29238c = account;
        this.d = i3;
        this.f29239e = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29237b);
        SafeParcelWriter.j(parcel, 2, this.f29238c, i2, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.j(parcel, 4, this.f29239e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zaw(Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i2, googleSignInAccount);
    }
}
