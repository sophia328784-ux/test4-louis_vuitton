package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zbu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GoogleSignInOptions f28832c;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        Preconditions.e(str);
        this.f28831b = str;
        this.f28832c = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f28831b.equals(signInConfiguration.f28831b)) {
            GoogleSignInOptions googleSignInOptions = signInConfiguration.f28832c;
            GoogleSignInOptions googleSignInOptions2 = this.f28832c;
            if (googleSignInOptions2 == null) {
                if (googleSignInOptions == null) {
                    return true;
                }
            } else if (googleSignInOptions2.equals(googleSignInOptions)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.a(this.f28831b);
        hashAccumulator.a(this.f28832c);
        return hashAccumulator.f28830a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f28831b, false);
        SafeParcelWriter.j(parcel, 5, this.f28832c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
