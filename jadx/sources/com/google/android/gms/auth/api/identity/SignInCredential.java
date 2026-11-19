package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new zbu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28787c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f28789f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f28790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f28791i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PublicKeyCredential f28792j;

    public SignInCredential(String str, String str2, String str3, String str4, Uri uri, String str5, String str6, String str7, PublicKeyCredential publicKeyCredential) {
        Preconditions.h(str);
        this.f28786b = str;
        this.f28787c = str2;
        this.d = str3;
        this.f28788e = str4;
        this.f28789f = uri;
        this.g = str5;
        this.f28790h = str6;
        this.f28791i = str7;
        this.f28792j = publicKeyCredential;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return Objects.a(this.f28786b, signInCredential.f28786b) && Objects.a(this.f28787c, signInCredential.f28787c) && Objects.a(this.d, signInCredential.d) && Objects.a(this.f28788e, signInCredential.f28788e) && Objects.a(this.f28789f, signInCredential.f28789f) && Objects.a(this.g, signInCredential.g) && Objects.a(this.f28790h, signInCredential.f28790h) && Objects.a(this.f28791i, signInCredential.f28791i) && Objects.a(this.f28792j, signInCredential.f28792j);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28786b, this.f28787c, this.d, this.f28788e, this.f28789f, this.g, this.f28790h, this.f28791i, this.f28792j});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28786b, false);
        SafeParcelWriter.k(parcel, 2, this.f28787c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f28788e, false);
        SafeParcelWriter.j(parcel, 5, this.f28789f, i2, false);
        SafeParcelWriter.k(parcel, 6, this.g, false);
        SafeParcelWriter.k(parcel, 7, this.f28790h, false);
        SafeParcelWriter.k(parcel, 8, this.f28791i, false);
        SafeParcelWriter.j(parcel, 9, this.f28792j, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
