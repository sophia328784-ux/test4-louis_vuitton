package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.clearcut.zzha;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import defpackage.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzr f28892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f28893c;
    public final int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f28894e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f28895f;
    public final byte[][] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExperimentTokens[] f28896h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f28897i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzha f28898j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ClearcutLogger.zzb f28899k;

    public zze(zzr zzrVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokens[] experimentTokensArr) {
        this.f28892b = zzrVar;
        this.f28893c = bArr;
        this.d = iArr;
        this.f28894e = strArr;
        this.f28898j = null;
        this.f28899k = null;
        this.f28895f = iArr2;
        this.g = bArr2;
        this.f28896h = experimentTokensArr;
        this.f28897i = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zze) {
            zze zzeVar = (zze) obj;
            if (Objects.a(this.f28892b, zzeVar.f28892b) && Arrays.equals(this.f28893c, zzeVar.f28893c) && Arrays.equals(this.d, zzeVar.d) && Arrays.equals(this.f28894e, zzeVar.f28894e) && Objects.a(this.f28898j, zzeVar.f28898j) && Objects.a(this.f28899k, zzeVar.f28899k) && Objects.a(null, null) && Arrays.equals(this.f28895f, zzeVar.f28895f) && Arrays.deepEquals(this.g, zzeVar.g) && Arrays.equals(this.f28896h, zzeVar.f28896h) && this.f28897i == zzeVar.f28897i) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28892b, this.f28893c, this.d, this.f28894e, this.f28898j, this.f28899k, null, this.f28895f, this.g, this.f28896h, Boolean.valueOf(this.f28897i)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f28892b);
        sb.append(", LogEventBytes: ");
        byte[] bArr = this.f28893c;
        sb.append(bArr == null ? null : new String(bArr));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.d));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f28894e));
        sb.append(", LogEvent: ");
        sb.append(this.f28898j);
        sb.append(", ExtensionProducer: ");
        sb.append(this.f28899k);
        sb.append(", VeProducer: null, ExperimentIDs: ");
        sb.append(Arrays.toString(this.f28895f));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.g));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.f28896h));
        sb.append(", AddPhenotypeExperimentTokens: ");
        return a.p(sb, this.f28897i, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f28892b, i2, false);
        SafeParcelWriter.b(parcel, 3, this.f28893c, false);
        SafeParcelWriter.g(parcel, 4, this.d);
        SafeParcelWriter.l(parcel, 5, this.f28894e);
        SafeParcelWriter.g(parcel, 6, this.f28895f);
        SafeParcelWriter.c(parcel, 7, this.g);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f28897i ? 1 : 0);
        SafeParcelWriter.n(parcel, 9, this.f28896h, i2);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zze(zzr zzrVar, zzha zzhaVar, ClearcutLogger.zzb zzbVar, ClearcutLogger.zzb zzbVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.f28892b = zzrVar;
        this.f28898j = zzhaVar;
        this.f28899k = zzbVar;
        this.d = iArr;
        this.f28894e = null;
        this.f28895f = iArr2;
        this.g = null;
        this.f28896h = null;
        this.f28897i = z;
    }
}
