package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.google.android.gms.common.util.ProcessUtils;
import com.linkplay.medialib.ContentTree;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import defpackage.pq0;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzgr implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ Object zzd;
    final /* synthetic */ Object zze;
    final /* synthetic */ zzgu zzf;

    public zzgr(zzgu zzguVar, int i2, String str, Object obj, Object obj2, Object obj3) {
        this.zza = i2;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
        Objects.requireNonNull(zzguVar);
        this.zzf = zzguVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVar = this.zzf;
        zzhh zzhhVar = zzguVar.f31850a.f31841e;
        zzic.k(zzhhVar);
        if (!zzhhVar.f31851b) {
            Log.println(6, zzguVar.q(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (zzguVar.f31767c == 0) {
            zzal zzalVar = zzguVar.f31850a.d;
            if (zzalVar.f31554e == null) {
                synchronized (zzalVar) {
                    try {
                        if (zzalVar.f31554e == null) {
                            zzic zzicVar = zzalVar.f31850a;
                            ApplicationInfo applicationInfo = zzicVar.f31838a.getApplicationInfo();
                            if (ProcessUtils.f29343a == null) {
                                ProcessUtils.f29343a = Application.getProcessName();
                            }
                            String str = ProcessUtils.f29343a;
                            if (applicationInfo != null) {
                                String str2 = applicationInfo.processName;
                                zzalVar.f31554e = Boolean.valueOf(str2 != null && str2.equals(str));
                            }
                            if (zzalVar.f31554e == null) {
                                zzalVar.f31554e = Boolean.TRUE;
                                zzgu zzguVar2 = zzicVar.f31842f;
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.a("My process not in the list of running processes");
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (zzalVar.f31554e.booleanValue()) {
                zzguVar.f31767c = ColorParser.ColorInstruction;
            } else {
                zzguVar.f31767c = 'c';
            }
        }
        if (zzguVar.d < 0) {
            zzguVar.f31850a.d.m();
            zzguVar.d = 161000L;
        }
        int i2 = this.zza;
        char c2 = zzguVar.f31767c;
        long j2 = zzguVar.d;
        String str3 = this.zzb;
        Object obj = this.zzc;
        Object obj2 = this.zzd;
        Object obj3 = this.zze;
        char cCharAt = "01VDIWEA?".charAt(i2);
        String strR = zzgu.r(true, str3, obj, obj2, obj3);
        StringBuilder sb = new StringBuilder(pq0.D(String.valueOf(cCharAt).length() + 1, String.valueOf(c2).length(), String.valueOf(j2).length(), 1) + strR.length());
        sb.append(ContentTree.AUDIO_ID);
        sb.append(cCharAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(strR);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = str3.substring(0, 1024);
        }
        zzhf zzhfVar = zzhhVar.f31809e;
        if (zzhfVar != null) {
            String str4 = zzhfVar.f31803c;
            zzhh zzhhVar2 = zzhfVar.f31804e;
            zzhhVar2.g();
            if (zzhfVar.f31804e.k().getLong(zzhfVar.f31801a, 0L) == 0) {
                zzhfVar.a();
            }
            SharedPreferences sharedPreferencesK = zzhhVar2.k();
            String str5 = zzhfVar.f31802b;
            long j3 = sharedPreferencesK.getLong(str5, 0L);
            if (j3 <= 0) {
                SharedPreferences.Editor editorEdit = zzhhVar2.k().edit();
                editorEdit.putString(str4, string);
                editorEdit.putLong(str5, 1L);
                editorEdit.apply();
                return;
            }
            zzpp zzppVar = zzhhVar2.f31850a.f31844i;
            zzic.k(zzppVar);
            long jNextLong = zzppVar.f0().nextLong() & Long.MAX_VALUE;
            long j4 = j3 + 1;
            long j5 = Long.MAX_VALUE / j4;
            SharedPreferences.Editor editorEdit2 = zzhhVar2.k().edit();
            if (jNextLong < j5) {
                editorEdit2.putString(str4, string);
            }
            editorEdit2.putLong(str5, j4);
            editorEdit2.apply();
        }
    }
}
