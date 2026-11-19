package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.d21;
import defpackage.lc0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialParameters extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialParameters> CREATOR = new zzaq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialType f29478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final COSEAlgorithmIdentifier f29479c;

    public PublicKeyCredentialParameters(String str, int i2) {
        Preconditions.h(str);
        try {
            this.f29478b = PublicKeyCredentialType.a(str);
            try {
                this.f29479c = COSEAlgorithmIdentifier.a(i2);
            } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e2) {
                lc0.u(e2);
                throw null;
            }
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e3) {
            lc0.u(e3);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialParameters)) {
            return false;
        }
        PublicKeyCredentialParameters publicKeyCredentialParameters = (PublicKeyCredentialParameters) obj;
        return this.f29478b.equals(publicKeyCredentialParameters.f29478b) && this.f29479c.equals(publicKeyCredentialParameters.f29479c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29478b, this.f29479c});
    }

    public final String toString() {
        return d21.l("PublicKeyCredentialParameters{\n type=", String.valueOf(this.f29478b), ", \n algorithm=", String.valueOf(this.f29479c), "\n }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29478b.toString(), false);
        SafeParcelWriter.h(parcel, 3, Integer.valueOf(this.f29479c.f29445b.a()));
        SafeParcelWriter.r(iQ, parcel);
    }
}
