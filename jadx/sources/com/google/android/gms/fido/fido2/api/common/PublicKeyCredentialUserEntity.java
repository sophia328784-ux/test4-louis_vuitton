package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;
import defpackage.n00;
import defpackage.pq0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialUserEntity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialUserEntity> CREATOR = new zzau();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29491c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29492e;

    public PublicKeyCredentialUserEntity(zzgx zzgxVar, String str, String str2, String str3) {
        Preconditions.h(zzgxVar);
        this.f29490b = zzgxVar;
        Preconditions.h(str);
        this.f29491c = str;
        this.d = str2;
        Preconditions.h(str3);
        this.f29492e = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialUserEntity)) {
            return false;
        }
        PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = (PublicKeyCredentialUserEntity) obj;
        return Objects.a(this.f29490b, publicKeyCredentialUserEntity.f29490b) && Objects.a(this.f29491c, publicKeyCredentialUserEntity.f29491c) && Objects.a(this.d, publicKeyCredentialUserEntity.d) && Objects.a(this.f29492e, publicKeyCredentialUserEntity.f29492e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29490b, this.f29491c, this.d, this.f29492e});
    }

    public final String toString() {
        StringBuilder sbR = pq0.r("PublicKeyCredentialUserEntity{\n id=", Base64Utils.b(this.f29490b.q()), ", \n name='");
        sbR.append(this.f29491c);
        sbR.append("', \n icon='");
        sbR.append(this.d);
        sbR.append("', \n displayName='");
        return n00.r(this.f29492e, "'}", sbR);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29490b.q(), false);
        SafeParcelWriter.k(parcel, 3, this.f29491c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.k(parcel, 5, this.f29492e, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublicKeyCredentialUserEntity(byte[] bArr, String str, String str2, String str3) {
        this(zzgx.p(bArr.length, bArr), str, str2, str3);
        Preconditions.h(bArr);
    }
}
