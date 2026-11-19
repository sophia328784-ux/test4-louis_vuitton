package com.google.android.gms.fido.fido2.api.common;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzgx;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FidoCredentialDetails extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FidoCredentialDetails> CREATOR = new zzy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29448c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzgx f29449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f29450f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f29451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Account f29452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f29453j;

    public FidoCredentialDetails(String str, String str2, byte[] bArr, byte[] bArr2, boolean z, boolean z2, long j2, Account account, boolean z3) {
        zzgx zzgxVarP = bArr == null ? null : zzgx.p(bArr.length, bArr);
        zzgx zzgxVar = zzgx.f29900c;
        zzgx zzgxVarP2 = zzgx.p(bArr2.length, bArr2);
        this.f29447b = str;
        this.f29448c = str2;
        this.d = zzgxVarP;
        this.f29449e = zzgxVarP2;
        this.f29450f = z;
        this.g = z2;
        this.f29451h = j2;
        this.f29452i = account;
        this.f29453j = z3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FidoCredentialDetails)) {
            return false;
        }
        FidoCredentialDetails fidoCredentialDetails = (FidoCredentialDetails) obj;
        return Objects.a(this.f29447b, fidoCredentialDetails.f29447b) && Objects.a(this.f29448c, fidoCredentialDetails.f29448c) && Objects.a(this.d, fidoCredentialDetails.d) && Objects.a(this.f29449e, fidoCredentialDetails.f29449e) && this.f29450f == fidoCredentialDetails.f29450f && this.g == fidoCredentialDetails.g && this.f29453j == fidoCredentialDetails.f29453j && this.f29451h == fidoCredentialDetails.f29451h && Objects.a(this.f29452i, fidoCredentialDetails.f29452i);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29447b, this.f29448c, this.d, this.f29449e, Boolean.valueOf(this.f29450f), Boolean.valueOf(this.g), Boolean.valueOf(this.f29453j), Long.valueOf(this.f29451h), this.f29452i});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29447b, false);
        SafeParcelWriter.k(parcel, 2, this.f29448c, false);
        zzgx zzgxVar = this.d;
        SafeParcelWriter.b(parcel, 3, zzgxVar == null ? null : zzgxVar.q(), false);
        SafeParcelWriter.b(parcel, 4, this.f29449e.q(), false);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29450f ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.p(parcel, 7, 8);
        parcel.writeLong(this.f29451h);
        SafeParcelWriter.j(parcel, 8, this.f29452i, i2, false);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f29453j ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
