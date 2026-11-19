package com.google.android.gms.fido.fido2.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import defpackage.fc;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class BrowserPublicKeyCredentialCreationOptions extends BrowserRequestOptions {
    public static final Parcelable.Creator<BrowserPublicKeyCredentialCreationOptions> CREATOR = new zzn();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialCreationOptions f29441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f29442c;
    public final byte[] d;

    public BrowserPublicKeyCredentialCreationOptions(PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions, Uri uri, byte[] bArr) {
        Preconditions.h(publicKeyCredentialCreationOptions);
        this.f29441b = publicKeyCredentialCreationOptions;
        Preconditions.h(uri);
        Preconditions.b(uri.getScheme() != null, "origin scheme must be non-empty");
        Preconditions.b(uri.getAuthority() != null, "origin authority must be non-empty");
        this.f29442c = uri;
        Preconditions.b(bArr == null || bArr.length == 32, "clientDataHash must be 32 bytes long");
        this.d = bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BrowserPublicKeyCredentialCreationOptions)) {
            return false;
        }
        BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions = (BrowserPublicKeyCredentialCreationOptions) obj;
        return Objects.a(this.f29441b, browserPublicKeyCredentialCreationOptions.f29441b) && Objects.a(this.f29442c, browserPublicKeyCredentialCreationOptions.f29442c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29441b, this.f29442c});
    }

    public final String toString() {
        return n00.r(Base64Utils.b(this.d), "}", fc.s("BrowserPublicKeyCredentialCreationOptions{\n publicKeyCredentialCreationOptions=", String.valueOf(this.f29441b), ", \n origin=", String.valueOf(this.f29442c), ", \n clientDataHash="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f29441b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f29442c, i2, false);
        SafeParcelWriter.b(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
