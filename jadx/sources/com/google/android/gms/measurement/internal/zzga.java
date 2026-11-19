package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzga extends com.google.android.gms.internal.measurement.zzbm implements zzgb {
    public zzga() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbm
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        boolean z;
        List list;
        zzgh zzgfVar = null;
        zzge zzgcVar = null;
        switch (i2) {
            case 1:
                zzbh zzbhVar = (zzbh) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzbh.CREATOR);
                zzr zzrVar = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).s2(zzbhVar, zzrVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzpl zzplVar = (zzpl) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzpl.CREATOR);
                zzr zzrVar2 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).b0(zzplVar, zzrVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case 23:
            case 28:
            default:
                return false;
            case 4:
                zzr zzrVar3 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).d2(zzrVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbh zzbhVar2 = (zzbh) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzbh.CREATOR);
                String string = parcel.readString();
                parcel.readString();
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                zzjd zzjdVar = (zzjd) this;
                Preconditions.h(zzbhVar2);
                Preconditions.e(string);
                zzjdVar.H2(string, true);
                zzjdVar.I2(new zzis(zzjdVar, zzbhVar2, string));
                parcel2.writeNoException();
                return true;
            case 6:
                zzr zzrVar4 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).U(zzrVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzr zzrVar5 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                z = parcel.readInt() != 0;
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ArrayList arrayListM0 = ((zzjd) this).M0(zzrVar5, z);
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayListM0);
                return true;
            case 9:
                zzbh zzbhVar3 = (zzbh) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzbh.CREATOR);
                String string2 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                byte[] bArrK = ((zzjd) this).K(zzbhVar3, string2);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrK);
                return true;
            case 10:
                long j2 = parcel.readLong();
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).f1(j2, string3, string4, string5);
                parcel2.writeNoException();
                return true;
            case 11:
                zzr zzrVar6 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                String strB0 = ((zzjd) this).B0(zzrVar6);
                parcel2.writeNoException();
                parcel2.writeString(strB0);
                return true;
            case 12:
                zzah zzahVar = (zzah) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzah.CREATOR);
                zzr zzrVar7 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).n(zzahVar, zzrVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzah zzahVar2 = (zzah) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzah.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                zzjd zzjdVar2 = (zzjd) this;
                Preconditions.h(zzahVar2);
                Preconditions.h(zzahVar2.d);
                Preconditions.e(zzahVar2.f31543b);
                zzjdVar2.H2(zzahVar2.f31543b, true);
                zzjdVar2.I2(new zzii(zzjdVar2, new zzah(zzahVar2)));
                parcel2.writeNoException();
                return true;
            case 14:
                String string6 = parcel.readString();
                String string7 = parcel.readString();
                ClassLoader classLoader = com.google.android.gms.internal.measurement.zzbn.f30586a;
                z = parcel.readInt() != 0;
                zzr zzrVar8 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                List listR2 = ((zzjd) this).r2(string6, string7, z, zzrVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listR2);
                return true;
            case 15:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                ClassLoader classLoader2 = com.google.android.gms.internal.measurement.zzbn.f30586a;
                z = parcel.readInt() != 0;
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                List listM = ((zzjd) this).m(string8, string9, string10, z);
                parcel2.writeNoException();
                parcel2.writeTypedList(listM);
                return true;
            case 16:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                zzr zzrVar9 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                List listT2 = ((zzjd) this).t2(string11, string12, zzrVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listT2);
                return true;
            case 17:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                List listF = ((zzjd) this).F(string13, string14, string15);
                parcel2.writeNoException();
                parcel2.writeTypedList(listF);
                return true;
            case 18:
                zzr zzrVar10 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).g1(zzrVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) com.google.android.gms.internal.measurement.zzbn.a(parcel, Bundle.CREATOR);
                zzr zzrVar11 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).S1(bundle, zzrVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzr zzrVar12 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).B2(zzrVar12);
                parcel2.writeNoException();
                return true;
            case 21:
                zzr zzrVar13 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                zzao zzaoVarR1 = ((zzjd) this).R1(zzrVar13);
                parcel2.writeNoException();
                if (zzaoVarR1 == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                zzaoVarR1.writeToParcel(parcel2, 1);
                return true;
            case 24:
                zzr zzrVar14 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.measurement.zzbn.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                zzjd zzjdVar3 = (zzjd) this;
                zzjdVar3.G2(zzrVar14);
                String str = zzrVar14.f32016b;
                Preconditions.h(str);
                zzpg zzpgVar = zzjdVar3.f31847a;
                if (!zzpgVar.f0().r(null, zzfy.T0)) {
                    try {
                        list = (List) ((FutureTask) zzpgVar.c().n(new zziw(zzjdVar3, zzrVar14, bundle2))).get();
                    } catch (InterruptedException | ExecutionException e2) {
                        zzpgVar.b().f31769f.c("Failed to get trigger URIs. appId", zzgu.o(str), e2);
                        list = Collections.EMPTY_LIST;
                    }
                    break;
                } else {
                    try {
                        list = (List) ((FutureTask) zzpgVar.c().o(new zziv(zzjdVar3, zzrVar14, bundle2))).get(10000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e3) {
                        zzpgVar.b().f31769f.c("Failed to get trigger URIs. appId", zzgu.o(str), e3);
                        list = Collections.EMPTY_LIST;
                    }
                    break;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(list);
                return true;
            case 25:
                zzr zzrVar15 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).O(zzrVar15);
                parcel2.writeNoException();
                return true;
            case 26:
                zzr zzrVar16 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).X(zzrVar16);
                parcel2.writeNoException();
                return true;
            case 27:
                zzr zzrVar17 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).p2(zzrVar17);
                parcel2.writeNoException();
                return true;
            case 29:
                zzr zzrVar18 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                zzoo zzooVar = (zzoo) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzoo.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    zzgfVar = iInterfaceQueryLocalInterface instanceof zzgh ? (zzgh) iInterfaceQueryLocalInterface : new zzgf(strongBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                }
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).l(zzrVar18, zzooVar, zzgfVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzr zzrVar19 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                zzaf zzafVar = (zzaf) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzaf.CREATOR);
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).N1(zzrVar19, zzafVar);
                parcel2.writeNoException();
                return true;
            case 31:
                zzr zzrVar20 = (zzr) com.google.android.gms.internal.measurement.zzbn.a(parcel, zzr.CREATOR);
                Bundle bundle3 = (Bundle) com.google.android.gms.internal.measurement.zzbn.a(parcel, Bundle.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    zzgcVar = iInterfaceQueryLocalInterface2 instanceof zzge ? (zzge) iInterfaceQueryLocalInterface2 : new zzgc(strongBinder2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                }
                com.google.android.gms.internal.measurement.zzbn.d(parcel);
                ((zzjd) this).E1(zzrVar20, bundle3, zzgcVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
