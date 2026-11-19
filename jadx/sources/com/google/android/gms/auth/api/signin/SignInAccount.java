package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zbc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GoogleSignInAccount f28827c;
    public final String d;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f28827c = googleSignInAccount;
        Preconditions.f(str, "8.3 and 8.4 SDKs require non-null email");
        this.f28826b = str;
        Preconditions.f(str2, "8.3 and 8.4 SDKs require non-null userId");
        this.d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 4, this.f28826b, false);
        SafeParcelWriter.j(parcel, 7, this.f28827c, i2, false);
        SafeParcelWriter.k(parcel, 8, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
