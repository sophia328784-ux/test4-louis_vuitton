package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzia;
import defpackage.cj;
import defpackage.lc0;
import defpackage.pq0;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialRequestOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialRequestOptions> CREATOR = new zzar();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f29481c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f29482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f29483f;
    public final TokenBinding g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserVerificationRequirement f29484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AuthenticationExtensions f29485i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Long f29486j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ResultReceiver f29487k;

    public PublicKeyCredentialRequestOptions(byte[] bArr, Double d, String str, List list, Integer num, TokenBinding tokenBinding, String str2, AuthenticationExtensions authenticationExtensions, Long l, String str3, ResultReceiver resultReceiver) {
        this.f29487k = resultReceiver;
        if (str3 != null) {
            zzia.a();
            throw null;
        }
        Preconditions.h(bArr);
        this.f29480b = bArr;
        this.f29481c = d;
        Preconditions.h(str);
        this.d = str;
        this.f29482e = list;
        this.f29483f = num;
        this.g = tokenBinding;
        this.f29486j = l;
        if (str2 != null) {
            try {
                this.f29484h = UserVerificationRequirement.a(str2);
            } catch (zzbc e2) {
                lc0.u(e2);
                throw null;
            }
        } else {
            this.f29484h = null;
        }
        this.f29485i = authenticationExtensions;
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialRequestOptions)) {
            return false;
        }
        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) obj;
        List list2 = publicKeyCredentialRequestOptions.f29482e;
        return Arrays.equals(this.f29480b, publicKeyCredentialRequestOptions.f29480b) && Objects.a(this.f29481c, publicKeyCredentialRequestOptions.f29481c) && Objects.a(this.d, publicKeyCredentialRequestOptions.d) && (((list = this.f29482e) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && Objects.a(this.f29483f, publicKeyCredentialRequestOptions.f29483f) && Objects.a(this.g, publicKeyCredentialRequestOptions.g) && Objects.a(this.f29484h, publicKeyCredentialRequestOptions.f29484h) && Objects.a(this.f29485i, publicKeyCredentialRequestOptions.f29485i) && Objects.a(this.f29486j, publicKeyCredentialRequestOptions.f29486j);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(this.f29480b)), this.f29481c, this.d, this.f29482e, this.f29483f, this.g, this.f29484h, this.f29485i, this.f29486j});
    }

    public final String toString() {
        String strB = Base64Utils.b(this.f29480b);
        String strValueOf = String.valueOf(this.f29482e);
        String strValueOf2 = String.valueOf(this.g);
        String strValueOf3 = String.valueOf(this.f29484h);
        String strValueOf4 = String.valueOf(this.f29485i);
        StringBuilder sbR = pq0.r("PublicKeyCredentialRequestOptions{\n challenge=", strB, ", \n timeoutSeconds=");
        sbR.append(this.f29481c);
        sbR.append(", \n rpId='");
        cj.C(sbR, this.d, "', \n allowList=", strValueOf, ", \n requestId=");
        sbR.append(this.f29483f);
        sbR.append(", \n tokenBinding=");
        sbR.append(strValueOf2);
        sbR.append(", \n userVerification=");
        cj.C(sbR, strValueOf3, ", \n authenticationExtensions=", strValueOf4, ", \n longRequestId=");
        sbR.append(this.f29486j);
        sbR.append("}");
        return sbR.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29480b, false);
        SafeParcelWriter.d(parcel, 3, this.f29481c);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.o(parcel, 5, this.f29482e, false);
        SafeParcelWriter.h(parcel, 6, this.f29483f);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        UserVerificationRequirement userVerificationRequirement = this.f29484h;
        SafeParcelWriter.k(parcel, 8, userVerificationRequirement == null ? null : userVerificationRequirement.toString(), false);
        SafeParcelWriter.j(parcel, 9, this.f29485i, i2, false);
        SafeParcelWriter.i(parcel, 10, this.f29486j);
        SafeParcelWriter.j(parcel, 12, this.f29487k, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
