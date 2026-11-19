package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new zaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28829c;
    public final Bundle d;

    public GoogleSignInOptionsExtensionParcelable(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        this(1, googleSignInOptionsExtension.b(), googleSignInOptionsExtension.a());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28828b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28829c);
        SafeParcelWriter.a(parcel, 3, this.d);
        SafeParcelWriter.r(iQ, parcel);
    }

    public GoogleSignInOptionsExtensionParcelable(int i2, int i3, Bundle bundle) {
        this.f28828b = i2;
        this.f28829c = i3;
        this.d = bundle;
    }
}
