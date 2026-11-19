package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class SignInPassword extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInPassword> CREATOR = new zbw();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28794c;

    public SignInPassword(String str, String str2) {
        Preconditions.i(str, "Account identifier cannot be null");
        String strTrim = str.trim();
        Preconditions.f(strTrim, "Account identifier cannot be empty");
        this.f28793b = strTrim;
        Preconditions.e(str2);
        this.f28794c = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return Objects.a(this.f28793b, signInPassword.f28793b) && Objects.a(this.f28794c, signInPassword.f28794c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28793b, this.f28794c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28793b, false);
        SafeParcelWriter.k(parcel, 2, this.f28794c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
