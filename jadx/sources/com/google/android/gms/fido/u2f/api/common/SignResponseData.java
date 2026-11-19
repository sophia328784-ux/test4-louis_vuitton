package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class SignResponseData extends ResponseData {
    public static final Parcelable.Creator<SignResponseData> CREATOR = new zzl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29544c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f29545e;

    public SignResponseData(byte[] bArr, String str, byte[] bArr2, byte[] bArr3) {
        Preconditions.h(bArr);
        this.f29543b = bArr;
        Preconditions.h(str);
        this.f29544c = str;
        Preconditions.h(bArr2);
        this.d = bArr2;
        Preconditions.h(bArr3);
        this.f29545e = bArr3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignResponseData)) {
            return false;
        }
        SignResponseData signResponseData = (SignResponseData) obj;
        return Arrays.equals(this.f29543b, signResponseData.f29543b) && Objects.a(this.f29544c, signResponseData.f29544c) && Arrays.equals(this.d, signResponseData.d) && Arrays.equals(this.f29545e, signResponseData.f29545e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(this.f29543b)), this.f29544c, Integer.valueOf(Arrays.hashCode(this.d)), Integer.valueOf(Arrays.hashCode(this.f29545e))});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzgf zzgfVar = zzgf.f29892a;
        byte[] bArr = this.f29543b;
        zzbiVarA.b(zzgfVar.b(bArr.length, bArr), "keyHandle");
        zzbiVarA.b(this.f29544c, "clientDataString");
        byte[] bArr2 = this.d;
        zzbiVarA.b(zzgfVar.b(bArr2.length, bArr2), "signatureData");
        byte[] bArr3 = this.f29545e;
        zzbiVarA.b(zzgfVar.b(bArr3.length, bArr3), "application");
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29543b, false);
        SafeParcelWriter.k(parcel, 3, this.f29544c, false);
        SafeParcelWriter.b(parcel, 4, this.d, false);
        SafeParcelWriter.b(parcel, 5, this.f29545e, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Deprecated
    public SignResponseData(byte[] bArr, String str, byte[] bArr2) {
        this(bArr, str, bArr2, new byte[0]);
    }
}
