package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.vision.zzfi$zza;
import com.google.android.gms.internal.vision.zzfi$zzf;
import com.google.android.gms.internal.vision.zzfi$zzi;
import com.google.android.gms.internal.vision.zzfi$zzj;
import com.google.android.gms.internal.vision.zzfi$zzn;
import com.google.android.gms.internal.vision.zzfi$zzo;
import com.google.android.gms.internal.vision.zzs;
import com.google.android.gms.vision.L;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtils {
    public static zzfi$zzo zza(long j2, int i2, String str, String str2, List<zzfi$zzn> list, zzs zzsVar) {
        zzfi$zzi.zza zzaVarP = zzfi$zzi.p();
        zzfi$zzf.zzb zzbVarQ = zzfi$zzf.q();
        if (zzbVarQ.d) {
            zzbVarQ.i();
            zzbVarQ.d = false;
        }
        zzfi$zzf.o((zzfi$zzf) zzbVarQ.f31220c, str2);
        if (zzbVarQ.d) {
            zzbVarQ.i();
            zzbVarQ.d = false;
        }
        zzfi$zzf.n((zzfi$zzf) zzbVarQ.f31220c, j2);
        long j3 = i2;
        if (zzbVarQ.d) {
            zzbVarQ.i();
            zzbVarQ.d = false;
        }
        zzfi$zzf.s((zzfi$zzf) zzbVarQ.f31220c, j3);
        if (zzbVarQ.d) {
            zzbVarQ.i();
            zzbVarQ.d = false;
        }
        zzfi$zzf.p((zzfi$zzf) zzbVarQ.f31220c, list);
        ArrayList arrayList = new ArrayList();
        arrayList.add((zzfi$zzf) zzbVarQ.I());
        if (zzaVarP.d) {
            zzaVarP.i();
            zzaVarP.d = false;
        }
        zzfi$zzi.o((zzfi$zzi) zzaVarP.f31220c, arrayList);
        zzfi$zzj.zzb zzbVarO = zzfi$zzj.o();
        long j4 = zzsVar.f31297c;
        if (zzbVarO.d) {
            zzbVarO.i();
            zzbVarO.d = false;
        }
        zzfi$zzj.q((zzfi$zzj) zzbVarO.f31220c, j4);
        long j5 = zzsVar.f31296b;
        if (zzbVarO.d) {
            zzbVarO.i();
            zzbVarO.d = false;
        }
        zzfi$zzj.n((zzfi$zzj) zzbVarO.f31220c, j5);
        long j6 = zzsVar.d;
        if (zzbVarO.d) {
            zzbVarO.i();
            zzbVarO.d = false;
        }
        zzfi$zzj.r((zzfi$zzj) zzbVarO.f31220c, j6);
        long j7 = zzsVar.f31298e;
        if (zzbVarO.d) {
            zzbVarO.i();
            zzbVarO.d = false;
        }
        zzfi$zzj.s((zzfi$zzj) zzbVarO.f31220c, j7);
        zzfi$zzj zzfi_zzj = (zzfi$zzj) zzbVarO.I();
        if (zzaVarP.d) {
            zzaVarP.i();
            zzaVarP.d = false;
        }
        zzfi$zzi.n((zzfi$zzi) zzaVarP.f31220c, zzfi_zzj);
        zzfi$zzi zzfi_zzi = (zzfi$zzi) zzaVarP.I();
        zzfi$zzo.zza zzaVarO = zzfi$zzo.o();
        if (zzaVarO.d) {
            zzaVarO.i();
            zzaVarO.d = false;
        }
        zzfi$zzo.n((zzfi$zzo) zzaVarO.f31220c, zzfi_zzi);
        return (zzfi$zzo) zzaVarO.I();
    }

    private static String zzb(Context context) {
        try {
            return Wrappers.a(context).b(0, context.getPackageName()).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            L.a(e2, "Unable to find calling package info for %s", context.getPackageName());
            return null;
        }
    }

    public static zzfi$zza zza(Context context) {
        zzfi$zza.zza zzaVarO = zzfi$zza.o();
        String packageName = context.getPackageName();
        if (zzaVarO.d) {
            zzaVarO.i();
            zzaVarO.d = false;
        }
        zzfi$zza.n((zzfi$zza) zzaVarO.f31220c, packageName);
        String strZzb = zzb(context);
        if (strZzb != null) {
            if (zzaVarO.d) {
                zzaVarO.i();
                zzaVarO.d = false;
            }
            zzfi$zza.q((zzfi$zza) zzaVarO.f31220c, strZzb);
        }
        return (zzfi$zza) zzaVarO.I();
    }
}
