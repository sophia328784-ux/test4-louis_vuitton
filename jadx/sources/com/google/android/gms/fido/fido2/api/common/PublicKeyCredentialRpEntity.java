package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialRpEntity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialRpEntity> CREATOR = new zzas();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29489c;
    public final String d;

    public PublicKeyCredentialRpEntity(String str, String str2, String str3) {
        Preconditions.h(str);
        this.f29488b = str;
        Preconditions.h(str2);
        this.f29489c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialRpEntity)) {
            return false;
        }
        PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) obj;
        return Objects.a(this.f29488b, publicKeyCredentialRpEntity.f29488b) && Objects.a(this.f29489c, publicKeyCredentialRpEntity.f29489c) && Objects.a(this.d, publicKeyCredentialRpEntity.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29488b, this.f29489c, this.d});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyCredentialRpEntity{\n id='");
        sb.append(this.f29488b);
        sb.append("', \n name='");
        sb.append(this.f29489c);
        sb.append("', \n icon='");
        return n00.r(this.d, "'}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29488b, false);
        SafeParcelWriter.k(parcel, 3, this.f29489c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
