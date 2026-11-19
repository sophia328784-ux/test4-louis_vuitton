package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfz extends com.google.android.gms.internal.measurement.zzbl implements zzgb {
    public zzfz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String B0(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        Parcel parcelE2 = E2(11, parcelF2);
        String string = parcelE2.readString();
        parcelE2.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void B2(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(20, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void E1(zzr zzrVar, Bundle bundle, zzge zzgeVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, bundle);
        com.google.android.gms.internal.measurement.zzbn.c(parcelF2, zzgeVar);
        G2(31, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List F(String str, String str2, String str3) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(null);
        parcelF2.writeString(str2);
        parcelF2.writeString(str3);
        Parcel parcelE2 = E2(17, parcelF2);
        ArrayList arrayListCreateTypedArrayList = parcelE2.createTypedArrayList(zzah.CREATOR);
        parcelE2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] K(zzbh zzbhVar, String str) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzbhVar);
        parcelF2.writeString(str);
        Parcel parcelE2 = E2(9, parcelF2);
        byte[] bArrCreateByteArray = parcelE2.createByteArray();
        parcelE2.recycle();
        return bArrCreateByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final ArrayList M0(zzr zzrVar, boolean z) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        parcelF2.writeInt(z ? 1 : 0);
        Parcel parcelE2 = E2(7, parcelF2);
        ArrayList arrayListCreateTypedArrayList = parcelE2.createTypedArrayList(zzpl.CREATOR);
        parcelE2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void N1(zzr zzrVar, zzaf zzafVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzafVar);
        G2(30, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void O(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(25, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzao R1(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        Parcel parcelE2 = E2(21, parcelF2);
        zzao zzaoVar = (zzao) com.google.android.gms.internal.measurement.zzbn.a(parcelE2, zzao.CREATOR);
        parcelE2.recycle();
        return zzaoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void S1(Bundle bundle, zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, bundle);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(19, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void U(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(6, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void X(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(26, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void b0(zzpl zzplVar, zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzplVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(2, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void d2(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(4, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void f1(long j2, String str, String str2, String str3) {
        Parcel parcelF2 = F2();
        parcelF2.writeLong(j2);
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        parcelF2.writeString(str3);
        G2(10, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void g1(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(18, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void l(zzr zzrVar, zzoo zzooVar, zzgh zzghVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzooVar);
        com.google.android.gms.internal.measurement.zzbn.c(parcelF2, zzghVar);
        G2(29, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List m(String str, String str2, String str3, boolean z) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(null);
        parcelF2.writeString(str2);
        parcelF2.writeString(str3);
        ClassLoader classLoader = com.google.android.gms.internal.measurement.zzbn.f30586a;
        parcelF2.writeInt(z ? 1 : 0);
        Parcel parcelE2 = E2(15, parcelF2);
        ArrayList arrayListCreateTypedArrayList = parcelE2.createTypedArrayList(zzpl.CREATOR);
        parcelE2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void n(zzah zzahVar, zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzahVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(12, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void p2(zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(27, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List r2(String str, String str2, boolean z, zzr zzrVar) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        ClassLoader classLoader = com.google.android.gms.internal.measurement.zzbn.f30586a;
        parcelF2.writeInt(z ? 1 : 0);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        Parcel parcelE2 = E2(14, parcelF2);
        ArrayList arrayListCreateTypedArrayList = parcelE2.createTypedArrayList(zzpl.CREATOR);
        parcelE2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void s2(zzbh zzbhVar, zzr zzrVar) {
        Parcel parcelF2 = F2();
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzbhVar);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        G2(1, parcelF2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List t2(String str, String str2, zzr zzrVar) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        com.google.android.gms.internal.measurement.zzbn.b(parcelF2, zzrVar);
        Parcel parcelE2 = E2(16, parcelF2);
        ArrayList arrayListCreateTypedArrayList = parcelE2.createTypedArrayList(zzah.CREATOR);
        parcelE2.recycle();
        return arrayListCreateTypedArrayList;
    }
}
