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
public class BrowserPublicKeyCredentialRequestOptions extends BrowserRequestOptions {
    public static final Parcelable.Creator<BrowserPublicKeyCredentialRequestOptions> CREATOR = new zzo();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialRequestOptions f29443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f29444c;
    public final byte[] d;

    public BrowserPublicKeyCredentialRequestOptions(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions, Uri uri, byte[] bArr) {
        Preconditions.h(publicKeyCredentialRequestOptions);
        this.f29443b = publicKeyCredentialRequestOptions;
        Preconditions.h(uri);
        Preconditions.b(uri.getScheme() != null, "origin scheme must be non-empty");
        Preconditions.b(uri.getAuthority() != null, "origin authority must be non-empty");
        this.f29444c = uri;
        Preconditions.b(bArr == null || bArr.length == 32, "clientDataHash must be 32 bytes long");
        this.d = bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BrowserPublicKeyCredentialRequestOptions)) {
            return false;
        }
        BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions = (BrowserPublicKeyCredentialRequestOptions) obj;
        return Objects.a(this.f29443b, browserPublicKeyCredentialRequestOptions.f29443b) && Objects.a(this.f29444c, browserPublicKeyCredentialRequestOptions.f29444c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29443b, this.f29444c});
    }

    public final String toString() {
        return n00.r(Base64Utils.b(this.d), "}", fc.s("BrowserPublicKeyCredentialRequestOptions{\n publicKeyCredentialRequestOptions=", String.valueOf(this.f29443b), ", \n origin=", String.valueOf(this.f29444c), ", \n clientDataHash="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f29443b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f29444c, i2, false);
        SafeParcelWriter.b(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
