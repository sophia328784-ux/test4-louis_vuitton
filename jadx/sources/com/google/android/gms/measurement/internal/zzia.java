package com.google.android.gms.measurement.internal;

import android.app.job.JobScheduler;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzaif;
import defpackage.md;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzia implements Runnable {
    final /* synthetic */ zzjs zza;
    final /* synthetic */ zzic zzb;

    public zzia(zzic zzicVar, zzjs zzjsVar) {
        this.zza = zzjsVar;
        Objects.requireNonNull(zzicVar);
        this.zzb = zzicVar;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:103:0x02a3 A[Catch: NotFoundException -> 0x02a8, TRY_LEAVE, TryCatch #1 {NotFoundException -> 0x02a8, blocks: (B:100:0x0291, B:103:0x02a3), top: B:290:0x0291 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:111:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:115:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:118:0x02e8 A[EDGE_INSN: B:118:0x02e8->B:119:0x02ea BREAK  A[LOOP:0: B:113:0x02ce->B:304:?]] */
    /* JADX WARN: Code duplicated, block: B:120:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:121:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:124:0x030e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0354  */
    /* JADX WARN: Code duplicated, block: B:127:0x035d  */
    /* JADX WARN: Code duplicated, block: B:130:0x037f  */
    /* JADX WARN: Code duplicated, block: B:133:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:134:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:137:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:140:0x03d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:142:0x03d5 A[PHI: r12
      0x03d5: PHI (r12v20 boolean) = (r12v10 boolean), (r12v9 boolean) binds: [B:141:0x03d4, B:138:0x03cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:144:0x0408  */
    /* JADX WARN: Code duplicated, block: B:145:0x0420  */
    /* JADX WARN: Code duplicated, block: B:148:0x0449 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x0451  */
    /* JADX WARN: Code duplicated, block: B:153:0x0469  */
    /* JADX WARN: Code duplicated, block: B:155:0x0480 A[PHI: r24 r25
      0x0480: PHI (r24v3 com.google.android.gms.measurement.internal.zzic) = (r24v0 com.google.android.gms.measurement.internal.zzic), (r24v4 com.google.android.gms.measurement.internal.zzic) binds: [B:152:0x0467, B:150:0x044c] A[DONT_GENERATE, DONT_INLINE]
      0x0480: PHI (r25v3 com.google.android.gms.measurement.internal.zzgs) = (r25v0 com.google.android.gms.measurement.internal.zzgs), (r25v4 com.google.android.gms.measurement.internal.zzgs) binds: [B:152:0x0467, B:150:0x044c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:157:0x048e  */
    /* JADX WARN: Code duplicated, block: B:158:0x0490  */
    /* JADX WARN: Code duplicated, block: B:168:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:170:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:171:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:174:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:177:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:180:0x0512  */
    /* JADX WARN: Code duplicated, block: B:182:0x0520 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x053d  */
    /* JADX WARN: Code duplicated, block: B:190:0x0543  */
    /* JADX WARN: Code duplicated, block: B:192:0x0561  */
    /* JADX WARN: Code duplicated, block: B:196:0x058f  */
    /* JADX WARN: Code duplicated, block: B:199:0x05a9  */
    /* JADX WARN: Code duplicated, block: B:204:0x05c2  */
    /* JADX WARN: Code duplicated, block: B:206:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:208:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:209:0x05db  */
    /* JADX WARN: Code duplicated, block: B:212:0x05e5  */
    /* JADX WARN: Code duplicated, block: B:215:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:219:0x0607  */
    /* JADX WARN: Code duplicated, block: B:222:0x0615  */
    /* JADX WARN: Code duplicated, block: B:225:0x0629  */
    /* JADX WARN: Code duplicated, block: B:226:0x062c  */
    /* JADX WARN: Code duplicated, block: B:228:0x063c  */
    /* JADX WARN: Code duplicated, block: B:230:0x065c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:241:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:243:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:246:0x06fc  */
    /* JADX WARN: Code duplicated, block: B:255:0x0746  */
    /* JADX WARN: Code duplicated, block: B:257:0x074e  */
    /* JADX WARN: Code duplicated, block: B:258:0x0750  */
    /* JADX WARN: Code duplicated, block: B:260:0x0758  */
    /* JADX WARN: Code duplicated, block: B:264:0x0765  */
    /* JADX WARN: Code duplicated, block: B:268:0x079a  */
    /* JADX WARN: Code duplicated, block: B:270:0x07a5  */
    /* JADX WARN: Code duplicated, block: B:272:0x07d6  */
    /* JADX WARN: Code duplicated, block: B:275:0x07ec  */
    /* JADX WARN: Code duplicated, block: B:279:0x07ff  */
    /* JADX WARN: Code duplicated, block: B:290:0x0291 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0167 A[Catch: NameNotFoundException -> 0x0186, TryCatch #3 {NameNotFoundException -> 0x0186, blocks: (B:41:0x015c, B:43:0x0167, B:45:0x0173), top: B:294:0x015c }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0173 A[Catch: NameNotFoundException -> 0x0186, TRY_LEAVE, TryCatch #3 {NameNotFoundException -> 0x0186, blocks: (B:41:0x015c, B:43:0x0167, B:45:0x0173), top: B:294:0x015c }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0178  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:58:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:60:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:64:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:66:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:69:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:70:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:72:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x0204  */
    /* JADX WARN: Code duplicated, block: B:74:0x020f  */
    /* JADX WARN: Code duplicated, block: B:75:0x021a  */
    /* JADX WARN: Code duplicated, block: B:79:0x022e  */
    /* JADX WARN: Code duplicated, block: B:80:0x022f A[Catch: IllegalStateException -> 0x0251, TryCatch #2 {IllegalStateException -> 0x0251, blocks: (B:77:0x0226, B:81:0x0235, B:85:0x023d, B:87:0x0241, B:80:0x022f), top: B:292:0x0226 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x023b  */
    /* JADX WARN: Code duplicated, block: B:84:0x023c  */
    /* JADX WARN: Code duplicated, block: B:87:0x0241 A[Catch: IllegalStateException -> 0x0251, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0251, blocks: (B:77:0x0226, B:81:0x0235, B:85:0x023d, B:87:0x0241, B:80:0x022f), top: B:292:0x0226 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0272  */
    /* JADX WARN: Code duplicated, block: B:95:0x0280  */
    /* JADX WARN: Code duplicated, block: B:98:0x0287  */
    @Override // java.lang.Runnable
    public final void run() {
        String string;
        String str;
        PackageInfo packageInfo;
        CharSequence applicationLabel;
        int i2;
        String str2;
        int iG;
        zzic zzicVar;
        Bundle bundleS;
        Integer numValueOf;
        String[] stringArray;
        List listAsList;
        zzlq zzlqVar;
        zzgs zzgsVar;
        zzgs zzgsVar2;
        zzgs zzgsVar3;
        zzgs zzgsVar4;
        String strM;
        int i3;
        AtomicInteger atomicInteger;
        long j2;
        final zzlj zzljVar;
        com.google.android.gms.internal.measurement.zzin zzinVarL;
        com.google.android.gms.internal.measurement.zzin zzinVar;
        boolean zR;
        boolean z;
        zzgu zzguVar;
        long j3;
        zzic zzicVar2;
        zzhg zzhgVar;
        zzjl zzjlVarN;
        int i4;
        zzji zzjiVarW;
        zzic zzicVar3;
        zzji zzjiVarW2;
        zzji zzjiVar;
        zzic zzicVar4;
        zzgs zzgsVar5;
        zzjl zzjlVar;
        boolean z2;
        zzic zzicVar5;
        zzji zzjiVarW3;
        zzji zzjiVarW4;
        Boolean boolT;
        zzhe zzheVar;
        zzx zzxVar;
        zzic zzicVar6;
        zzhg zzhgVar2;
        zzgu zzguVar2;
        boolean zF;
        SharedPreferences sharedPreferences;
        boolean zContains;
        boolean zIsEmpty;
        long jMax;
        zzgs zzgsVar6;
        Context context;
        boolean z3;
        Iterator it;
        String str3;
        zzpp zzppVar;
        String strA;
        Bundle bundle;
        zzic zzicVar7 = this.zzb;
        zzjs zzjsVar = this.zza;
        zzhz zzhzVar = zzicVar7.g;
        zzgu zzguVar3 = zzicVar7.f31842f;
        zzhh zzhhVar = zzicVar7.f31841e;
        zzpp zzppVar2 = zzicVar7.f31844i;
        zzic.m(zzhzVar);
        zzhzVar.g();
        zzal zzalVar = zzicVar7.d;
        zzalVar.f31850a.getClass();
        zzbb zzbbVar = new zzbb(zzicVar7);
        zzbbVar.j();
        zzicVar7.s = zzbbVar;
        com.google.android.gms.internal.measurement.zzdb zzdbVar = zzjsVar.d;
        String str4 = "";
        zzgi zzgiVar = new zzgi(zzicVar7, zzjsVar.f31868c, zzdbVar == null ? 0L : zzdbVar.f30604b, (zzdbVar == null || (bundle = zzdbVar.f30606e) == null) ? "" : bundle.getString("runtime_google_app_id", ""));
        zzgiVar.i();
        zzicVar7.t = zzgiVar;
        zzgl zzglVar = new zzgl(zzicVar7);
        zzglVar.i();
        zzicVar7.q = zzglVar;
        zznl zznlVar = new zznl(zzicVar7);
        zznlVar.i();
        zzicVar7.r = zznlVar;
        boolean z4 = zzppVar2.f31851b;
        zzic zzicVar8 = zzppVar2.f31850a;
        if (z4) {
            md.k("Can't initialize twice");
            return;
        }
        zzppVar2.g();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                zzgu zzguVar4 = zzppVar2.f31850a.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.f31771i.a("Utils falling back to Random for random id");
            }
        }
        zzppVar2.d.set(jNextLong);
        zzicVar8.C.incrementAndGet();
        zzppVar2.f31851b = true;
        if (zzhhVar.f31851b) {
            md.k("Can't initialize twice");
            return;
        }
        SharedPreferences sharedPreferences2 = zzhhVar.f31850a.f31838a.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        zzhhVar.f31808c = sharedPreferences2;
        boolean z5 = sharedPreferences2.getBoolean("has_been_opened", false);
        zzhhVar.r = z5;
        if (!z5) {
            SharedPreferences.Editor editorEdit = zzhhVar.f31808c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        zzhhVar.f31809e = new zzhf(zzhhVar, Math.max(0L, ((Long) zzfy.d.a(null)).longValue()));
        zzhhVar.f31850a.C.incrementAndGet();
        zzhhVar.f31851b = true;
        zzgi zzgiVar2 = zzicVar7.t;
        if (zzgiVar2.f31741b) {
            md.k("Can't initialize twice");
            return;
        }
        zzic zzicVar9 = zzgiVar2.f31850a;
        zzgu zzguVar5 = zzicVar9.f31842f;
        zzgu zzguVar6 = zzicVar9.f31842f;
        zzic.m(zzguVar5);
        zzguVar5.n.c("sdkVersion bundled with app, dynamiteVersion", Long.valueOf(zzgiVar2.f31747j), Long.valueOf(zzgiVar2.f31746i));
        Context context2 = zzicVar9.f31838a;
        String packageName = context2.getPackageName();
        PackageManager packageManager = context2.getPackageManager();
        String str5 = "Unknown";
        String installerPackageName = "unknown";
        try {
            if (packageManager != null) {
                try {
                    installerPackageName = packageManager.getInstallerPackageName(packageName);
                } catch (IllegalArgumentException unused) {
                    zzic.m(zzguVar6);
                    zzguVar6.f31769f.b(zzgu.o(packageName), "Error retrieving app installer package name. appId");
                }
                String str6 = installerPackageName;
                try {
                    if (str6 != null) {
                        if ("com.android.vending".equals(str6)) {
                            installerPackageName = "";
                        }
                        packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
                        if (packageInfo != null) {
                            applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (TextUtils.isEmpty(applicationLabel)) {
                                string = "Unknown";
                            } else {
                                string = applicationLabel.toString();
                            }
                            try {
                                str = packageInfo.versionName;
                                try {
                                    i2 = packageInfo.versionCode;
                                    zzgiVar = zzgiVar;
                                    str2 = installerPackageName;
                                } catch (PackageManager.NameNotFoundException unused2) {
                                    str5 = str;
                                    zzic.m(zzguVar6);
                                    zzguVar6.f31769f.c("Error retrieving package info. appId, appName", zzgu.o(packageName), string);
                                    str = str5;
                                    str2 = installerPackageName;
                                    i2 = Integer.MIN_VALUE;
                                }
                            } catch (PackageManager.NameNotFoundException unused3) {
                            }
                        }
                        zzgiVar2.f31742c = packageName;
                        zzgiVar2.f31744f = str2;
                        zzgiVar2.d = str;
                        zzgiVar2.f31743e = i2;
                        zzgiVar2.g = string;
                        zzgiVar2.f31745h = 0L;
                        iG = zzicVar9.g();
                        if (iG == 0) {
                            zzic.m(zzguVar6);
                            zzguVar6.n.a("App measurement collection enabled");
                        } else if (iG == 1) {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement deactivated via the manifest");
                        } else if (iG == 3) {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                        } else if (iG == 4) {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement disabled via the manifest");
                        } else if (iG == 6) {
                            zzic.m(zzguVar6);
                            zzguVar6.f31773k.a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                        } else if (iG == 7) {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement disabled via the global data collection setting");
                        } else if (iG != 8) {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement disabled");
                            zzic.m(zzguVar6);
                            zzguVar6.g.a("Invalid scion state in identity");
                        } else {
                            zzic.m(zzguVar6);
                            zzguVar6.l.a("App measurement disabled due to denied storage consent");
                        }
                        zzgiVar2.o = "";
                        strA = zzgiVar2.m;
                        if (TextUtils.isEmpty(strA)) {
                            strA = zzlt.a(context2, zzicVar9.p);
                        }
                        if (!TextUtils.isEmpty(strA)) {
                            str4 = strA;
                        }
                        zzgiVar2.o = str4;
                        if (iG == 0) {
                            zzic.m(zzguVar6);
                            zzguVar6.n.c("App measurement enabled for app package, google app id", zzgiVar2.f31742c, zzgiVar2.o);
                        }
                        zzgiVar2.f31748k = null;
                        zzal zzalVar2 = zzicVar9.d;
                        zzicVar = zzalVar2.f31850a;
                        Preconditions.e("analytics.safelisted_events");
                        bundleS = zzalVar2.s();
                        if (bundleS != null) {
                            if (bundleS.containsKey("analytics.safelisted_events")) {
                                numValueOf = Integer.valueOf(bundleS.getInt("analytics.safelisted_events"));
                            }
                            if (numValueOf != null) {
                                try {
                                    stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
                                    if (stringArray == null) {
                                        listAsList = null;
                                    } else {
                                        listAsList = Arrays.asList(stringArray);
                                    }
                                } catch (Resources.NotFoundException e2) {
                                    zzgu zzguVar7 = zzicVar.f31842f;
                                    zzic.m(zzguVar7);
                                    zzguVar7.f31769f.b(e2, "Failed to load string array from metadata: resource not found");
                                }
                            } else {
                                listAsList = null;
                            }
                            if (listAsList != null) {
                                zzgiVar2.f31748k = listAsList;
                                break;
                            }
                            if (listAsList.isEmpty()) {
                                it = listAsList.iterator();
                                do {
                                    if (it.hasNext()) {
                                        zzgiVar2.f31748k = listAsList;
                                        break;
                                    } else {
                                        str3 = (String) it.next();
                                        zzppVar = zzicVar9.f31844i;
                                        zzic.k(zzppVar);
                                    }
                                } while (zzppVar.k0("safelisted event", str3));
                            } else {
                                zzic.m(zzguVar6);
                                zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
                            }
                            if (packageManager != null) {
                                zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
                            } else {
                                zzgiVar2.n = 0;
                            }
                            zzgiVar2.f31850a.C.incrementAndGet();
                            zzgiVar2.f31741b = true;
                            zzlqVar = new zzlq(zzicVar7);
                            zzlqVar.i();
                            zzicVar7.u = zzlqVar;
                            if (!zzlqVar.f31741b) {
                                md.k("Can't initialize twice");
                                return;
                            }
                            zzic zzicVar10 = zzlqVar.f31850a;
                            zzlqVar.f31894c = (JobScheduler) zzicVar10.f31838a.getSystemService("jobscheduler");
                            zzicVar10.C.incrementAndGet();
                            zzlqVar.f31741b = true;
                            zzic.m(zzguVar3);
                            zzgsVar = zzguVar3.m;
                            zzgsVar2 = zzguVar3.l;
                            zzgsVar3 = zzguVar3.n;
                            zzgsVar4 = zzguVar3.f31769f;
                            zzalVar.m();
                            zzgsVar2.b(161000L, "App measurement initialized, version");
                            zzic.m(zzguVar3);
                            zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                            strM = zzgiVar.m();
                            if (zzppVar2.L(strM, zzalVar.f31553c)) {
                                zzic.m(zzguVar3);
                                zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                            } else {
                                zzic.m(zzguVar3);
                                zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
                            }
                            zzic.m(zzguVar3);
                            zzgsVar.a("Debug-level message logging enabled");
                            i3 = zzicVar7.A;
                            atomicInteger = zzicVar7.C;
                            if (i3 != atomicInteger.get()) {
                                zzic.m(zzguVar3);
                                zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
                            }
                            zzicVar7.v = true;
                            j2 = zzicVar7.D;
                            zzljVar = zzicVar7.m;
                            zzhz zzhzVar2 = zzicVar7.g;
                            zzic.m(zzhzVar2);
                            zzhzVar2.g();
                            zzic.j(zzicVar7.u);
                            zzinVarL = zzicVar7.u.l();
                            zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
                            zzaif.a();
                            zR = zzalVar.r(null, zzfy.P0);
                            if (zzinVarL == zzinVar) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (zR) {
                                zzppVar2.g();
                                if (zzppVar2.D() == 1) {
                                    zzppVar2.g();
                                    IntentFilter intentFilter = new IntentFilter();
                                    j3 = 1;
                                    intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                                    intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                                    zzicVar2 = zzicVar8;
                                    z3 = z;
                                    zzguVar = zzguVar3;
                                    ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter, 2);
                                    zzgu zzguVar8 = zzicVar2.f31842f;
                                    zzic.m(zzguVar8);
                                    zzguVar8.m.a("Registered app receiver");
                                    if (z3) {
                                        zzic.j(zzicVar7.u);
                                        zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                                    }
                                } else if (z) {
                                    z = true;
                                    zzppVar2.g();
                                    IntentFilter intentFilter2 = new IntentFilter();
                                    j3 = 1;
                                    intentFilter2.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                                    intentFilter2.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                                    zzicVar2 = zzicVar8;
                                    z3 = z;
                                    zzguVar = zzguVar3;
                                    ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter2, 2);
                                    zzgu zzguVar9 = zzicVar2.f31842f;
                                    zzic.m(zzguVar9);
                                    zzguVar9.m.a("Registered app receiver");
                                    if (z3) {
                                        zzic.j(zzicVar7.u);
                                        zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                                    }
                                } else {
                                    zzguVar = zzguVar3;
                                    j3 = 1;
                                    zzicVar2 = zzicVar8;
                                }
                            } else if (z) {
                                z = true;
                                zzppVar2.g();
                                IntentFilter intentFilter3 = new IntentFilter();
                                j3 = 1;
                                intentFilter3.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                                intentFilter3.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                                zzicVar2 = zzicVar8;
                                z3 = z;
                                zzguVar = zzguVar3;
                                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter3, 2);
                                zzgu zzguVar10 = zzicVar2.f31842f;
                                zzic.m(zzguVar10);
                                zzguVar10.m.a("Registered app receiver");
                                if (z3) {
                                    zzic.j(zzicVar7.u);
                                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                                }
                            } else {
                                zzguVar = zzguVar3;
                                j3 = 1;
                                zzicVar2 = zzicVar8;
                            }
                            zzhgVar = zzhhVar.g;
                            zzjlVarN = zzhhVar.n();
                            i4 = zzjlVarN.f31854b;
                            zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
                            zzicVar3 = zzicVar2;
                            zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
                            zzjiVar = zzji.UNINITIALIZED;
                            if (zzjiVarW == zzjiVar || zzjiVarW2 != zzjiVar) {
                                zzicVar4 = zzicVar7;
                                zzgsVar5 = zzgsVar4;
                                if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                                    EnumMap enumMap = new EnumMap(zzjk.class);
                                    enumMap.put(zzjk.AD_STORAGE, zzjiVarW);
                                    enumMap.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                                    zzjlVar = new zzjl(enumMap, -10);
                                }
                                z2 = false;
                                if (zzjlVar != null) {
                                    zzic.l(zzljVar);
                                    zzljVar.L(zzjlVar, true);
                                } else {
                                    zzjlVar = zzjlVarN;
                                }
                                zzic.l(zzljVar);
                                zzicVar5 = zzljVar.f31850a;
                                zzljVar.P(zzjlVar);
                                zzhhVar.g();
                                int i5 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                                if (zzjiVarW3 != zzjiVar) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                                }
                                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                                if (zzjiVarW4 == zzjiVar && zzjl.l(-10, i5)) {
                                    zzic.l(zzljVar);
                                    EnumMap enumMap2 = new EnumMap(zzjk.class);
                                    enumMap2.put(zzjk.AD_USER_DATA, zzjiVarW4);
                                    zzljVar.K(new zzba(enumMap2, -10, (Boolean) null, (String) null), true);
                                } else if (!TextUtils.isEmpty(zzicVar4.r().n()) && (i5 == 0 || i5 == 30)) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                                if (boolT != null || boolT.booleanValue()) {
                                    zzic.m(zzguVar);
                                    zzgsVar.a("TCF client enabled.");
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    zzgu zzguVar11 = zzicVar5.f31842f;
                                    zzic.m(zzguVar11);
                                    zzguVar11.m.a("Register tcfPrefChangeListener.");
                                    if (zzljVar.t == null) {
                                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                zzlj zzljVar2 = zzljVar;
                                                zzljVar2.getClass();
                                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                    zzgu zzguVar12 = zzljVar2.f31850a.f31842f;
                                                    zzic.m(zzguVar12);
                                                    zzguVar12.n.a("IABTCF_TCString change picked up in listener.");
                                                    zzkb zzkbVar = zzljVar2.u;
                                                    Preconditions.h(zzkbVar);
                                                    zzkbVar.b(500L);
                                                }
                                            }
                                        };
                                    }
                                    zzhh zzhhVar2 = zzicVar5.f31841e;
                                    zzic.k(zzhhVar2);
                                    zzhhVar2.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                    zzic.l(zzljVar);
                                    zzljVar.m();
                                }
                                zzheVar = zzhhVar.f31810f;
                                if (zzheVar.a() == 0) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                    zzheVar.b(j2);
                                }
                                zzic.l(zzljVar);
                                zzxVar = zzljVar.q;
                                if (zzxVar.c() && zzxVar.b()) {
                                    zzhh zzhhVar3 = zzxVar.f32025a.f31841e;
                                    zzic.k(zzhhVar3);
                                    zzhhVar3.w.b(null);
                                }
                                if (zzicVar4.h()) {
                                    zzicVar6 = zzicVar4;
                                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                        zzhgVar2 = zzhgVar;
                                    } else {
                                        String strN = zzicVar6.r().n();
                                        zzhhVar.g();
                                        String string2 = zzhhVar.k().getString("gmp_app_id", null);
                                        zIsEmpty = TextUtils.isEmpty(strN);
                                        boolean zIsEmpty2 = TextUtils.isEmpty(string2);
                                        if (!zIsEmpty || zIsEmpty2) {
                                            zzhgVar2 = zzhgVar;
                                        } else {
                                            Preconditions.h(strN);
                                            if (strN.equals(string2)) {
                                                zzhgVar2 = zzhgVar;
                                            } else {
                                                zzic.m(zzguVar);
                                                zzgsVar2.a("Rechecking which service to use due to a GMP App Id change");
                                                zzhhVar.g();
                                                zzhhVar.g();
                                                Boolean boolValueOf = zzhhVar.k().contains("measurement_enabled") ? Boolean.valueOf(zzhhVar.k().getBoolean("measurement_enabled", true)) : null;
                                                SharedPreferences.Editor editorEdit2 = zzhhVar.k().edit();
                                                editorEdit2.clear();
                                                editorEdit2.apply();
                                                if (boolValueOf != null) {
                                                    zzhhVar.g();
                                                    SharedPreferences.Editor editorEdit3 = zzhhVar.k().edit();
                                                    editorEdit3.putBoolean("measurement_enabled", boolValueOf.booleanValue());
                                                    editorEdit3.apply();
                                                }
                                                zzicVar6.o().k();
                                                zzicVar6.r.o();
                                                zzicVar6.r.m();
                                                zzheVar.b(j2);
                                                zzhgVar2 = zzhgVar;
                                                zzhgVar2.b(null);
                                            }
                                        }
                                        String strN2 = zzicVar6.r().n();
                                        zzhhVar.g();
                                        SharedPreferences.Editor editorEdit4 = zzhhVar.k().edit();
                                        editorEdit4.putString("gmp_app_id", strN2);
                                        editorEdit4.apply();
                                    }
                                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                        zzhgVar2.b(null);
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g.set(zzhgVar2.a());
                                    try {
                                        zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                    } catch (ClassNotFoundException unused4) {
                                        zzhg zzhgVar3 = zzhhVar.v;
                                        if (!TextUtils.isEmpty(zzhgVar3.a())) {
                                            zzic.m(zzguVar);
                                            zzguVar2 = zzguVar;
                                            zzguVar2.f31771i.a("Remote config removed with active feature rollouts");
                                            zzhgVar3.b(null);
                                        }
                                        if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                            zF = zzicVar6.f();
                                            sharedPreferences = zzhhVar.f31808c;
                                            if (sharedPreferences == null) {
                                                zContains = z2;
                                            } else {
                                                zContains = sharedPreferences.contains("deferred_analytics_collection");
                                            }
                                            if (!zContains) {
                                                zzhhVar.o(!zF);
                                            }
                                            if (zF) {
                                                zzic.l(zzljVar);
                                                zzljVar.u();
                                            }
                                            zzoc zzocVar = zzicVar6.f31843h;
                                            zzic.l(zzocVar);
                                            zzocVar.f31937e.a();
                                            zzicVar6.p().k(new AtomicReference());
                                            zzicVar6.p().l(zzhhVar.y.a());
                                        }
                                        zzaif.a();
                                        if (zzalVar.r(null, zzfy.P0)) {
                                            zzppVar2.g();
                                            if (zzppVar2.D() == j3) {
                                                long jIntValue = ((Integer) zzfy.w0.a(null)).intValue();
                                                long jNextInt = new Random().nextInt(5000);
                                                zzicVar6.f31846k.getClass();
                                                jMax = Math.max(500L, ((jIntValue * 1000) + jNextInt) - SystemClock.elapsedRealtime());
                                                if (jMax > 500) {
                                                    zzic.m(zzguVar2);
                                                    zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                                }
                                                zzic.l(zzljVar);
                                                zzljVar.g();
                                                if (zzljVar.l == null) {
                                                    zzljVar.l = new zzju(zzljVar, zzicVar5);
                                                }
                                                zzljVar.l.b(jMax);
                                            }
                                        }
                                        zzhhVar.o.b(true);
                                    }
                                    zzguVar2 = zzguVar;
                                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                        zF = zzicVar6.f();
                                        sharedPreferences = zzhhVar.f31808c;
                                        if (sharedPreferences == null) {
                                            zContains = z2;
                                        } else {
                                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                                        }
                                        if (!zContains && !zzalVar.u()) {
                                            zzhhVar.o(!zF);
                                        }
                                        if (zF) {
                                            zzic.l(zzljVar);
                                            zzljVar.u();
                                        }
                                        zzoc zzocVar2 = zzicVar6.f31843h;
                                        zzic.l(zzocVar2);
                                        zzocVar2.f31937e.a();
                                        zzicVar6.p().k(new AtomicReference());
                                        zzicVar6.p().l(zzhhVar.y.a());
                                    }
                                } else {
                                    if (zzicVar4.f()) {
                                        if (zzppVar2.J("android.permission.INTERNET")) {
                                            zzgsVar6 = zzgsVar5;
                                        } else {
                                            zzic.m(zzguVar);
                                            zzgsVar6 = zzgsVar5;
                                            zzgsVar6.a("App is missing INTERNET permission");
                                        }
                                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                        }
                                        zzicVar6 = zzicVar4;
                                        context = zzicVar6.f31838a;
                                        if (!Wrappers.a(context).c() && !zzalVar.j()) {
                                            if (!zzpp.b0(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                            }
                                            if (!zzpp.B(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                                            }
                                        }
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                    } else {
                                        zzicVar6 = zzicVar4;
                                    }
                                    zzguVar2 = zzguVar;
                                }
                                zzaif.a();
                                if (zzalVar.r(null, zzfy.P0)) {
                                    zzppVar2.g();
                                    if (zzppVar2.D() == j3) {
                                        long jIntValue2 = ((Integer) zzfy.w0.a(null)).intValue();
                                        long jNextInt2 = new Random().nextInt(5000);
                                        zzicVar6.f31846k.getClass();
                                        jMax = Math.max(500L, ((jIntValue2 * 1000) + jNextInt2) - SystemClock.elapsedRealtime());
                                        if (jMax > 500) {
                                            zzic.m(zzguVar2);
                                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                        }
                                        zzic.l(zzljVar);
                                        zzljVar.g();
                                        if (zzljVar.l == null) {
                                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                                        }
                                        zzljVar.l.b(jMax);
                                    }
                                }
                                zzhhVar.o.b(true);
                            }
                            zzicVar4 = zzicVar7;
                            zzgsVar5 = zzgsVar4;
                            if (TextUtils.isEmpty(zzicVar4.r().n())) {
                                z2 = false;
                            } else {
                                if (i4 == 0 && i4 != 30 && i4 != 10 && i4 != 40) {
                                    zzjlVar = null;
                                    z2 = false;
                                    if (zzjlVar != null) {
                                        zzic.l(zzljVar);
                                        zzljVar.L(zzjlVar, true);
                                    } else {
                                        zzjlVar = zzjlVarN;
                                    }
                                    zzic.l(zzljVar);
                                    zzicVar5 = zzljVar.f31850a;
                                    zzljVar.P(zzjlVar);
                                    zzhhVar.g();
                                    int i6 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                                    zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                                    if (zzjiVarW3 != zzjiVar) {
                                        zzic.m(zzguVar);
                                        zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                                    }
                                    zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                                    if (zzjiVarW4 == zzjiVar) {
                                        if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                            zzic.l(zzljVar);
                                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                        }
                                    } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                        zzic.l(zzljVar);
                                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                    }
                                    boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                                    if (boolT != null) {
                                        zzic.m(zzguVar);
                                        zzgsVar.a("TCF client enabled.");
                                        zzic.l(zzljVar);
                                        zzljVar.g();
                                        zzgu zzguVar12 = zzicVar5.f31842f;
                                        zzic.m(zzguVar12);
                                        zzguVar12.m.a("Register tcfPrefChangeListener.");
                                        if (zzljVar.t == null) {
                                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                    zzlj zzljVar2 = zzljVar;
                                                    zzljVar2.getClass();
                                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                        zzgu zzguVar13 = zzljVar2.f31850a.f31842f;
                                                        zzic.m(zzguVar13);
                                                        zzguVar13.n.a("IABTCF_TCString change picked up in listener.");
                                                        zzkb zzkbVar = zzljVar2.u;
                                                        Preconditions.h(zzkbVar);
                                                        zzkbVar.b(500L);
                                                    }
                                                }
                                            };
                                        }
                                        zzhh zzhhVar4 = zzicVar5.f31841e;
                                        zzic.k(zzhhVar4);
                                        zzhhVar4.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                        zzic.l(zzljVar);
                                        zzljVar.m();
                                    } else {
                                        zzic.m(zzguVar);
                                        zzgsVar.a("TCF client enabled.");
                                        zzic.l(zzljVar);
                                        zzljVar.g();
                                        zzgu zzguVar13 = zzicVar5.f31842f;
                                        zzic.m(zzguVar13);
                                        zzguVar13.m.a("Register tcfPrefChangeListener.");
                                        if (zzljVar.t == null) {
                                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                    zzlj zzljVar2 = zzljVar;
                                                    zzljVar2.getClass();
                                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                        zzgu zzguVar14 = zzljVar2.f31850a.f31842f;
                                                        zzic.m(zzguVar14);
                                                        zzguVar14.n.a("IABTCF_TCString change picked up in listener.");
                                                        zzkb zzkbVar = zzljVar2.u;
                                                        Preconditions.h(zzkbVar);
                                                        zzkbVar.b(500L);
                                                    }
                                                }
                                            };
                                        }
                                        zzhh zzhhVar5 = zzicVar5.f31841e;
                                        zzic.k(zzhhVar5);
                                        zzhhVar5.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                        zzic.l(zzljVar);
                                        zzljVar.m();
                                    }
                                    zzheVar = zzhhVar.f31810f;
                                    if (zzheVar.a() == 0) {
                                        zzic.m(zzguVar);
                                        zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                        zzheVar.b(j2);
                                    }
                                    zzic.l(zzljVar);
                                    zzxVar = zzljVar.q;
                                    if (zzxVar.c()) {
                                        zzhh zzhhVar6 = zzxVar.f32025a.f31841e;
                                        zzic.k(zzhhVar6);
                                        zzhhVar6.w.b(null);
                                    }
                                    if (zzicVar4.h()) {
                                        if (zzicVar4.f()) {
                                            if (zzppVar2.J("android.permission.INTERNET")) {
                                                zzic.m(zzguVar);
                                                zzgsVar6 = zzgsVar5;
                                                zzgsVar6.a("App is missing INTERNET permission");
                                            } else {
                                                zzgsVar6 = zzgsVar5;
                                            }
                                            if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                            }
                                            zzicVar6 = zzicVar4;
                                            context = zzicVar6.f31838a;
                                            if (!Wrappers.a(context).c()) {
                                                if (!zzpp.b0(context)) {
                                                    zzic.m(zzguVar);
                                                    zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                                }
                                                if (!zzpp.B(context)) {
                                                    zzic.m(zzguVar);
                                                    zzgsVar6.a("AppMeasurementService not registered/enabled");
                                                }
                                            }
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                        } else {
                                            zzicVar6 = zzicVar4;
                                        }
                                        zzguVar2 = zzguVar;
                                    } else {
                                        zzicVar6 = zzicVar4;
                                        if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                            String strN3 = zzicVar6.r().n();
                                            zzhhVar.g();
                                            String string3 = zzhhVar.k().getString("gmp_app_id", null);
                                            zIsEmpty = TextUtils.isEmpty(strN3);
                                            boolean zIsEmpty3 = TextUtils.isEmpty(string3);
                                            if (zIsEmpty) {
                                                zzhgVar2 = zzhgVar;
                                            } else {
                                                zzhgVar2 = zzhgVar;
                                            }
                                            String strN4 = zzicVar6.r().n();
                                            zzhhVar.g();
                                            SharedPreferences.Editor editorEdit5 = zzhhVar.k().edit();
                                            editorEdit5.putString("gmp_app_id", strN4);
                                            editorEdit5.apply();
                                        } else {
                                            zzhgVar2 = zzhgVar;
                                        }
                                        if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                            zzhgVar2.b(null);
                                        }
                                        zzic.l(zzljVar);
                                        zzljVar.g.set(zzhgVar2.a());
                                        zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                        zzguVar2 = zzguVar;
                                        if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                            zF = zzicVar6.f();
                                            sharedPreferences = zzhhVar.f31808c;
                                            if (sharedPreferences == null) {
                                                zContains = z2;
                                            } else {
                                                zContains = sharedPreferences.contains("deferred_analytics_collection");
                                            }
                                            if (!zContains) {
                                                zzhhVar.o(!zF);
                                            }
                                            if (zF) {
                                                zzic.l(zzljVar);
                                                zzljVar.u();
                                            }
                                            zzoc zzocVar3 = zzicVar6.f31843h;
                                            zzic.l(zzocVar3);
                                            zzocVar3.f31937e.a();
                                            zzicVar6.p().k(new AtomicReference());
                                            zzicVar6.p().l(zzhhVar.y.a());
                                        }
                                    }
                                    zzaif.a();
                                    if (zzalVar.r(null, zzfy.P0)) {
                                        zzppVar2.g();
                                        if (zzppVar2.D() == j3) {
                                            long jIntValue3 = ((Integer) zzfy.w0.a(null)).intValue();
                                            long jNextInt3 = new Random().nextInt(5000);
                                            zzicVar6.f31846k.getClass();
                                            jMax = Math.max(500L, ((jIntValue3 * 1000) + jNextInt3) - SystemClock.elapsedRealtime());
                                            if (jMax > 500) {
                                                zzic.m(zzguVar2);
                                                zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                            }
                                            zzic.l(zzljVar);
                                            zzljVar.g();
                                            if (zzljVar.l == null) {
                                                zzljVar.l = new zzju(zzljVar, zzicVar5);
                                            }
                                            zzljVar.l.b(jMax);
                                        }
                                    }
                                    zzhhVar.o.b(true);
                                }
                                zzic.l(zzljVar);
                                z2 = false;
                                zzljVar.L(new zzjl(null, null, -10), false);
                            }
                            zzjlVar = null;
                            if (zzjlVar != null) {
                                zzic.l(zzljVar);
                                zzljVar.L(zzjlVar, true);
                            } else {
                                zzjlVar = zzjlVarN;
                            }
                            zzic.l(zzljVar);
                            zzicVar5 = zzljVar.f31850a;
                            zzljVar.P(zzjlVar);
                            zzhhVar.g();
                            int i7 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                            zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                            if (zzjiVarW3 != zzjiVar) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                            }
                            zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                            if (zzjiVarW4 == zzjiVar) {
                                if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                            } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                            boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                            if (boolT != null) {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar14 = zzicVar5.f31842f;
                                zzic.m(zzguVar14);
                                zzguVar14.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar15 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar15);
                                                zzguVar15.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar7 = zzicVar5.f31841e;
                                zzic.k(zzhhVar7);
                                zzhhVar7.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            } else {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar15 = zzicVar5.f31842f;
                                zzic.m(zzguVar15);
                                zzguVar15.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar16 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar16);
                                                zzguVar16.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar8 = zzicVar5.f31841e;
                                zzic.k(zzhhVar8);
                                zzhhVar8.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            }
                            zzheVar = zzhhVar.f31810f;
                            if (zzheVar.a() == 0) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                zzheVar.b(j2);
                            }
                            zzic.l(zzljVar);
                            zzxVar = zzljVar.q;
                            if (zzxVar.c()) {
                                zzhh zzhhVar9 = zzxVar.f32025a.f31841e;
                                zzic.k(zzhhVar9);
                                zzhhVar9.w.b(null);
                            }
                            if (zzicVar4.h()) {
                                if (zzicVar4.f()) {
                                    if (zzppVar2.J("android.permission.INTERNET")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6 = zzgsVar5;
                                        zzgsVar6.a("App is missing INTERNET permission");
                                    } else {
                                        zzgsVar6 = zzgsVar5;
                                    }
                                    if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                    }
                                    zzicVar6 = zzicVar4;
                                    context = zzicVar6.f31838a;
                                    if (!Wrappers.a(context).c()) {
                                        if (!zzpp.b0(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                        }
                                        if (!zzpp.B(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementService not registered/enabled");
                                        }
                                    }
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                } else {
                                    zzicVar6 = zzicVar4;
                                }
                                zzguVar2 = zzguVar;
                            } else {
                                zzicVar6 = zzicVar4;
                                if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                    String strN5 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    String string4 = zzhhVar.k().getString("gmp_app_id", null);
                                    zIsEmpty = TextUtils.isEmpty(strN5);
                                    boolean zIsEmpty4 = TextUtils.isEmpty(string4);
                                    if (zIsEmpty) {
                                        zzhgVar2 = zzhgVar;
                                    } else {
                                        zzhgVar2 = zzhgVar;
                                    }
                                    String strN6 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    SharedPreferences.Editor editorEdit6 = zzhhVar.k().edit();
                                    editorEdit6.putString("gmp_app_id", strN6);
                                    editorEdit6.apply();
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                    zzhgVar2.b(null);
                                }
                                zzic.l(zzljVar);
                                zzljVar.g.set(zzhgVar2.a());
                                zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                zzguVar2 = zzguVar;
                                if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                    zF = zzicVar6.f();
                                    sharedPreferences = zzhhVar.f31808c;
                                    if (sharedPreferences == null) {
                                        zContains = z2;
                                    } else {
                                        zContains = sharedPreferences.contains("deferred_analytics_collection");
                                    }
                                    if (!zContains) {
                                        zzhhVar.o(!zF);
                                    }
                                    if (zF) {
                                        zzic.l(zzljVar);
                                        zzljVar.u();
                                    }
                                    zzoc zzocVar4 = zzicVar6.f31843h;
                                    zzic.l(zzocVar4);
                                    zzocVar4.f31937e.a();
                                    zzicVar6.p().k(new AtomicReference());
                                    zzicVar6.p().l(zzhhVar.y.a());
                                }
                            }
                            zzaif.a();
                            if (zzalVar.r(null, zzfy.P0)) {
                                zzppVar2.g();
                                if (zzppVar2.D() == j3) {
                                    long jIntValue4 = ((Integer) zzfy.w0.a(null)).intValue();
                                    long jNextInt4 = new Random().nextInt(5000);
                                    zzicVar6.f31846k.getClass();
                                    jMax = Math.max(500L, ((jIntValue4 * 1000) + jNextInt4) - SystemClock.elapsedRealtime());
                                    if (jMax > 500) {
                                        zzic.m(zzguVar2);
                                        zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    if (zzljVar.l == null) {
                                        zzljVar.l = new zzju(zzljVar, zzicVar5);
                                    }
                                    zzljVar.l.b(jMax);
                                }
                            }
                            zzhhVar.o.b(true);
                        }
                        zzgu zzguVar16 = zzicVar.f31842f;
                        zzic.m(zzguVar16);
                        zzguVar16.f31769f.a("Failed to load metadata: Metadata bundle is null");
                        numValueOf = null;
                        if (numValueOf != null) {
                            stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
                            if (stringArray == null) {
                                listAsList = null;
                            } else {
                                listAsList = Arrays.asList(stringArray);
                            }
                        } else {
                            listAsList = null;
                        }
                        if (listAsList != null) {
                            zzgiVar2.f31748k = listAsList;
                            break;
                        }
                        if (listAsList.isEmpty()) {
                            it = listAsList.iterator();
                            do {
                                if (it.hasNext()) {
                                    zzgiVar2.f31748k = listAsList;
                                    break;
                                } else {
                                    str3 = (String) it.next();
                                    zzppVar = zzicVar9.f31844i;
                                    zzic.k(zzppVar);
                                }
                            } while (zzppVar.k0("safelisted event", str3));
                        } else {
                            zzic.m(zzguVar6);
                            zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
                        }
                        if (packageManager != null) {
                            zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
                        } else {
                            zzgiVar2.n = 0;
                        }
                        zzgiVar2.f31850a.C.incrementAndGet();
                        zzgiVar2.f31741b = true;
                        zzlqVar = new zzlq(zzicVar7);
                        zzlqVar.i();
                        zzicVar7.u = zzlqVar;
                        if (!zzlqVar.f31741b) {
                            md.k("Can't initialize twice");
                            return;
                        }
                        zzic zzicVar11 = zzlqVar.f31850a;
                        zzlqVar.f31894c = (JobScheduler) zzicVar11.f31838a.getSystemService("jobscheduler");
                        zzicVar11.C.incrementAndGet();
                        zzlqVar.f31741b = true;
                        zzic.m(zzguVar3);
                        zzgsVar = zzguVar3.m;
                        zzgsVar2 = zzguVar3.l;
                        zzgsVar3 = zzguVar3.n;
                        zzgsVar4 = zzguVar3.f31769f;
                        zzalVar.m();
                        zzgsVar2.b(161000L, "App measurement initialized, version");
                        zzic.m(zzguVar3);
                        zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                        strM = zzgiVar.m();
                        if (zzppVar2.L(strM, zzalVar.f31553c)) {
                            zzic.m(zzguVar3);
                            zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                        } else {
                            zzic.m(zzguVar3);
                            zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
                        }
                        zzic.m(zzguVar3);
                        zzgsVar.a("Debug-level message logging enabled");
                        i3 = zzicVar7.A;
                        atomicInteger = zzicVar7.C;
                        if (i3 != atomicInteger.get()) {
                            zzic.m(zzguVar3);
                            zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
                        }
                        zzicVar7.v = true;
                        j2 = zzicVar7.D;
                        zzljVar = zzicVar7.m;
                        zzhz zzhzVar3 = zzicVar7.g;
                        zzic.m(zzhzVar3);
                        zzhzVar3.g();
                        zzic.j(zzicVar7.u);
                        zzinVarL = zzicVar7.u.l();
                        zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
                        zzaif.a();
                        zR = zzalVar.r(null, zzfy.P0);
                        if (zzinVarL == zzinVar) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (zR) {
                            zzppVar2.g();
                            if (zzppVar2.D() == 1) {
                                zzppVar2.g();
                                IntentFilter intentFilter4 = new IntentFilter();
                                j3 = 1;
                                intentFilter4.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                                intentFilter4.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                                zzicVar2 = zzicVar8;
                                z3 = z;
                                zzguVar = zzguVar3;
                                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter4, 2);
                                zzgu zzguVar17 = zzicVar2.f31842f;
                                zzic.m(zzguVar17);
                                zzguVar17.m.a("Registered app receiver");
                                if (z3) {
                                    zzic.j(zzicVar7.u);
                                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                                }
                            } else if (z) {
                                z = true;
                                zzppVar2.g();
                                IntentFilter intentFilter5 = new IntentFilter();
                                j3 = 1;
                                intentFilter5.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                                intentFilter5.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                                zzicVar2 = zzicVar8;
                                z3 = z;
                                zzguVar = zzguVar3;
                                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter5, 2);
                                zzgu zzguVar18 = zzicVar2.f31842f;
                                zzic.m(zzguVar18);
                                zzguVar18.m.a("Registered app receiver");
                                if (z3) {
                                    zzic.j(zzicVar7.u);
                                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                                }
                            } else {
                                zzguVar = zzguVar3;
                                j3 = 1;
                                zzicVar2 = zzicVar8;
                            }
                        } else if (z) {
                            z = true;
                            zzppVar2.g();
                            IntentFilter intentFilter6 = new IntentFilter();
                            j3 = 1;
                            intentFilter6.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                            intentFilter6.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                            zzicVar2 = zzicVar8;
                            z3 = z;
                            zzguVar = zzguVar3;
                            ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter6, 2);
                            zzgu zzguVar19 = zzicVar2.f31842f;
                            zzic.m(zzguVar19);
                            zzguVar19.m.a("Registered app receiver");
                            if (z3) {
                                zzic.j(zzicVar7.u);
                                zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                            }
                        } else {
                            zzguVar = zzguVar3;
                            j3 = 1;
                            zzicVar2 = zzicVar8;
                        }
                        zzhgVar = zzhhVar.g;
                        zzjlVarN = zzhhVar.n();
                        i4 = zzjlVarN.f31854b;
                        zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
                        zzicVar3 = zzicVar2;
                        zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
                        zzjiVar = zzji.UNINITIALIZED;
                        if (zzjiVarW == zzjiVar) {
                            zzicVar4 = zzicVar7;
                            zzgsVar5 = zzgsVar4;
                            if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                                if (TextUtils.isEmpty(zzicVar4.r().n())) {
                                    if (i4 == 0) {
                                    }
                                    zzic.l(zzljVar);
                                    z2 = false;
                                    zzljVar.L(new zzjl(null, null, -10), false);
                                } else {
                                    z2 = false;
                                }
                                zzjlVar = null;
                                if (zzjlVar != null) {
                                    zzic.l(zzljVar);
                                    zzljVar.L(zzjlVar, true);
                                } else {
                                    zzjlVar = zzjlVarN;
                                }
                                zzic.l(zzljVar);
                                zzicVar5 = zzljVar.f31850a;
                                zzljVar.P(zzjlVar);
                                zzhhVar.g();
                                int i8 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                                if (zzjiVarW3 != zzjiVar) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                                }
                                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                                if (zzjiVarW4 == zzjiVar) {
                                    if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                        zzic.l(zzljVar);
                                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                    }
                                } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                                if (boolT != null) {
                                    zzic.m(zzguVar);
                                    zzgsVar.a("TCF client enabled.");
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    zzgu zzguVar110 = zzicVar5.f31842f;
                                    zzic.m(zzguVar110);
                                    zzguVar110.m.a("Register tcfPrefChangeListener.");
                                    if (zzljVar.t == null) {
                                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                zzlj zzljVar2 = zzljVar;
                                                zzljVar2.getClass();
                                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                    zzgu zzguVar111 = zzljVar2.f31850a.f31842f;
                                                    zzic.m(zzguVar111);
                                                    zzguVar111.n.a("IABTCF_TCString change picked up in listener.");
                                                    zzkb zzkbVar = zzljVar2.u;
                                                    Preconditions.h(zzkbVar);
                                                    zzkbVar.b(500L);
                                                }
                                            }
                                        };
                                    }
                                    zzhh zzhhVar10 = zzicVar5.f31841e;
                                    zzic.k(zzhhVar10);
                                    zzhhVar10.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                    zzic.l(zzljVar);
                                    zzljVar.m();
                                } else {
                                    zzic.m(zzguVar);
                                    zzgsVar.a("TCF client enabled.");
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    zzgu zzguVar111 = zzicVar5.f31842f;
                                    zzic.m(zzguVar111);
                                    zzguVar111.m.a("Register tcfPrefChangeListener.");
                                    if (zzljVar.t == null) {
                                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                zzlj zzljVar2 = zzljVar;
                                                zzljVar2.getClass();
                                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                    zzgu zzguVar112 = zzljVar2.f31850a.f31842f;
                                                    zzic.m(zzguVar112);
                                                    zzguVar112.n.a("IABTCF_TCString change picked up in listener.");
                                                    zzkb zzkbVar = zzljVar2.u;
                                                    Preconditions.h(zzkbVar);
                                                    zzkbVar.b(500L);
                                                }
                                            }
                                        };
                                    }
                                    zzhh zzhhVar11 = zzicVar5.f31841e;
                                    zzic.k(zzhhVar11);
                                    zzhhVar11.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                    zzic.l(zzljVar);
                                    zzljVar.m();
                                }
                                zzheVar = zzhhVar.f31810f;
                                if (zzheVar.a() == 0) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                    zzheVar.b(j2);
                                }
                                zzic.l(zzljVar);
                                zzxVar = zzljVar.q;
                                if (zzxVar.c()) {
                                    zzhh zzhhVar12 = zzxVar.f32025a.f31841e;
                                    zzic.k(zzhhVar12);
                                    zzhhVar12.w.b(null);
                                }
                                if (zzicVar4.h()) {
                                    if (zzicVar4.f()) {
                                        if (zzppVar2.J("android.permission.INTERNET")) {
                                            zzic.m(zzguVar);
                                            zzgsVar6 = zzgsVar5;
                                            zzgsVar6.a("App is missing INTERNET permission");
                                        } else {
                                            zzgsVar6 = zzgsVar5;
                                        }
                                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                        }
                                        zzicVar6 = zzicVar4;
                                        context = zzicVar6.f31838a;
                                        if (!Wrappers.a(context).c()) {
                                            if (!zzpp.b0(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                            }
                                            if (!zzpp.B(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                                            }
                                        }
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                    } else {
                                        zzicVar6 = zzicVar4;
                                    }
                                    zzguVar2 = zzguVar;
                                } else {
                                    zzicVar6 = zzicVar4;
                                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                        String strN7 = zzicVar6.r().n();
                                        zzhhVar.g();
                                        String string5 = zzhhVar.k().getString("gmp_app_id", null);
                                        zIsEmpty = TextUtils.isEmpty(strN7);
                                        boolean zIsEmpty5 = TextUtils.isEmpty(string5);
                                        if (zIsEmpty) {
                                            zzhgVar2 = zzhgVar;
                                        } else {
                                            zzhgVar2 = zzhgVar;
                                        }
                                        String strN8 = zzicVar6.r().n();
                                        zzhhVar.g();
                                        SharedPreferences.Editor editorEdit7 = zzhhVar.k().edit();
                                        editorEdit7.putString("gmp_app_id", strN8);
                                        editorEdit7.apply();
                                    } else {
                                        zzhgVar2 = zzhgVar;
                                    }
                                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                        zzhgVar2.b(null);
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g.set(zzhgVar2.a());
                                    zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                    zzguVar2 = zzguVar;
                                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                        zF = zzicVar6.f();
                                        sharedPreferences = zzhhVar.f31808c;
                                        if (sharedPreferences == null) {
                                            zContains = z2;
                                        } else {
                                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                                        }
                                        if (!zContains) {
                                            zzhhVar.o(!zF);
                                        }
                                        if (zF) {
                                            zzic.l(zzljVar);
                                            zzljVar.u();
                                        }
                                        zzoc zzocVar5 = zzicVar6.f31843h;
                                        zzic.l(zzocVar5);
                                        zzocVar5.f31937e.a();
                                        zzicVar6.p().k(new AtomicReference());
                                        zzicVar6.p().l(zzhhVar.y.a());
                                    }
                                }
                                zzaif.a();
                                if (zzalVar.r(null, zzfy.P0)) {
                                    zzppVar2.g();
                                    if (zzppVar2.D() == j3) {
                                        long jIntValue5 = ((Integer) zzfy.w0.a(null)).intValue();
                                        long jNextInt5 = new Random().nextInt(5000);
                                        zzicVar6.f31846k.getClass();
                                        jMax = Math.max(500L, ((jIntValue5 * 1000) + jNextInt5) - SystemClock.elapsedRealtime());
                                        if (jMax > 500) {
                                            zzic.m(zzguVar2);
                                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                        }
                                        zzic.l(zzljVar);
                                        zzljVar.g();
                                        if (zzljVar.l == null) {
                                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                                        }
                                        zzljVar.l.b(jMax);
                                    }
                                }
                                zzhhVar.o.b(true);
                            }
                            EnumMap enumMap3 = new EnumMap(zzjk.class);
                            enumMap3.put(zzjk.AD_STORAGE, zzjiVarW);
                            enumMap3.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                            zzjlVar = new zzjl(enumMap3, -10);
                        } else {
                            zzicVar4 = zzicVar7;
                            zzgsVar5 = zzgsVar4;
                            if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                                if (TextUtils.isEmpty(zzicVar4.r().n())) {
                                    if (i4 == 0) {
                                    }
                                    zzic.l(zzljVar);
                                    z2 = false;
                                    zzljVar.L(new zzjl(null, null, -10), false);
                                } else {
                                    z2 = false;
                                }
                                zzjlVar = null;
                                if (zzjlVar != null) {
                                    zzic.l(zzljVar);
                                    zzljVar.L(zzjlVar, true);
                                } else {
                                    zzjlVar = zzjlVarN;
                                }
                                zzic.l(zzljVar);
                                zzicVar5 = zzljVar.f31850a;
                                zzljVar.P(zzjlVar);
                                zzhhVar.g();
                                int i9 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                                if (zzjiVarW3 != zzjiVar) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                                }
                                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                                if (zzjiVarW4 == zzjiVar) {
                                    if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                        zzic.l(zzljVar);
                                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                    }
                                } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                                if (boolT != null) {
                                    zzic.m(zzguVar);
                                    zzgsVar.a("TCF client enabled.");
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    zzgu zzguVar112 = zzicVar5.f31842f;
                                    zzic.m(zzguVar112);
                                    zzguVar112.m.a("Register tcfPrefChangeListener.");
                                    if (zzljVar.t == null) {
                                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                zzlj zzljVar2 = zzljVar;
                                                zzljVar2.getClass();
                                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                    zzgu zzguVar113 = zzljVar2.f31850a.f31842f;
                                                    zzic.m(zzguVar113);
                                                    zzguVar113.n.a("IABTCF_TCString change picked up in listener.");
                                                    zzkb zzkbVar = zzljVar2.u;
                                                    Preconditions.h(zzkbVar);
                                                    zzkbVar.b(500L);
                                                }
                                            }
                                        };
                                    }
                                    zzhh zzhhVar13 = zzicVar5.f31841e;
                                    zzic.k(zzhhVar13);
                                    zzhhVar13.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                    zzic.l(zzljVar);
                                    zzljVar.m();
                                } else {
                                    zzic.m(zzguVar);
                                    zzgsVar.a("TCF client enabled.");
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    zzgu zzguVar113 = zzicVar5.f31842f;
                                    zzic.m(zzguVar113);
                                    zzguVar113.m.a("Register tcfPrefChangeListener.");
                                    if (zzljVar.t == null) {
                                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                                zzlj zzljVar2 = zzljVar;
                                                zzljVar2.getClass();
                                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                    zzgu zzguVar114 = zzljVar2.f31850a.f31842f;
                                                    zzic.m(zzguVar114);
                                                    zzguVar114.n.a("IABTCF_TCString change picked up in listener.");
                                                    zzkb zzkbVar = zzljVar2.u;
                                                    Preconditions.h(zzkbVar);
                                                    zzkbVar.b(500L);
                                                }
                                            }
                                        };
                                    }
                                    zzhh zzhhVar14 = zzicVar5.f31841e;
                                    zzic.k(zzhhVar14);
                                    zzhhVar14.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                    zzic.l(zzljVar);
                                    zzljVar.m();
                                }
                                zzheVar = zzhhVar.f31810f;
                                if (zzheVar.a() == 0) {
                                    zzic.m(zzguVar);
                                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                    zzheVar.b(j2);
                                }
                                zzic.l(zzljVar);
                                zzxVar = zzljVar.q;
                                if (zzxVar.c()) {
                                    zzhh zzhhVar15 = zzxVar.f32025a.f31841e;
                                    zzic.k(zzhhVar15);
                                    zzhhVar15.w.b(null);
                                }
                                if (zzicVar4.h()) {
                                    if (zzicVar4.f()) {
                                        if (zzppVar2.J("android.permission.INTERNET")) {
                                            zzic.m(zzguVar);
                                            zzgsVar6 = zzgsVar5;
                                            zzgsVar6.a("App is missing INTERNET permission");
                                        } else {
                                            zzgsVar6 = zzgsVar5;
                                        }
                                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                        }
                                        zzicVar6 = zzicVar4;
                                        context = zzicVar6.f31838a;
                                        if (!Wrappers.a(context).c()) {
                                            if (!zzpp.b0(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                            }
                                            if (!zzpp.B(context)) {
                                                zzic.m(zzguVar);
                                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                                            }
                                        }
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                    } else {
                                        zzicVar6 = zzicVar4;
                                    }
                                    zzguVar2 = zzguVar;
                                } else {
                                    zzicVar6 = zzicVar4;
                                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                        String strN9 = zzicVar6.r().n();
                                        zzhhVar.g();
                                        String string6 = zzhhVar.k().getString("gmp_app_id", null);
                                        zIsEmpty = TextUtils.isEmpty(strN9);
                                        boolean zIsEmpty6 = TextUtils.isEmpty(string6);
                                        if (zIsEmpty) {
                                            zzhgVar2 = zzhgVar;
                                        } else {
                                            zzhgVar2 = zzhgVar;
                                        }
                                        String strN10 = zzicVar6.r().n();
                                        zzhhVar.g();
                                        SharedPreferences.Editor editorEdit8 = zzhhVar.k().edit();
                                        editorEdit8.putString("gmp_app_id", strN10);
                                        editorEdit8.apply();
                                    } else {
                                        zzhgVar2 = zzhgVar;
                                    }
                                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                        zzhgVar2.b(null);
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g.set(zzhgVar2.a());
                                    zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                    zzguVar2 = zzguVar;
                                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                        zF = zzicVar6.f();
                                        sharedPreferences = zzhhVar.f31808c;
                                        if (sharedPreferences == null) {
                                            zContains = z2;
                                        } else {
                                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                                        }
                                        if (!zContains) {
                                            zzhhVar.o(!zF);
                                        }
                                        if (zF) {
                                            zzic.l(zzljVar);
                                            zzljVar.u();
                                        }
                                        zzoc zzocVar6 = zzicVar6.f31843h;
                                        zzic.l(zzocVar6);
                                        zzocVar6.f31937e.a();
                                        zzicVar6.p().k(new AtomicReference());
                                        zzicVar6.p().l(zzhhVar.y.a());
                                    }
                                }
                                zzaif.a();
                                if (zzalVar.r(null, zzfy.P0)) {
                                    zzppVar2.g();
                                    if (zzppVar2.D() == j3) {
                                        long jIntValue6 = ((Integer) zzfy.w0.a(null)).intValue();
                                        long jNextInt6 = new Random().nextInt(5000);
                                        zzicVar6.f31846k.getClass();
                                        jMax = Math.max(500L, ((jIntValue6 * 1000) + jNextInt6) - SystemClock.elapsedRealtime());
                                        if (jMax > 500) {
                                            zzic.m(zzguVar2);
                                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                        }
                                        zzic.l(zzljVar);
                                        zzljVar.g();
                                        if (zzljVar.l == null) {
                                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                                        }
                                        zzljVar.l.b(jMax);
                                    }
                                }
                                zzhhVar.o.b(true);
                            }
                            EnumMap enumMap4 = new EnumMap(zzjk.class);
                            enumMap4.put(zzjk.AD_STORAGE, zzjiVarW);
                            enumMap4.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                            zzjlVar = new zzjl(enumMap4, -10);
                        }
                        z2 = false;
                        if (zzjlVar != null) {
                            zzic.l(zzljVar);
                            zzljVar.L(zzjlVar, true);
                        } else {
                            zzjlVar = zzjlVarN;
                        }
                        zzic.l(zzljVar);
                        zzicVar5 = zzljVar.f31850a;
                        zzljVar.P(zzjlVar);
                        zzhhVar.g();
                        int i10 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                        zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                        if (zzjiVarW3 != zzjiVar) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                        }
                        zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                        if (zzjiVarW4 == zzjiVar) {
                            if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                        } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                        boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                        if (boolT != null) {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar114 = zzicVar5.f31842f;
                            zzic.m(zzguVar114);
                            zzguVar114.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar115 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar115);
                                            zzguVar115.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar16 = zzicVar5.f31841e;
                            zzic.k(zzhhVar16);
                            zzhhVar16.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        } else {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar115 = zzicVar5.f31842f;
                            zzic.m(zzguVar115);
                            zzguVar115.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar116 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar116);
                                            zzguVar116.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar17 = zzicVar5.f31841e;
                            zzic.k(zzhhVar17);
                            zzhhVar17.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        }
                        zzheVar = zzhhVar.f31810f;
                        if (zzheVar.a() == 0) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                            zzheVar.b(j2);
                        }
                        zzic.l(zzljVar);
                        zzxVar = zzljVar.q;
                        if (zzxVar.c()) {
                            zzhh zzhhVar18 = zzxVar.f32025a.f31841e;
                            zzic.k(zzhhVar18);
                            zzhhVar18.w.b(null);
                        }
                        if (zzicVar4.h()) {
                            if (zzicVar4.f()) {
                                if (zzppVar2.J("android.permission.INTERNET")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6 = zzgsVar5;
                                    zzgsVar6.a("App is missing INTERNET permission");
                                } else {
                                    zzgsVar6 = zzgsVar5;
                                }
                                if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                }
                                zzicVar6 = zzicVar4;
                                context = zzicVar6.f31838a;
                                if (!Wrappers.a(context).c()) {
                                    if (!zzpp.b0(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                    }
                                    if (!zzpp.B(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementService not registered/enabled");
                                    }
                                }
                                zzic.m(zzguVar);
                                zzgsVar6.a("Uploading is not possible. App measurement disabled");
                            } else {
                                zzicVar6 = zzicVar4;
                            }
                            zzguVar2 = zzguVar;
                        } else {
                            zzicVar6 = zzicVar4;
                            if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                String strN11 = zzicVar6.r().n();
                                zzhhVar.g();
                                String string7 = zzhhVar.k().getString("gmp_app_id", null);
                                zIsEmpty = TextUtils.isEmpty(strN11);
                                boolean zIsEmpty7 = TextUtils.isEmpty(string7);
                                if (zIsEmpty) {
                                    zzhgVar2 = zzhgVar;
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                String strN12 = zzicVar6.r().n();
                                zzhhVar.g();
                                SharedPreferences.Editor editorEdit9 = zzhhVar.k().edit();
                                editorEdit9.putString("gmp_app_id", strN12);
                                editorEdit9.apply();
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                zzhgVar2.b(null);
                            }
                            zzic.l(zzljVar);
                            zzljVar.g.set(zzhgVar2.a());
                            zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                            zzguVar2 = zzguVar;
                            if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                zF = zzicVar6.f();
                                sharedPreferences = zzhhVar.f31808c;
                                if (sharedPreferences == null) {
                                    zContains = z2;
                                } else {
                                    zContains = sharedPreferences.contains("deferred_analytics_collection");
                                }
                                if (!zContains) {
                                    zzhhVar.o(!zF);
                                }
                                if (zF) {
                                    zzic.l(zzljVar);
                                    zzljVar.u();
                                }
                                zzoc zzocVar7 = zzicVar6.f31843h;
                                zzic.l(zzocVar7);
                                zzocVar7.f31937e.a();
                                zzicVar6.p().k(new AtomicReference());
                                zzicVar6.p().l(zzhhVar.y.a());
                            }
                        }
                        zzaif.a();
                        if (zzalVar.r(null, zzfy.P0)) {
                            zzppVar2.g();
                            if (zzppVar2.D() == j3) {
                                long jIntValue7 = ((Integer) zzfy.w0.a(null)).intValue();
                                long jNextInt7 = new Random().nextInt(5000);
                                zzicVar6.f31846k.getClass();
                                jMax = Math.max(500L, ((jIntValue7 * 1000) + jNextInt7) - SystemClock.elapsedRealtime());
                                if (jMax > 500) {
                                    zzic.m(zzguVar2);
                                    zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                }
                                zzic.l(zzljVar);
                                zzljVar.g();
                                if (zzljVar.l == null) {
                                    zzljVar.l = new zzju(zzljVar, zzicVar5);
                                }
                                zzljVar.l.b(jMax);
                            }
                        }
                        zzhhVar.o.b(true);
                    }
                    str6 = "manual_install";
                    packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
                    if (packageInfo != null) {
                        applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                        if (TextUtils.isEmpty(applicationLabel)) {
                            string = applicationLabel.toString();
                        } else {
                            string = "Unknown";
                        }
                        str = packageInfo.versionName;
                        i2 = packageInfo.versionCode;
                        zzgiVar = zzgiVar;
                        str2 = installerPackageName;
                    }
                } catch (PackageManager.NameNotFoundException unused5) {
                    string = "Unknown";
                }
                installerPackageName = str6;
                zzgiVar2.f31742c = packageName;
                zzgiVar2.f31744f = str2;
                zzgiVar2.d = str;
                zzgiVar2.f31743e = i2;
                zzgiVar2.g = string;
                zzgiVar2.f31745h = 0L;
                iG = zzicVar9.g();
                if (iG == 0) {
                    zzic.m(zzguVar6);
                    zzguVar6.n.a("App measurement collection enabled");
                } else if (iG == 1) {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement deactivated via the manifest");
                } else if (iG == 3) {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                } else if (iG == 4) {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement disabled via the manifest");
                } else if (iG == 6) {
                    zzic.m(zzguVar6);
                    zzguVar6.f31773k.a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                } else if (iG == 7) {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement disabled via the global data collection setting");
                } else if (iG != 8) {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement disabled");
                    zzic.m(zzguVar6);
                    zzguVar6.g.a("Invalid scion state in identity");
                } else {
                    zzic.m(zzguVar6);
                    zzguVar6.l.a("App measurement disabled due to denied storage consent");
                }
                zzgiVar2.o = "";
                strA = zzgiVar2.m;
                if (TextUtils.isEmpty(strA)) {
                    strA = zzlt.a(context2, zzicVar9.p);
                }
                if (!TextUtils.isEmpty(strA)) {
                    str4 = strA;
                }
                zzgiVar2.o = str4;
                if (iG == 0) {
                    zzic.m(zzguVar6);
                    zzguVar6.n.c("App measurement enabled for app package, google app id", zzgiVar2.f31742c, zzgiVar2.o);
                }
                zzgiVar2.f31748k = null;
                zzal zzalVar3 = zzicVar9.d;
                zzicVar = zzalVar3.f31850a;
                Preconditions.e("analytics.safelisted_events");
                bundleS = zzalVar3.s();
                if (bundleS != null) {
                    if (bundleS.containsKey("analytics.safelisted_events")) {
                        numValueOf = Integer.valueOf(bundleS.getInt("analytics.safelisted_events"));
                    }
                    if (numValueOf != null) {
                        stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
                        if (stringArray == null) {
                            listAsList = null;
                        } else {
                            listAsList = Arrays.asList(stringArray);
                        }
                    } else {
                        listAsList = null;
                    }
                    if (listAsList != null) {
                        zzgiVar2.f31748k = listAsList;
                        break;
                    }
                    if (listAsList.isEmpty()) {
                        it = listAsList.iterator();
                        do {
                            if (it.hasNext()) {
                                zzgiVar2.f31748k = listAsList;
                                break;
                            } else {
                                str3 = (String) it.next();
                                zzppVar = zzicVar9.f31844i;
                                zzic.k(zzppVar);
                            }
                        } while (zzppVar.k0("safelisted event", str3));
                    } else {
                        zzic.m(zzguVar6);
                        zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
                    }
                    if (packageManager != null) {
                        zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
                    } else {
                        zzgiVar2.n = 0;
                    }
                    zzgiVar2.f31850a.C.incrementAndGet();
                    zzgiVar2.f31741b = true;
                    zzlqVar = new zzlq(zzicVar7);
                    zzlqVar.i();
                    zzicVar7.u = zzlqVar;
                    if (!zzlqVar.f31741b) {
                        md.k("Can't initialize twice");
                        return;
                    }
                    zzic zzicVar12 = zzlqVar.f31850a;
                    zzlqVar.f31894c = (JobScheduler) zzicVar12.f31838a.getSystemService("jobscheduler");
                    zzicVar12.C.incrementAndGet();
                    zzlqVar.f31741b = true;
                    zzic.m(zzguVar3);
                    zzgsVar = zzguVar3.m;
                    zzgsVar2 = zzguVar3.l;
                    zzgsVar3 = zzguVar3.n;
                    zzgsVar4 = zzguVar3.f31769f;
                    zzalVar.m();
                    zzgsVar2.b(161000L, "App measurement initialized, version");
                    zzic.m(zzguVar3);
                    zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                    strM = zzgiVar.m();
                    if (zzppVar2.L(strM, zzalVar.f31553c)) {
                        zzic.m(zzguVar3);
                        zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                    } else {
                        zzic.m(zzguVar3);
                        zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
                    }
                    zzic.m(zzguVar3);
                    zzgsVar.a("Debug-level message logging enabled");
                    i3 = zzicVar7.A;
                    atomicInteger = zzicVar7.C;
                    if (i3 != atomicInteger.get()) {
                        zzic.m(zzguVar3);
                        zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
                    }
                    zzicVar7.v = true;
                    j2 = zzicVar7.D;
                    zzljVar = zzicVar7.m;
                    zzhz zzhzVar4 = zzicVar7.g;
                    zzic.m(zzhzVar4);
                    zzhzVar4.g();
                    zzic.j(zzicVar7.u);
                    zzinVarL = zzicVar7.u.l();
                    zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
                    zzaif.a();
                    zR = zzalVar.r(null, zzfy.P0);
                    if (zzinVarL == zzinVar) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (zR) {
                        zzppVar2.g();
                        if (zzppVar2.D() == 1) {
                            zzppVar2.g();
                            IntentFilter intentFilter7 = new IntentFilter();
                            j3 = 1;
                            intentFilter7.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                            intentFilter7.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                            zzicVar2 = zzicVar8;
                            z3 = z;
                            zzguVar = zzguVar3;
                            ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter7, 2);
                            zzgu zzguVar116 = zzicVar2.f31842f;
                            zzic.m(zzguVar116);
                            zzguVar116.m.a("Registered app receiver");
                            if (z3) {
                                zzic.j(zzicVar7.u);
                                zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                            }
                        } else if (z) {
                            z = true;
                            zzppVar2.g();
                            IntentFilter intentFilter8 = new IntentFilter();
                            j3 = 1;
                            intentFilter8.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                            intentFilter8.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                            zzicVar2 = zzicVar8;
                            z3 = z;
                            zzguVar = zzguVar3;
                            ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter8, 2);
                            zzgu zzguVar117 = zzicVar2.f31842f;
                            zzic.m(zzguVar117);
                            zzguVar117.m.a("Registered app receiver");
                            if (z3) {
                                zzic.j(zzicVar7.u);
                                zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                            }
                        } else {
                            zzguVar = zzguVar3;
                            j3 = 1;
                            zzicVar2 = zzicVar8;
                        }
                    } else if (z) {
                        z = true;
                        zzppVar2.g();
                        IntentFilter intentFilter9 = new IntentFilter();
                        j3 = 1;
                        intentFilter9.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                        intentFilter9.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                        zzicVar2 = zzicVar8;
                        z3 = z;
                        zzguVar = zzguVar3;
                        ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter9, 2);
                        zzgu zzguVar118 = zzicVar2.f31842f;
                        zzic.m(zzguVar118);
                        zzguVar118.m.a("Registered app receiver");
                        if (z3) {
                            zzic.j(zzicVar7.u);
                            zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                        }
                    } else {
                        zzguVar = zzguVar3;
                        j3 = 1;
                        zzicVar2 = zzicVar8;
                    }
                    zzhgVar = zzhhVar.g;
                    zzjlVarN = zzhhVar.n();
                    i4 = zzjlVarN.f31854b;
                    zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
                    zzicVar3 = zzicVar2;
                    zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
                    zzjiVar = zzji.UNINITIALIZED;
                    if (zzjiVarW == zzjiVar) {
                        zzicVar4 = zzicVar7;
                        zzgsVar5 = zzgsVar4;
                        if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                            if (TextUtils.isEmpty(zzicVar4.r().n())) {
                                if (i4 == 0) {
                                }
                                zzic.l(zzljVar);
                                z2 = false;
                                zzljVar.L(new zzjl(null, null, -10), false);
                            } else {
                                z2 = false;
                            }
                            zzjlVar = null;
                            if (zzjlVar != null) {
                                zzic.l(zzljVar);
                                zzljVar.L(zzjlVar, true);
                            } else {
                                zzjlVar = zzjlVarN;
                            }
                            zzic.l(zzljVar);
                            zzicVar5 = zzljVar.f31850a;
                            zzljVar.P(zzjlVar);
                            zzhhVar.g();
                            int i11 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                            zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                            if (zzjiVarW3 != zzjiVar) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                            }
                            zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                            if (zzjiVarW4 == zzjiVar) {
                                if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                            } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                            boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                            if (boolT != null) {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar119 = zzicVar5.f31842f;
                                zzic.m(zzguVar119);
                                zzguVar119.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar1110 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar1110);
                                                zzguVar1110.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar19 = zzicVar5.f31841e;
                                zzic.k(zzhhVar19);
                                zzhhVar19.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            } else {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar1110 = zzicVar5.f31842f;
                                zzic.m(zzguVar1110);
                                zzguVar1110.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar1111 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar1111);
                                                zzguVar1111.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar110 = zzicVar5.f31841e;
                                zzic.k(zzhhVar110);
                                zzhhVar110.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            }
                            zzheVar = zzhhVar.f31810f;
                            if (zzheVar.a() == 0) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                zzheVar.b(j2);
                            }
                            zzic.l(zzljVar);
                            zzxVar = zzljVar.q;
                            if (zzxVar.c()) {
                                zzhh zzhhVar111 = zzxVar.f32025a.f31841e;
                                zzic.k(zzhhVar111);
                                zzhhVar111.w.b(null);
                            }
                            if (zzicVar4.h()) {
                                if (zzicVar4.f()) {
                                    if (zzppVar2.J("android.permission.INTERNET")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6 = zzgsVar5;
                                        zzgsVar6.a("App is missing INTERNET permission");
                                    } else {
                                        zzgsVar6 = zzgsVar5;
                                    }
                                    if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                    }
                                    zzicVar6 = zzicVar4;
                                    context = zzicVar6.f31838a;
                                    if (!Wrappers.a(context).c()) {
                                        if (!zzpp.b0(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                        }
                                        if (!zzpp.B(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementService not registered/enabled");
                                        }
                                    }
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                } else {
                                    zzicVar6 = zzicVar4;
                                }
                                zzguVar2 = zzguVar;
                            } else {
                                zzicVar6 = zzicVar4;
                                if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                    String strN13 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    String string8 = zzhhVar.k().getString("gmp_app_id", null);
                                    zIsEmpty = TextUtils.isEmpty(strN13);
                                    boolean zIsEmpty8 = TextUtils.isEmpty(string8);
                                    if (zIsEmpty) {
                                        zzhgVar2 = zzhgVar;
                                    } else {
                                        zzhgVar2 = zzhgVar;
                                    }
                                    String strN14 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    SharedPreferences.Editor editorEdit10 = zzhhVar.k().edit();
                                    editorEdit10.putString("gmp_app_id", strN14);
                                    editorEdit10.apply();
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                    zzhgVar2.b(null);
                                }
                                zzic.l(zzljVar);
                                zzljVar.g.set(zzhgVar2.a());
                                zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                zzguVar2 = zzguVar;
                                if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                    zF = zzicVar6.f();
                                    sharedPreferences = zzhhVar.f31808c;
                                    if (sharedPreferences == null) {
                                        zContains = z2;
                                    } else {
                                        zContains = sharedPreferences.contains("deferred_analytics_collection");
                                    }
                                    if (!zContains) {
                                        zzhhVar.o(!zF);
                                    }
                                    if (zF) {
                                        zzic.l(zzljVar);
                                        zzljVar.u();
                                    }
                                    zzoc zzocVar8 = zzicVar6.f31843h;
                                    zzic.l(zzocVar8);
                                    zzocVar8.f31937e.a();
                                    zzicVar6.p().k(new AtomicReference());
                                    zzicVar6.p().l(zzhhVar.y.a());
                                }
                            }
                            zzaif.a();
                            if (zzalVar.r(null, zzfy.P0)) {
                                zzppVar2.g();
                                if (zzppVar2.D() == j3) {
                                    long jIntValue8 = ((Integer) zzfy.w0.a(null)).intValue();
                                    long jNextInt8 = new Random().nextInt(5000);
                                    zzicVar6.f31846k.getClass();
                                    jMax = Math.max(500L, ((jIntValue8 * 1000) + jNextInt8) - SystemClock.elapsedRealtime());
                                    if (jMax > 500) {
                                        zzic.m(zzguVar2);
                                        zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    if (zzljVar.l == null) {
                                        zzljVar.l = new zzju(zzljVar, zzicVar5);
                                    }
                                    zzljVar.l.b(jMax);
                                }
                            }
                            zzhhVar.o.b(true);
                        }
                        EnumMap enumMap5 = new EnumMap(zzjk.class);
                        enumMap5.put(zzjk.AD_STORAGE, zzjiVarW);
                        enumMap5.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                        zzjlVar = new zzjl(enumMap5, -10);
                    } else {
                        zzicVar4 = zzicVar7;
                        zzgsVar5 = zzgsVar4;
                        if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                            if (TextUtils.isEmpty(zzicVar4.r().n())) {
                                if (i4 == 0) {
                                }
                                zzic.l(zzljVar);
                                z2 = false;
                                zzljVar.L(new zzjl(null, null, -10), false);
                            } else {
                                z2 = false;
                            }
                            zzjlVar = null;
                            if (zzjlVar != null) {
                                zzic.l(zzljVar);
                                zzljVar.L(zzjlVar, true);
                            } else {
                                zzjlVar = zzjlVarN;
                            }
                            zzic.l(zzljVar);
                            zzicVar5 = zzljVar.f31850a;
                            zzljVar.P(zzjlVar);
                            zzhhVar.g();
                            int i12 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                            zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                            if (zzjiVarW3 != zzjiVar) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                            }
                            zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                            if (zzjiVarW4 == zzjiVar) {
                                if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                    zzic.l(zzljVar);
                                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                                }
                            } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                            boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                            if (boolT != null) {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar1111 = zzicVar5.f31842f;
                                zzic.m(zzguVar1111);
                                zzguVar1111.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar1112 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar1112);
                                                zzguVar1112.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar112 = zzicVar5.f31841e;
                                zzic.k(zzhhVar112);
                                zzhhVar112.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            } else {
                                zzic.m(zzguVar);
                                zzgsVar.a("TCF client enabled.");
                                zzic.l(zzljVar);
                                zzljVar.g();
                                zzgu zzguVar1112 = zzicVar5.f31842f;
                                zzic.m(zzguVar1112);
                                zzguVar1112.m.a("Register tcfPrefChangeListener.");
                                if (zzljVar.t == null) {
                                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                            zzlj zzljVar2 = zzljVar;
                                            zzljVar2.getClass();
                                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                                zzgu zzguVar1113 = zzljVar2.f31850a.f31842f;
                                                zzic.m(zzguVar1113);
                                                zzguVar1113.n.a("IABTCF_TCString change picked up in listener.");
                                                zzkb zzkbVar = zzljVar2.u;
                                                Preconditions.h(zzkbVar);
                                                zzkbVar.b(500L);
                                            }
                                        }
                                    };
                                }
                                zzhh zzhhVar113 = zzicVar5.f31841e;
                                zzic.k(zzhhVar113);
                                zzhhVar113.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                                zzic.l(zzljVar);
                                zzljVar.m();
                            }
                            zzheVar = zzhhVar.f31810f;
                            if (zzheVar.a() == 0) {
                                zzic.m(zzguVar);
                                zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                                zzheVar.b(j2);
                            }
                            zzic.l(zzljVar);
                            zzxVar = zzljVar.q;
                            if (zzxVar.c()) {
                                zzhh zzhhVar114 = zzxVar.f32025a.f31841e;
                                zzic.k(zzhhVar114);
                                zzhhVar114.w.b(null);
                            }
                            if (zzicVar4.h()) {
                                if (zzicVar4.f()) {
                                    if (zzppVar2.J("android.permission.INTERNET")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6 = zzgsVar5;
                                        zzgsVar6.a("App is missing INTERNET permission");
                                    } else {
                                        zzgsVar6 = zzgsVar5;
                                    }
                                    if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                    }
                                    zzicVar6 = zzicVar4;
                                    context = zzicVar6.f31838a;
                                    if (!Wrappers.a(context).c()) {
                                        if (!zzpp.b0(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                        }
                                        if (!zzpp.B(context)) {
                                            zzic.m(zzguVar);
                                            zzgsVar6.a("AppMeasurementService not registered/enabled");
                                        }
                                    }
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("Uploading is not possible. App measurement disabled");
                                } else {
                                    zzicVar6 = zzicVar4;
                                }
                                zzguVar2 = zzguVar;
                            } else {
                                zzicVar6 = zzicVar4;
                                if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                    String strN15 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    String string9 = zzhhVar.k().getString("gmp_app_id", null);
                                    zIsEmpty = TextUtils.isEmpty(strN15);
                                    boolean zIsEmpty9 = TextUtils.isEmpty(string9);
                                    if (zIsEmpty) {
                                        zzhgVar2 = zzhgVar;
                                    } else {
                                        zzhgVar2 = zzhgVar;
                                    }
                                    String strN16 = zzicVar6.r().n();
                                    zzhhVar.g();
                                    SharedPreferences.Editor editorEdit11 = zzhhVar.k().edit();
                                    editorEdit11.putString("gmp_app_id", strN16);
                                    editorEdit11.apply();
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                    zzhgVar2.b(null);
                                }
                                zzic.l(zzljVar);
                                zzljVar.g.set(zzhgVar2.a());
                                zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                zzguVar2 = zzguVar;
                                if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                    zF = zzicVar6.f();
                                    sharedPreferences = zzhhVar.f31808c;
                                    if (sharedPreferences == null) {
                                        zContains = z2;
                                    } else {
                                        zContains = sharedPreferences.contains("deferred_analytics_collection");
                                    }
                                    if (!zContains) {
                                        zzhhVar.o(!zF);
                                    }
                                    if (zF) {
                                        zzic.l(zzljVar);
                                        zzljVar.u();
                                    }
                                    zzoc zzocVar9 = zzicVar6.f31843h;
                                    zzic.l(zzocVar9);
                                    zzocVar9.f31937e.a();
                                    zzicVar6.p().k(new AtomicReference());
                                    zzicVar6.p().l(zzhhVar.y.a());
                                }
                            }
                            zzaif.a();
                            if (zzalVar.r(null, zzfy.P0)) {
                                zzppVar2.g();
                                if (zzppVar2.D() == j3) {
                                    long jIntValue9 = ((Integer) zzfy.w0.a(null)).intValue();
                                    long jNextInt9 = new Random().nextInt(5000);
                                    zzicVar6.f31846k.getClass();
                                    jMax = Math.max(500L, ((jIntValue9 * 1000) + jNextInt9) - SystemClock.elapsedRealtime());
                                    if (jMax > 500) {
                                        zzic.m(zzguVar2);
                                        zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                    }
                                    zzic.l(zzljVar);
                                    zzljVar.g();
                                    if (zzljVar.l == null) {
                                        zzljVar.l = new zzju(zzljVar, zzicVar5);
                                    }
                                    zzljVar.l.b(jMax);
                                }
                            }
                            zzhhVar.o.b(true);
                        }
                        EnumMap enumMap6 = new EnumMap(zzjk.class);
                        enumMap6.put(zzjk.AD_STORAGE, zzjiVarW);
                        enumMap6.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                        zzjlVar = new zzjl(enumMap6, -10);
                    }
                    z2 = false;
                    if (zzjlVar != null) {
                        zzic.l(zzljVar);
                        zzljVar.L(zzjlVar, true);
                    } else {
                        zzjlVar = zzjlVarN;
                    }
                    zzic.l(zzljVar);
                    zzicVar5 = zzljVar.f31850a;
                    zzljVar.P(zzjlVar);
                    zzhhVar.g();
                    int i13 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                    zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                    if (zzjiVarW3 != zzjiVar) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                    }
                    zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                    if (zzjiVarW4 == zzjiVar) {
                        if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                    } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                    boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                    if (boolT != null) {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar1113 = zzicVar5.f31842f;
                        zzic.m(zzguVar1113);
                        zzguVar1113.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar1114 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar1114);
                                        zzguVar1114.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar115 = zzicVar5.f31841e;
                        zzic.k(zzhhVar115);
                        zzhhVar115.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    } else {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar1114 = zzicVar5.f31842f;
                        zzic.m(zzguVar1114);
                        zzguVar1114.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar1115 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar1115);
                                        zzguVar1115.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar116 = zzicVar5.f31841e;
                        zzic.k(zzhhVar116);
                        zzhhVar116.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    }
                    zzheVar = zzhhVar.f31810f;
                    if (zzheVar.a() == 0) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                        zzheVar.b(j2);
                    }
                    zzic.l(zzljVar);
                    zzxVar = zzljVar.q;
                    if (zzxVar.c()) {
                        zzhh zzhhVar117 = zzxVar.f32025a.f31841e;
                        zzic.k(zzhhVar117);
                        zzhhVar117.w.b(null);
                    }
                    if (zzicVar4.h()) {
                        if (zzicVar4.f()) {
                            if (zzppVar2.J("android.permission.INTERNET")) {
                                zzic.m(zzguVar);
                                zzgsVar6 = zzgsVar5;
                                zzgsVar6.a("App is missing INTERNET permission");
                            } else {
                                zzgsVar6 = zzgsVar5;
                            }
                            if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                            }
                            zzicVar6 = zzicVar4;
                            context = zzicVar6.f31838a;
                            if (!Wrappers.a(context).c()) {
                                if (!zzpp.b0(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                }
                                if (!zzpp.B(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementService not registered/enabled");
                                }
                            }
                            zzic.m(zzguVar);
                            zzgsVar6.a("Uploading is not possible. App measurement disabled");
                        } else {
                            zzicVar6 = zzicVar4;
                        }
                        zzguVar2 = zzguVar;
                    } else {
                        zzicVar6 = zzicVar4;
                        if (TextUtils.isEmpty(zzicVar6.r().n())) {
                            String strN17 = zzicVar6.r().n();
                            zzhhVar.g();
                            String string10 = zzhhVar.k().getString("gmp_app_id", null);
                            zIsEmpty = TextUtils.isEmpty(strN17);
                            boolean zIsEmpty10 = TextUtils.isEmpty(string10);
                            if (zIsEmpty) {
                                zzhgVar2 = zzhgVar;
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            String strN18 = zzicVar6.r().n();
                            zzhhVar.g();
                            SharedPreferences.Editor editorEdit12 = zzhhVar.k().edit();
                            editorEdit12.putString("gmp_app_id", strN18);
                            editorEdit12.apply();
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                            zzhgVar2.b(null);
                        }
                        zzic.l(zzljVar);
                        zzljVar.g.set(zzhgVar2.a());
                        zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                        zzguVar2 = zzguVar;
                        if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                            zF = zzicVar6.f();
                            sharedPreferences = zzhhVar.f31808c;
                            if (sharedPreferences == null) {
                                zContains = z2;
                            } else {
                                zContains = sharedPreferences.contains("deferred_analytics_collection");
                            }
                            if (!zContains) {
                                zzhhVar.o(!zF);
                            }
                            if (zF) {
                                zzic.l(zzljVar);
                                zzljVar.u();
                            }
                            zzoc zzocVar10 = zzicVar6.f31843h;
                            zzic.l(zzocVar10);
                            zzocVar10.f31937e.a();
                            zzicVar6.p().k(new AtomicReference());
                            zzicVar6.p().l(zzhhVar.y.a());
                        }
                    }
                    zzaif.a();
                    if (zzalVar.r(null, zzfy.P0)) {
                        zzppVar2.g();
                        if (zzppVar2.D() == j3) {
                            long jIntValue10 = ((Integer) zzfy.w0.a(null)).intValue();
                            long jNextInt10 = new Random().nextInt(5000);
                            zzicVar6.f31846k.getClass();
                            jMax = Math.max(500L, ((jIntValue10 * 1000) + jNextInt10) - SystemClock.elapsedRealtime());
                            if (jMax > 500) {
                                zzic.m(zzguVar2);
                                zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                            }
                            zzic.l(zzljVar);
                            zzljVar.g();
                            if (zzljVar.l == null) {
                                zzljVar.l = new zzju(zzljVar, zzicVar5);
                            }
                            zzljVar.l.b(jMax);
                        }
                    }
                    zzhhVar.o.b(true);
                }
                zzgu zzguVar120 = zzicVar.f31842f;
                zzic.m(zzguVar120);
                zzguVar120.f31769f.a("Failed to load metadata: Metadata bundle is null");
                numValueOf = null;
                if (numValueOf != null) {
                    stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
                    if (stringArray == null) {
                        listAsList = null;
                    } else {
                        listAsList = Arrays.asList(stringArray);
                    }
                } else {
                    listAsList = null;
                }
                if (listAsList != null) {
                    zzgiVar2.f31748k = listAsList;
                    break;
                }
                if (listAsList.isEmpty()) {
                    it = listAsList.iterator();
                    do {
                        if (it.hasNext()) {
                            zzgiVar2.f31748k = listAsList;
                            break;
                        } else {
                            str3 = (String) it.next();
                            zzppVar = zzicVar9.f31844i;
                            zzic.k(zzppVar);
                        }
                    } while (zzppVar.k0("safelisted event", str3));
                } else {
                    zzic.m(zzguVar6);
                    zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
                }
                if (packageManager != null) {
                    zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
                } else {
                    zzgiVar2.n = 0;
                }
                zzgiVar2.f31850a.C.incrementAndGet();
                zzgiVar2.f31741b = true;
                zzlqVar = new zzlq(zzicVar7);
                zzlqVar.i();
                zzicVar7.u = zzlqVar;
                if (!zzlqVar.f31741b) {
                    md.k("Can't initialize twice");
                    return;
                }
                zzic zzicVar13 = zzlqVar.f31850a;
                zzlqVar.f31894c = (JobScheduler) zzicVar13.f31838a.getSystemService("jobscheduler");
                zzicVar13.C.incrementAndGet();
                zzlqVar.f31741b = true;
                zzic.m(zzguVar3);
                zzgsVar = zzguVar3.m;
                zzgsVar2 = zzguVar3.l;
                zzgsVar3 = zzguVar3.n;
                zzgsVar4 = zzguVar3.f31769f;
                zzalVar.m();
                zzgsVar2.b(161000L, "App measurement initialized, version");
                zzic.m(zzguVar3);
                zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                strM = zzgiVar.m();
                if (zzppVar2.L(strM, zzalVar.f31553c)) {
                    zzic.m(zzguVar3);
                    zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                } else {
                    zzic.m(zzguVar3);
                    zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
                }
                zzic.m(zzguVar3);
                zzgsVar.a("Debug-level message logging enabled");
                i3 = zzicVar7.A;
                atomicInteger = zzicVar7.C;
                if (i3 != atomicInteger.get()) {
                    zzic.m(zzguVar3);
                    zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
                }
                zzicVar7.v = true;
                j2 = zzicVar7.D;
                zzljVar = zzicVar7.m;
                zzhz zzhzVar5 = zzicVar7.g;
                zzic.m(zzhzVar5);
                zzhzVar5.g();
                zzic.j(zzicVar7.u);
                zzinVarL = zzicVar7.u.l();
                zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
                zzaif.a();
                zR = zzalVar.r(null, zzfy.P0);
                if (zzinVarL == zzinVar) {
                    z = true;
                } else {
                    z = false;
                }
                if (zR) {
                    zzppVar2.g();
                    if (zzppVar2.D() == 1) {
                        zzppVar2.g();
                        IntentFilter intentFilter10 = new IntentFilter();
                        j3 = 1;
                        intentFilter10.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                        intentFilter10.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                        zzicVar2 = zzicVar8;
                        z3 = z;
                        zzguVar = zzguVar3;
                        ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter10, 2);
                        zzgu zzguVar1115 = zzicVar2.f31842f;
                        zzic.m(zzguVar1115);
                        zzguVar1115.m.a("Registered app receiver");
                        if (z3) {
                            zzic.j(zzicVar7.u);
                            zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                        }
                    } else if (z) {
                        z = true;
                        zzppVar2.g();
                        IntentFilter intentFilter11 = new IntentFilter();
                        j3 = 1;
                        intentFilter11.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                        intentFilter11.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                        zzicVar2 = zzicVar8;
                        z3 = z;
                        zzguVar = zzguVar3;
                        ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter11, 2);
                        zzgu zzguVar1116 = zzicVar2.f31842f;
                        zzic.m(zzguVar1116);
                        zzguVar1116.m.a("Registered app receiver");
                        if (z3) {
                            zzic.j(zzicVar7.u);
                            zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                        }
                    } else {
                        zzguVar = zzguVar3;
                        j3 = 1;
                        zzicVar2 = zzicVar8;
                    }
                } else if (z) {
                    z = true;
                    zzppVar2.g();
                    IntentFilter intentFilter12 = new IntentFilter();
                    j3 = 1;
                    intentFilter12.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intentFilter12.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                    zzicVar2 = zzicVar8;
                    z3 = z;
                    zzguVar = zzguVar3;
                    ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter12, 2);
                    zzgu zzguVar1117 = zzicVar2.f31842f;
                    zzic.m(zzguVar1117);
                    zzguVar1117.m.a("Registered app receiver");
                    if (z3) {
                        zzic.j(zzicVar7.u);
                        zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                    }
                } else {
                    zzguVar = zzguVar3;
                    j3 = 1;
                    zzicVar2 = zzicVar8;
                }
                zzhgVar = zzhhVar.g;
                zzjlVarN = zzhhVar.n();
                i4 = zzjlVarN.f31854b;
                zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
                zzicVar3 = zzicVar2;
                zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
                zzjiVar = zzji.UNINITIALIZED;
                if (zzjiVarW == zzjiVar) {
                    zzicVar4 = zzicVar7;
                    zzgsVar5 = zzgsVar4;
                    if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                        if (TextUtils.isEmpty(zzicVar4.r().n())) {
                            if (i4 == 0) {
                            }
                            zzic.l(zzljVar);
                            z2 = false;
                            zzljVar.L(new zzjl(null, null, -10), false);
                        } else {
                            z2 = false;
                        }
                        zzjlVar = null;
                        if (zzjlVar != null) {
                            zzic.l(zzljVar);
                            zzljVar.L(zzjlVar, true);
                        } else {
                            zzjlVar = zzjlVarN;
                        }
                        zzic.l(zzljVar);
                        zzicVar5 = zzljVar.f31850a;
                        zzljVar.P(zzjlVar);
                        zzhhVar.g();
                        int i14 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                        zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                        if (zzjiVarW3 != zzjiVar) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                        }
                        zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                        if (zzjiVarW4 == zzjiVar) {
                            if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                        } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                        boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                        if (boolT != null) {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar1118 = zzicVar5.f31842f;
                            zzic.m(zzguVar1118);
                            zzguVar1118.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar1119 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar1119);
                                            zzguVar1119.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar118 = zzicVar5.f31841e;
                            zzic.k(zzhhVar118);
                            zzhhVar118.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        } else {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar1119 = zzicVar5.f31842f;
                            zzic.m(zzguVar1119);
                            zzguVar1119.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar11110 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar11110);
                                            zzguVar11110.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar119 = zzicVar5.f31841e;
                            zzic.k(zzhhVar119);
                            zzhhVar119.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        }
                        zzheVar = zzhhVar.f31810f;
                        if (zzheVar.a() == 0) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                            zzheVar.b(j2);
                        }
                        zzic.l(zzljVar);
                        zzxVar = zzljVar.q;
                        if (zzxVar.c()) {
                            zzhh zzhhVar1110 = zzxVar.f32025a.f31841e;
                            zzic.k(zzhhVar1110);
                            zzhhVar1110.w.b(null);
                        }
                        if (zzicVar4.h()) {
                            if (zzicVar4.f()) {
                                if (zzppVar2.J("android.permission.INTERNET")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6 = zzgsVar5;
                                    zzgsVar6.a("App is missing INTERNET permission");
                                } else {
                                    zzgsVar6 = zzgsVar5;
                                }
                                if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                }
                                zzicVar6 = zzicVar4;
                                context = zzicVar6.f31838a;
                                if (!Wrappers.a(context).c()) {
                                    if (!zzpp.b0(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                    }
                                    if (!zzpp.B(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementService not registered/enabled");
                                    }
                                }
                                zzic.m(zzguVar);
                                zzgsVar6.a("Uploading is not possible. App measurement disabled");
                            } else {
                                zzicVar6 = zzicVar4;
                            }
                            zzguVar2 = zzguVar;
                        } else {
                            zzicVar6 = zzicVar4;
                            if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                String strN19 = zzicVar6.r().n();
                                zzhhVar.g();
                                String string11 = zzhhVar.k().getString("gmp_app_id", null);
                                zIsEmpty = TextUtils.isEmpty(strN19);
                                boolean zIsEmpty11 = TextUtils.isEmpty(string11);
                                if (zIsEmpty) {
                                    zzhgVar2 = zzhgVar;
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                String strN110 = zzicVar6.r().n();
                                zzhhVar.g();
                                SharedPreferences.Editor editorEdit13 = zzhhVar.k().edit();
                                editorEdit13.putString("gmp_app_id", strN110);
                                editorEdit13.apply();
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                zzhgVar2.b(null);
                            }
                            zzic.l(zzljVar);
                            zzljVar.g.set(zzhgVar2.a());
                            zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                            zzguVar2 = zzguVar;
                            if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                zF = zzicVar6.f();
                                sharedPreferences = zzhhVar.f31808c;
                                if (sharedPreferences == null) {
                                    zContains = z2;
                                } else {
                                    zContains = sharedPreferences.contains("deferred_analytics_collection");
                                }
                                if (!zContains) {
                                    zzhhVar.o(!zF);
                                }
                                if (zF) {
                                    zzic.l(zzljVar);
                                    zzljVar.u();
                                }
                                zzoc zzocVar11 = zzicVar6.f31843h;
                                zzic.l(zzocVar11);
                                zzocVar11.f31937e.a();
                                zzicVar6.p().k(new AtomicReference());
                                zzicVar6.p().l(zzhhVar.y.a());
                            }
                        }
                        zzaif.a();
                        if (zzalVar.r(null, zzfy.P0)) {
                            zzppVar2.g();
                            if (zzppVar2.D() == j3) {
                                long jIntValue11 = ((Integer) zzfy.w0.a(null)).intValue();
                                long jNextInt11 = new Random().nextInt(5000);
                                zzicVar6.f31846k.getClass();
                                jMax = Math.max(500L, ((jIntValue11 * 1000) + jNextInt11) - SystemClock.elapsedRealtime());
                                if (jMax > 500) {
                                    zzic.m(zzguVar2);
                                    zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                }
                                zzic.l(zzljVar);
                                zzljVar.g();
                                if (zzljVar.l == null) {
                                    zzljVar.l = new zzju(zzljVar, zzicVar5);
                                }
                                zzljVar.l.b(jMax);
                            }
                        }
                        zzhhVar.o.b(true);
                    }
                    EnumMap enumMap7 = new EnumMap(zzjk.class);
                    enumMap7.put(zzjk.AD_STORAGE, zzjiVarW);
                    enumMap7.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                    zzjlVar = new zzjl(enumMap7, -10);
                } else {
                    zzicVar4 = zzicVar7;
                    zzgsVar5 = zzgsVar4;
                    if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                        if (TextUtils.isEmpty(zzicVar4.r().n())) {
                            if (i4 == 0) {
                            }
                            zzic.l(zzljVar);
                            z2 = false;
                            zzljVar.L(new zzjl(null, null, -10), false);
                        } else {
                            z2 = false;
                        }
                        zzjlVar = null;
                        if (zzjlVar != null) {
                            zzic.l(zzljVar);
                            zzljVar.L(zzjlVar, true);
                        } else {
                            zzjlVar = zzjlVarN;
                        }
                        zzic.l(zzljVar);
                        zzicVar5 = zzljVar.f31850a;
                        zzljVar.P(zzjlVar);
                        zzhhVar.g();
                        int i15 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                        zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                        if (zzjiVarW3 != zzjiVar) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                        }
                        zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                        if (zzjiVarW4 == zzjiVar) {
                            if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                                zzic.l(zzljVar);
                                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                            }
                        } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                        boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                        if (boolT != null) {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar11110 = zzicVar5.f31842f;
                            zzic.m(zzguVar11110);
                            zzguVar11110.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar11111 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar11111);
                                            zzguVar11111.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar1111 = zzicVar5.f31841e;
                            zzic.k(zzhhVar1111);
                            zzhhVar1111.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        } else {
                            zzic.m(zzguVar);
                            zzgsVar.a("TCF client enabled.");
                            zzic.l(zzljVar);
                            zzljVar.g();
                            zzgu zzguVar11111 = zzicVar5.f31842f;
                            zzic.m(zzguVar11111);
                            zzguVar11111.m.a("Register tcfPrefChangeListener.");
                            if (zzljVar.t == null) {
                                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                        zzlj zzljVar2 = zzljVar;
                                        zzljVar2.getClass();
                                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                            zzgu zzguVar11112 = zzljVar2.f31850a.f31842f;
                                            zzic.m(zzguVar11112);
                                            zzguVar11112.n.a("IABTCF_TCString change picked up in listener.");
                                            zzkb zzkbVar = zzljVar2.u;
                                            Preconditions.h(zzkbVar);
                                            zzkbVar.b(500L);
                                        }
                                    }
                                };
                            }
                            zzhh zzhhVar1112 = zzicVar5.f31841e;
                            zzic.k(zzhhVar1112);
                            zzhhVar1112.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                            zzic.l(zzljVar);
                            zzljVar.m();
                        }
                        zzheVar = zzhhVar.f31810f;
                        if (zzheVar.a() == 0) {
                            zzic.m(zzguVar);
                            zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                            zzheVar.b(j2);
                        }
                        zzic.l(zzljVar);
                        zzxVar = zzljVar.q;
                        if (zzxVar.c()) {
                            zzhh zzhhVar1113 = zzxVar.f32025a.f31841e;
                            zzic.k(zzhhVar1113);
                            zzhhVar1113.w.b(null);
                        }
                        if (zzicVar4.h()) {
                            if (zzicVar4.f()) {
                                if (zzppVar2.J("android.permission.INTERNET")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6 = zzgsVar5;
                                    zzgsVar6.a("App is missing INTERNET permission");
                                } else {
                                    zzgsVar6 = zzgsVar5;
                                }
                                if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                                }
                                zzicVar6 = zzicVar4;
                                context = zzicVar6.f31838a;
                                if (!Wrappers.a(context).c()) {
                                    if (!zzpp.b0(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                    }
                                    if (!zzpp.B(context)) {
                                        zzic.m(zzguVar);
                                        zzgsVar6.a("AppMeasurementService not registered/enabled");
                                    }
                                }
                                zzic.m(zzguVar);
                                zzgsVar6.a("Uploading is not possible. App measurement disabled");
                            } else {
                                zzicVar6 = zzicVar4;
                            }
                            zzguVar2 = zzguVar;
                        } else {
                            zzicVar6 = zzicVar4;
                            if (TextUtils.isEmpty(zzicVar6.r().n())) {
                                String strN111 = zzicVar6.r().n();
                                zzhhVar.g();
                                String string12 = zzhhVar.k().getString("gmp_app_id", null);
                                zIsEmpty = TextUtils.isEmpty(strN111);
                                boolean zIsEmpty12 = TextUtils.isEmpty(string12);
                                if (zIsEmpty) {
                                    zzhgVar2 = zzhgVar;
                                } else {
                                    zzhgVar2 = zzhgVar;
                                }
                                String strN112 = zzicVar6.r().n();
                                zzhhVar.g();
                                SharedPreferences.Editor editorEdit14 = zzhhVar.k().edit();
                                editorEdit14.putString("gmp_app_id", strN112);
                                editorEdit14.apply();
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                zzhgVar2.b(null);
                            }
                            zzic.l(zzljVar);
                            zzljVar.g.set(zzhgVar2.a());
                            zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                            zzguVar2 = zzguVar;
                            if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                                zF = zzicVar6.f();
                                sharedPreferences = zzhhVar.f31808c;
                                if (sharedPreferences == null) {
                                    zContains = z2;
                                } else {
                                    zContains = sharedPreferences.contains("deferred_analytics_collection");
                                }
                                if (!zContains) {
                                    zzhhVar.o(!zF);
                                }
                                if (zF) {
                                    zzic.l(zzljVar);
                                    zzljVar.u();
                                }
                                zzoc zzocVar12 = zzicVar6.f31843h;
                                zzic.l(zzocVar12);
                                zzocVar12.f31937e.a();
                                zzicVar6.p().k(new AtomicReference());
                                zzicVar6.p().l(zzhhVar.y.a());
                            }
                        }
                        zzaif.a();
                        if (zzalVar.r(null, zzfy.P0)) {
                            zzppVar2.g();
                            if (zzppVar2.D() == j3) {
                                long jIntValue12 = ((Integer) zzfy.w0.a(null)).intValue();
                                long jNextInt12 = new Random().nextInt(5000);
                                zzicVar6.f31846k.getClass();
                                jMax = Math.max(500L, ((jIntValue12 * 1000) + jNextInt12) - SystemClock.elapsedRealtime());
                                if (jMax > 500) {
                                    zzic.m(zzguVar2);
                                    zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                }
                                zzic.l(zzljVar);
                                zzljVar.g();
                                if (zzljVar.l == null) {
                                    zzljVar.l = new zzju(zzljVar, zzicVar5);
                                }
                                zzljVar.l.b(jMax);
                            }
                        }
                        zzhhVar.o.b(true);
                    }
                    EnumMap enumMap8 = new EnumMap(zzjk.class);
                    enumMap8.put(zzjk.AD_STORAGE, zzjiVarW);
                    enumMap8.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                    zzjlVar = new zzjl(enumMap8, -10);
                }
                z2 = false;
                if (zzjlVar != null) {
                    zzic.l(zzljVar);
                    zzljVar.L(zzjlVar, true);
                } else {
                    zzjlVar = zzjlVarN;
                }
                zzic.l(zzljVar);
                zzicVar5 = zzljVar.f31850a;
                zzljVar.P(zzjlVar);
                zzhhVar.g();
                int i16 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                if (zzjiVarW3 != zzjiVar) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                }
                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                if (zzjiVarW4 == zzjiVar) {
                    if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                    zzic.l(zzljVar);
                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                }
                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                if (boolT != null) {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar11112 = zzicVar5.f31842f;
                    zzic.m(zzguVar11112);
                    zzguVar11112.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar11113 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar11113);
                                    zzguVar11113.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar1114 = zzicVar5.f31841e;
                    zzic.k(zzhhVar1114);
                    zzhhVar1114.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                } else {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar11113 = zzicVar5.f31842f;
                    zzic.m(zzguVar11113);
                    zzguVar11113.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar11114 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar11114);
                                    zzguVar11114.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar1115 = zzicVar5.f31841e;
                    zzic.k(zzhhVar1115);
                    zzhhVar1115.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                }
                zzheVar = zzhhVar.f31810f;
                if (zzheVar.a() == 0) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                    zzheVar.b(j2);
                }
                zzic.l(zzljVar);
                zzxVar = zzljVar.q;
                if (zzxVar.c()) {
                    zzhh zzhhVar1116 = zzxVar.f32025a.f31841e;
                    zzic.k(zzhhVar1116);
                    zzhhVar1116.w.b(null);
                }
                if (zzicVar4.h()) {
                    if (zzicVar4.f()) {
                        if (zzppVar2.J("android.permission.INTERNET")) {
                            zzic.m(zzguVar);
                            zzgsVar6 = zzgsVar5;
                            zzgsVar6.a("App is missing INTERNET permission");
                        } else {
                            zzgsVar6 = zzgsVar5;
                        }
                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                            zzic.m(zzguVar);
                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                        }
                        zzicVar6 = zzicVar4;
                        context = zzicVar6.f31838a;
                        if (!Wrappers.a(context).c()) {
                            if (!zzpp.b0(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                            }
                            if (!zzpp.B(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                            }
                        }
                        zzic.m(zzguVar);
                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                    } else {
                        zzicVar6 = zzicVar4;
                    }
                    zzguVar2 = zzguVar;
                } else {
                    zzicVar6 = zzicVar4;
                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                        String strN113 = zzicVar6.r().n();
                        zzhhVar.g();
                        String string13 = zzhhVar.k().getString("gmp_app_id", null);
                        zIsEmpty = TextUtils.isEmpty(strN113);
                        boolean zIsEmpty13 = TextUtils.isEmpty(string13);
                        if (zIsEmpty) {
                            zzhgVar2 = zzhgVar;
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        String strN114 = zzicVar6.r().n();
                        zzhhVar.g();
                        SharedPreferences.Editor editorEdit15 = zzhhVar.k().edit();
                        editorEdit15.putString("gmp_app_id", strN114);
                        editorEdit15.apply();
                    } else {
                        zzhgVar2 = zzhgVar;
                    }
                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                        zzhgVar2.b(null);
                    }
                    zzic.l(zzljVar);
                    zzljVar.g.set(zzhgVar2.a());
                    zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                    zzguVar2 = zzguVar;
                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                        zF = zzicVar6.f();
                        sharedPreferences = zzhhVar.f31808c;
                        if (sharedPreferences == null) {
                            zContains = z2;
                        } else {
                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                        }
                        if (!zContains) {
                            zzhhVar.o(!zF);
                        }
                        if (zF) {
                            zzic.l(zzljVar);
                            zzljVar.u();
                        }
                        zzoc zzocVar13 = zzicVar6.f31843h;
                        zzic.l(zzocVar13);
                        zzocVar13.f31937e.a();
                        zzicVar6.p().k(new AtomicReference());
                        zzicVar6.p().l(zzhhVar.y.a());
                    }
                }
                zzaif.a();
                if (zzalVar.r(null, zzfy.P0)) {
                    zzppVar2.g();
                    if (zzppVar2.D() == j3) {
                        long jIntValue13 = ((Integer) zzfy.w0.a(null)).intValue();
                        long jNextInt13 = new Random().nextInt(5000);
                        zzicVar6.f31846k.getClass();
                        jMax = Math.max(500L, ((jIntValue13 * 1000) + jNextInt13) - SystemClock.elapsedRealtime());
                        if (jMax > 500) {
                            zzic.m(zzguVar2);
                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                        }
                        zzic.l(zzljVar);
                        zzljVar.g();
                        if (zzljVar.l == null) {
                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                        }
                        zzljVar.l.b(jMax);
                    }
                }
                zzhhVar.o.b(true);
            }
            zzic.m(zzguVar6);
            zzguVar6.f31769f.b(zzgu.o(packageName), "PackageManager is null, app identity information might be inaccurate. appId");
            strA = zzgiVar2.m;
            if (TextUtils.isEmpty(strA)) {
                strA = zzlt.a(context2, zzicVar9.p);
            }
            if (!TextUtils.isEmpty(strA)) {
                str4 = strA;
            }
            zzgiVar2.o = str4;
            if (iG == 0) {
                zzic.m(zzguVar6);
                zzguVar6.n.c("App measurement enabled for app package, google app id", zzgiVar2.f31742c, zzgiVar2.o);
            }
        } catch (IllegalStateException e3) {
            zzic.m(zzguVar6);
            zzguVar6.f31769f.c("Fetching Google App Id failed with exception. appId", zzgu.o(packageName), e3);
        }
        string = "Unknown";
        str = string;
        str2 = installerPackageName;
        i2 = Integer.MIN_VALUE;
        zzgiVar2.f31742c = packageName;
        zzgiVar2.f31744f = str2;
        zzgiVar2.d = str;
        zzgiVar2.f31743e = i2;
        zzgiVar2.g = string;
        zzgiVar2.f31745h = 0L;
        iG = zzicVar9.g();
        if (iG == 0) {
            zzic.m(zzguVar6);
            zzguVar6.n.a("App measurement collection enabled");
        } else if (iG == 1) {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement deactivated via the manifest");
        } else if (iG == 3) {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
        } else if (iG == 4) {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement disabled via the manifest");
        } else if (iG == 6) {
            zzic.m(zzguVar6);
            zzguVar6.f31773k.a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
        } else if (iG == 7) {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement disabled via the global data collection setting");
        } else if (iG != 8) {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement disabled");
            zzic.m(zzguVar6);
            zzguVar6.g.a("Invalid scion state in identity");
        } else {
            zzic.m(zzguVar6);
            zzguVar6.l.a("App measurement disabled due to denied storage consent");
        }
        zzgiVar2.o = "";
        zzgiVar2.f31748k = null;
        zzal zzalVar4 = zzicVar9.d;
        zzicVar = zzalVar4.f31850a;
        Preconditions.e("analytics.safelisted_events");
        bundleS = zzalVar4.s();
        if (bundleS != null) {
            if (bundleS.containsKey("analytics.safelisted_events")) {
                numValueOf = Integer.valueOf(bundleS.getInt("analytics.safelisted_events"));
            }
            if (numValueOf != null) {
                stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
                if (stringArray == null) {
                    listAsList = null;
                } else {
                    listAsList = Arrays.asList(stringArray);
                }
            } else {
                listAsList = null;
            }
            if (listAsList != null) {
                zzgiVar2.f31748k = listAsList;
                break;
            }
            if (listAsList.isEmpty()) {
                it = listAsList.iterator();
                do {
                    if (it.hasNext()) {
                        zzgiVar2.f31748k = listAsList;
                        break;
                    } else {
                        str3 = (String) it.next();
                        zzppVar = zzicVar9.f31844i;
                        zzic.k(zzppVar);
                    }
                } while (zzppVar.k0("safelisted event", str3));
            } else {
                zzic.m(zzguVar6);
                zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
            }
            if (packageManager != null) {
                zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
            } else {
                zzgiVar2.n = 0;
            }
            zzgiVar2.f31850a.C.incrementAndGet();
            zzgiVar2.f31741b = true;
            zzlqVar = new zzlq(zzicVar7);
            zzlqVar.i();
            zzicVar7.u = zzlqVar;
            if (!zzlqVar.f31741b) {
                md.k("Can't initialize twice");
                return;
            }
            zzic zzicVar14 = zzlqVar.f31850a;
            zzlqVar.f31894c = (JobScheduler) zzicVar14.f31838a.getSystemService("jobscheduler");
            zzicVar14.C.incrementAndGet();
            zzlqVar.f31741b = true;
            zzic.m(zzguVar3);
            zzgsVar = zzguVar3.m;
            zzgsVar2 = zzguVar3.l;
            zzgsVar3 = zzguVar3.n;
            zzgsVar4 = zzguVar3.f31769f;
            zzalVar.m();
            zzgsVar2.b(161000L, "App measurement initialized, version");
            zzic.m(zzguVar3);
            zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
            strM = zzgiVar.m();
            if (zzppVar2.L(strM, zzalVar.f31553c)) {
                zzic.m(zzguVar3);
                zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzic.m(zzguVar3);
                zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
            }
            zzic.m(zzguVar3);
            zzgsVar.a("Debug-level message logging enabled");
            i3 = zzicVar7.A;
            atomicInteger = zzicVar7.C;
            if (i3 != atomicInteger.get()) {
                zzic.m(zzguVar3);
                zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
            }
            zzicVar7.v = true;
            j2 = zzicVar7.D;
            zzljVar = zzicVar7.m;
            zzhz zzhzVar6 = zzicVar7.g;
            zzic.m(zzhzVar6);
            zzhzVar6.g();
            zzic.j(zzicVar7.u);
            zzinVarL = zzicVar7.u.l();
            zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
            zzaif.a();
            zR = zzalVar.r(null, zzfy.P0);
            if (zzinVarL == zzinVar) {
                z = true;
            } else {
                z = false;
            }
            if (zR) {
                zzppVar2.g();
                if (zzppVar2.D() == 1) {
                    zzppVar2.g();
                    IntentFilter intentFilter13 = new IntentFilter();
                    j3 = 1;
                    intentFilter13.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intentFilter13.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                    zzicVar2 = zzicVar8;
                    z3 = z;
                    zzguVar = zzguVar3;
                    ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter13, 2);
                    zzgu zzguVar11114 = zzicVar2.f31842f;
                    zzic.m(zzguVar11114);
                    zzguVar11114.m.a("Registered app receiver");
                    if (z3) {
                        zzic.j(zzicVar7.u);
                        zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                    }
                } else if (z) {
                    z = true;
                    zzppVar2.g();
                    IntentFilter intentFilter14 = new IntentFilter();
                    j3 = 1;
                    intentFilter14.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intentFilter14.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                    zzicVar2 = zzicVar8;
                    z3 = z;
                    zzguVar = zzguVar3;
                    ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter14, 2);
                    zzgu zzguVar11115 = zzicVar2.f31842f;
                    zzic.m(zzguVar11115);
                    zzguVar11115.m.a("Registered app receiver");
                    if (z3) {
                        zzic.j(zzicVar7.u);
                        zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                    }
                } else {
                    zzguVar = zzguVar3;
                    j3 = 1;
                    zzicVar2 = zzicVar8;
                }
            } else if (z) {
                z = true;
                zzppVar2.g();
                IntentFilter intentFilter15 = new IntentFilter();
                j3 = 1;
                intentFilter15.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter15.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                zzicVar2 = zzicVar8;
                z3 = z;
                zzguVar = zzguVar3;
                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter15, 2);
                zzgu zzguVar11116 = zzicVar2.f31842f;
                zzic.m(zzguVar11116);
                zzguVar11116.m.a("Registered app receiver");
                if (z3) {
                    zzic.j(zzicVar7.u);
                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                }
            } else {
                zzguVar = zzguVar3;
                j3 = 1;
                zzicVar2 = zzicVar8;
            }
            zzhgVar = zzhhVar.g;
            zzjlVarN = zzhhVar.n();
            i4 = zzjlVarN.f31854b;
            zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
            zzicVar3 = zzicVar2;
            zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
            zzjiVar = zzji.UNINITIALIZED;
            if (zzjiVarW == zzjiVar) {
                zzicVar4 = zzicVar7;
                zzgsVar5 = zzgsVar4;
                if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                    if (TextUtils.isEmpty(zzicVar4.r().n())) {
                        if (i4 == 0) {
                        }
                        zzic.l(zzljVar);
                        z2 = false;
                        zzljVar.L(new zzjl(null, null, -10), false);
                    } else {
                        z2 = false;
                    }
                    zzjlVar = null;
                    if (zzjlVar != null) {
                        zzic.l(zzljVar);
                        zzljVar.L(zzjlVar, true);
                    } else {
                        zzjlVar = zzjlVarN;
                    }
                    zzic.l(zzljVar);
                    zzicVar5 = zzljVar.f31850a;
                    zzljVar.P(zzjlVar);
                    zzhhVar.g();
                    int i17 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                    zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                    if (zzjiVarW3 != zzjiVar) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                    }
                    zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                    if (zzjiVarW4 == zzjiVar) {
                        if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                    } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                    boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                    if (boolT != null) {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar11117 = zzicVar5.f31842f;
                        zzic.m(zzguVar11117);
                        zzguVar11117.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar11118 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar11118);
                                        zzguVar11118.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar1117 = zzicVar5.f31841e;
                        zzic.k(zzhhVar1117);
                        zzhhVar1117.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    } else {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar11118 = zzicVar5.f31842f;
                        zzic.m(zzguVar11118);
                        zzguVar11118.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar11119 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar11119);
                                        zzguVar11119.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar1118 = zzicVar5.f31841e;
                        zzic.k(zzhhVar1118);
                        zzhhVar1118.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    }
                    zzheVar = zzhhVar.f31810f;
                    if (zzheVar.a() == 0) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                        zzheVar.b(j2);
                    }
                    zzic.l(zzljVar);
                    zzxVar = zzljVar.q;
                    if (zzxVar.c()) {
                        zzhh zzhhVar1119 = zzxVar.f32025a.f31841e;
                        zzic.k(zzhhVar1119);
                        zzhhVar1119.w.b(null);
                    }
                    if (zzicVar4.h()) {
                        if (zzicVar4.f()) {
                            if (zzppVar2.J("android.permission.INTERNET")) {
                                zzic.m(zzguVar);
                                zzgsVar6 = zzgsVar5;
                                zzgsVar6.a("App is missing INTERNET permission");
                            } else {
                                zzgsVar6 = zzgsVar5;
                            }
                            if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                            }
                            zzicVar6 = zzicVar4;
                            context = zzicVar6.f31838a;
                            if (!Wrappers.a(context).c()) {
                                if (!zzpp.b0(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                }
                                if (!zzpp.B(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementService not registered/enabled");
                                }
                            }
                            zzic.m(zzguVar);
                            zzgsVar6.a("Uploading is not possible. App measurement disabled");
                        } else {
                            zzicVar6 = zzicVar4;
                        }
                        zzguVar2 = zzguVar;
                    } else {
                        zzicVar6 = zzicVar4;
                        if (TextUtils.isEmpty(zzicVar6.r().n())) {
                            String strN115 = zzicVar6.r().n();
                            zzhhVar.g();
                            String string14 = zzhhVar.k().getString("gmp_app_id", null);
                            zIsEmpty = TextUtils.isEmpty(strN115);
                            boolean zIsEmpty14 = TextUtils.isEmpty(string14);
                            if (zIsEmpty) {
                                zzhgVar2 = zzhgVar;
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            String strN116 = zzicVar6.r().n();
                            zzhhVar.g();
                            SharedPreferences.Editor editorEdit16 = zzhhVar.k().edit();
                            editorEdit16.putString("gmp_app_id", strN116);
                            editorEdit16.apply();
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                            zzhgVar2.b(null);
                        }
                        zzic.l(zzljVar);
                        zzljVar.g.set(zzhgVar2.a());
                        zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                        zzguVar2 = zzguVar;
                        if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                            zF = zzicVar6.f();
                            sharedPreferences = zzhhVar.f31808c;
                            if (sharedPreferences == null) {
                                zContains = z2;
                            } else {
                                zContains = sharedPreferences.contains("deferred_analytics_collection");
                            }
                            if (!zContains) {
                                zzhhVar.o(!zF);
                            }
                            if (zF) {
                                zzic.l(zzljVar);
                                zzljVar.u();
                            }
                            zzoc zzocVar14 = zzicVar6.f31843h;
                            zzic.l(zzocVar14);
                            zzocVar14.f31937e.a();
                            zzicVar6.p().k(new AtomicReference());
                            zzicVar6.p().l(zzhhVar.y.a());
                        }
                    }
                    zzaif.a();
                    if (zzalVar.r(null, zzfy.P0)) {
                        zzppVar2.g();
                        if (zzppVar2.D() == j3) {
                            long jIntValue14 = ((Integer) zzfy.w0.a(null)).intValue();
                            long jNextInt14 = new Random().nextInt(5000);
                            zzicVar6.f31846k.getClass();
                            jMax = Math.max(500L, ((jIntValue14 * 1000) + jNextInt14) - SystemClock.elapsedRealtime());
                            if (jMax > 500) {
                                zzic.m(zzguVar2);
                                zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                            }
                            zzic.l(zzljVar);
                            zzljVar.g();
                            if (zzljVar.l == null) {
                                zzljVar.l = new zzju(zzljVar, zzicVar5);
                            }
                            zzljVar.l.b(jMax);
                        }
                    }
                    zzhhVar.o.b(true);
                }
                EnumMap enumMap9 = new EnumMap(zzjk.class);
                enumMap9.put(zzjk.AD_STORAGE, zzjiVarW);
                enumMap9.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                zzjlVar = new zzjl(enumMap9, -10);
            } else {
                zzicVar4 = zzicVar7;
                zzgsVar5 = zzgsVar4;
                if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                    if (TextUtils.isEmpty(zzicVar4.r().n())) {
                        if (i4 == 0) {
                        }
                        zzic.l(zzljVar);
                        z2 = false;
                        zzljVar.L(new zzjl(null, null, -10), false);
                    } else {
                        z2 = false;
                    }
                    zzjlVar = null;
                    if (zzjlVar != null) {
                        zzic.l(zzljVar);
                        zzljVar.L(zzjlVar, true);
                    } else {
                        zzjlVar = zzjlVarN;
                    }
                    zzic.l(zzljVar);
                    zzicVar5 = zzljVar.f31850a;
                    zzljVar.P(zzjlVar);
                    zzhhVar.g();
                    int i18 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                    zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                    if (zzjiVarW3 != zzjiVar) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                    }
                    zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                    if (zzjiVarW4 == zzjiVar) {
                        if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                            zzic.l(zzljVar);
                            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                        }
                    } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                    boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                    if (boolT != null) {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar11119 = zzicVar5.f31842f;
                        zzic.m(zzguVar11119);
                        zzguVar11119.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar111110 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar111110);
                                        zzguVar111110.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar11110 = zzicVar5.f31841e;
                        zzic.k(zzhhVar11110);
                        zzhhVar11110.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    } else {
                        zzic.m(zzguVar);
                        zzgsVar.a("TCF client enabled.");
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzgu zzguVar111110 = zzicVar5.f31842f;
                        zzic.m(zzguVar111110);
                        zzguVar111110.m.a("Register tcfPrefChangeListener.");
                        if (zzljVar.t == null) {
                            zzljVar.u = new zzkb(zzljVar, zzicVar5);
                            zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                    zzlj zzljVar2 = zzljVar;
                                    zzljVar2.getClass();
                                    if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                        zzgu zzguVar111111 = zzljVar2.f31850a.f31842f;
                                        zzic.m(zzguVar111111);
                                        zzguVar111111.n.a("IABTCF_TCString change picked up in listener.");
                                        zzkb zzkbVar = zzljVar2.u;
                                        Preconditions.h(zzkbVar);
                                        zzkbVar.b(500L);
                                    }
                                }
                            };
                        }
                        zzhh zzhhVar11111 = zzicVar5.f31841e;
                        zzic.k(zzhhVar11111);
                        zzhhVar11111.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                        zzic.l(zzljVar);
                        zzljVar.m();
                    }
                    zzheVar = zzhhVar.f31810f;
                    if (zzheVar.a() == 0) {
                        zzic.m(zzguVar);
                        zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                        zzheVar.b(j2);
                    }
                    zzic.l(zzljVar);
                    zzxVar = zzljVar.q;
                    if (zzxVar.c()) {
                        zzhh zzhhVar11112 = zzxVar.f32025a.f31841e;
                        zzic.k(zzhhVar11112);
                        zzhhVar11112.w.b(null);
                    }
                    if (zzicVar4.h()) {
                        if (zzicVar4.f()) {
                            if (zzppVar2.J("android.permission.INTERNET")) {
                                zzic.m(zzguVar);
                                zzgsVar6 = zzgsVar5;
                                zzgsVar6.a("App is missing INTERNET permission");
                            } else {
                                zzgsVar6 = zzgsVar5;
                            }
                            if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                            }
                            zzicVar6 = zzicVar4;
                            context = zzicVar6.f31838a;
                            if (!Wrappers.a(context).c()) {
                                if (!zzpp.b0(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                                }
                                if (!zzpp.B(context)) {
                                    zzic.m(zzguVar);
                                    zzgsVar6.a("AppMeasurementService not registered/enabled");
                                }
                            }
                            zzic.m(zzguVar);
                            zzgsVar6.a("Uploading is not possible. App measurement disabled");
                        } else {
                            zzicVar6 = zzicVar4;
                        }
                        zzguVar2 = zzguVar;
                    } else {
                        zzicVar6 = zzicVar4;
                        if (TextUtils.isEmpty(zzicVar6.r().n())) {
                            String strN117 = zzicVar6.r().n();
                            zzhhVar.g();
                            String string15 = zzhhVar.k().getString("gmp_app_id", null);
                            zIsEmpty = TextUtils.isEmpty(strN117);
                            boolean zIsEmpty15 = TextUtils.isEmpty(string15);
                            if (zIsEmpty) {
                                zzhgVar2 = zzhgVar;
                            } else {
                                zzhgVar2 = zzhgVar;
                            }
                            String strN118 = zzicVar6.r().n();
                            zzhhVar.g();
                            SharedPreferences.Editor editorEdit17 = zzhhVar.k().edit();
                            editorEdit17.putString("gmp_app_id", strN118);
                            editorEdit17.apply();
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                            zzhgVar2.b(null);
                        }
                        zzic.l(zzljVar);
                        zzljVar.g.set(zzhgVar2.a());
                        zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                        zzguVar2 = zzguVar;
                        if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                            zF = zzicVar6.f();
                            sharedPreferences = zzhhVar.f31808c;
                            if (sharedPreferences == null) {
                                zContains = z2;
                            } else {
                                zContains = sharedPreferences.contains("deferred_analytics_collection");
                            }
                            if (!zContains) {
                                zzhhVar.o(!zF);
                            }
                            if (zF) {
                                zzic.l(zzljVar);
                                zzljVar.u();
                            }
                            zzoc zzocVar15 = zzicVar6.f31843h;
                            zzic.l(zzocVar15);
                            zzocVar15.f31937e.a();
                            zzicVar6.p().k(new AtomicReference());
                            zzicVar6.p().l(zzhhVar.y.a());
                        }
                    }
                    zzaif.a();
                    if (zzalVar.r(null, zzfy.P0)) {
                        zzppVar2.g();
                        if (zzppVar2.D() == j3) {
                            long jIntValue15 = ((Integer) zzfy.w0.a(null)).intValue();
                            long jNextInt15 = new Random().nextInt(5000);
                            zzicVar6.f31846k.getClass();
                            jMax = Math.max(500L, ((jIntValue15 * 1000) + jNextInt15) - SystemClock.elapsedRealtime());
                            if (jMax > 500) {
                                zzic.m(zzguVar2);
                                zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                            }
                            zzic.l(zzljVar);
                            zzljVar.g();
                            if (zzljVar.l == null) {
                                zzljVar.l = new zzju(zzljVar, zzicVar5);
                            }
                            zzljVar.l.b(jMax);
                        }
                    }
                    zzhhVar.o.b(true);
                }
                EnumMap enumMap10 = new EnumMap(zzjk.class);
                enumMap10.put(zzjk.AD_STORAGE, zzjiVarW);
                enumMap10.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
                zzjlVar = new zzjl(enumMap10, -10);
            }
            z2 = false;
            if (zzjlVar != null) {
                zzic.l(zzljVar);
                zzljVar.L(zzjlVar, true);
            } else {
                zzjlVar = zzjlVarN;
            }
            zzic.l(zzljVar);
            zzicVar5 = zzljVar.f31850a;
            zzljVar.P(zzjlVar);
            zzhhVar.g();
            int i19 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
            zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
            if (zzjiVarW3 != zzjiVar) {
                zzic.m(zzguVar);
                zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
            }
            zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
            if (zzjiVarW4 == zzjiVar) {
                if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                    zzic.l(zzljVar);
                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                }
            } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                zzic.l(zzljVar);
                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
            }
            boolT = zzalVar.t("google_analytics_tcf_data_enabled");
            if (boolT != null) {
                zzic.m(zzguVar);
                zzgsVar.a("TCF client enabled.");
                zzic.l(zzljVar);
                zzljVar.g();
                zzgu zzguVar111111 = zzicVar5.f31842f;
                zzic.m(zzguVar111111);
                zzguVar111111.m.a("Register tcfPrefChangeListener.");
                if (zzljVar.t == null) {
                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                            zzlj zzljVar2 = zzljVar;
                            zzljVar2.getClass();
                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                zzgu zzguVar111112 = zzljVar2.f31850a.f31842f;
                                zzic.m(zzguVar111112);
                                zzguVar111112.n.a("IABTCF_TCString change picked up in listener.");
                                zzkb zzkbVar = zzljVar2.u;
                                Preconditions.h(zzkbVar);
                                zzkbVar.b(500L);
                            }
                        }
                    };
                }
                zzhh zzhhVar11113 = zzicVar5.f31841e;
                zzic.k(zzhhVar11113);
                zzhhVar11113.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                zzic.l(zzljVar);
                zzljVar.m();
            } else {
                zzic.m(zzguVar);
                zzgsVar.a("TCF client enabled.");
                zzic.l(zzljVar);
                zzljVar.g();
                zzgu zzguVar111112 = zzicVar5.f31842f;
                zzic.m(zzguVar111112);
                zzguVar111112.m.a("Register tcfPrefChangeListener.");
                if (zzljVar.t == null) {
                    zzljVar.u = new zzkb(zzljVar, zzicVar5);
                    zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                            zzlj zzljVar2 = zzljVar;
                            zzljVar2.getClass();
                            if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                zzgu zzguVar111113 = zzljVar2.f31850a.f31842f;
                                zzic.m(zzguVar111113);
                                zzguVar111113.n.a("IABTCF_TCString change picked up in listener.");
                                zzkb zzkbVar = zzljVar2.u;
                                Preconditions.h(zzkbVar);
                                zzkbVar.b(500L);
                            }
                        }
                    };
                }
                zzhh zzhhVar11114 = zzicVar5.f31841e;
                zzic.k(zzhhVar11114);
                zzhhVar11114.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                zzic.l(zzljVar);
                zzljVar.m();
            }
            zzheVar = zzhhVar.f31810f;
            if (zzheVar.a() == 0) {
                zzic.m(zzguVar);
                zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                zzheVar.b(j2);
            }
            zzic.l(zzljVar);
            zzxVar = zzljVar.q;
            if (zzxVar.c()) {
                zzhh zzhhVar11115 = zzxVar.f32025a.f31841e;
                zzic.k(zzhhVar11115);
                zzhhVar11115.w.b(null);
            }
            if (zzicVar4.h()) {
                if (zzicVar4.f()) {
                    if (zzppVar2.J("android.permission.INTERNET")) {
                        zzic.m(zzguVar);
                        zzgsVar6 = zzgsVar5;
                        zzgsVar6.a("App is missing INTERNET permission");
                    } else {
                        zzgsVar6 = zzgsVar5;
                    }
                    if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                        zzic.m(zzguVar);
                        zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                    }
                    zzicVar6 = zzicVar4;
                    context = zzicVar6.f31838a;
                    if (!Wrappers.a(context).c()) {
                        if (!zzpp.b0(context)) {
                            zzic.m(zzguVar);
                            zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                        }
                        if (!zzpp.B(context)) {
                            zzic.m(zzguVar);
                            zzgsVar6.a("AppMeasurementService not registered/enabled");
                        }
                    }
                    zzic.m(zzguVar);
                    zzgsVar6.a("Uploading is not possible. App measurement disabled");
                } else {
                    zzicVar6 = zzicVar4;
                }
                zzguVar2 = zzguVar;
            } else {
                zzicVar6 = zzicVar4;
                if (TextUtils.isEmpty(zzicVar6.r().n())) {
                    String strN119 = zzicVar6.r().n();
                    zzhhVar.g();
                    String string16 = zzhhVar.k().getString("gmp_app_id", null);
                    zIsEmpty = TextUtils.isEmpty(strN119);
                    boolean zIsEmpty16 = TextUtils.isEmpty(string16);
                    if (zIsEmpty) {
                        zzhgVar2 = zzhgVar;
                    } else {
                        zzhgVar2 = zzhgVar;
                    }
                    String strN1110 = zzicVar6.r().n();
                    zzhhVar.g();
                    SharedPreferences.Editor editorEdit18 = zzhhVar.k().edit();
                    editorEdit18.putString("gmp_app_id", strN1110);
                    editorEdit18.apply();
                } else {
                    zzhgVar2 = zzhgVar;
                }
                if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                    zzhgVar2.b(null);
                }
                zzic.l(zzljVar);
                zzljVar.g.set(zzhgVar2.a());
                zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                zzguVar2 = zzguVar;
                if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                    zF = zzicVar6.f();
                    sharedPreferences = zzhhVar.f31808c;
                    if (sharedPreferences == null) {
                        zContains = z2;
                    } else {
                        zContains = sharedPreferences.contains("deferred_analytics_collection");
                    }
                    if (!zContains) {
                        zzhhVar.o(!zF);
                    }
                    if (zF) {
                        zzic.l(zzljVar);
                        zzljVar.u();
                    }
                    zzoc zzocVar16 = zzicVar6.f31843h;
                    zzic.l(zzocVar16);
                    zzocVar16.f31937e.a();
                    zzicVar6.p().k(new AtomicReference());
                    zzicVar6.p().l(zzhhVar.y.a());
                }
            }
            zzaif.a();
            if (zzalVar.r(null, zzfy.P0)) {
                zzppVar2.g();
                if (zzppVar2.D() == j3) {
                    long jIntValue16 = ((Integer) zzfy.w0.a(null)).intValue();
                    long jNextInt16 = new Random().nextInt(5000);
                    zzicVar6.f31846k.getClass();
                    jMax = Math.max(500L, ((jIntValue16 * 1000) + jNextInt16) - SystemClock.elapsedRealtime());
                    if (jMax > 500) {
                        zzic.m(zzguVar2);
                        zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                    }
                    zzic.l(zzljVar);
                    zzljVar.g();
                    if (zzljVar.l == null) {
                        zzljVar.l = new zzju(zzljVar, zzicVar5);
                    }
                    zzljVar.l.b(jMax);
                }
            }
            zzhhVar.o.b(true);
        }
        zzgu zzguVar121 = zzicVar.f31842f;
        zzic.m(zzguVar121);
        zzguVar121.f31769f.a("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf != null) {
            stringArray = zzicVar.f31838a.getResources().getStringArray(numValueOf.intValue());
            if (stringArray == null) {
                listAsList = null;
            } else {
                listAsList = Arrays.asList(stringArray);
            }
        } else {
            listAsList = null;
        }
        if (listAsList != null) {
            zzgiVar2.f31748k = listAsList;
            break;
        }
        if (listAsList.isEmpty()) {
            it = listAsList.iterator();
            do {
                if (it.hasNext()) {
                    zzgiVar2.f31748k = listAsList;
                    break;
                } else {
                    str3 = (String) it.next();
                    zzppVar = zzicVar9.f31844i;
                    zzic.k(zzppVar);
                }
            } while (zzppVar.k0("safelisted event", str3));
        } else {
            zzic.m(zzguVar6);
            zzguVar6.f31773k.a("Safelisted event list is empty. Ignoring");
        }
        if (packageManager != null) {
            zzgiVar2.n = InstantApps.a(context2) ? 1 : 0;
        } else {
            zzgiVar2.n = 0;
        }
        zzgiVar2.f31850a.C.incrementAndGet();
        zzgiVar2.f31741b = true;
        zzlqVar = new zzlq(zzicVar7);
        zzlqVar.i();
        zzicVar7.u = zzlqVar;
        if (!zzlqVar.f31741b) {
            md.k("Can't initialize twice");
            return;
        }
        zzic zzicVar15 = zzlqVar.f31850a;
        zzlqVar.f31894c = (JobScheduler) zzicVar15.f31838a.getSystemService("jobscheduler");
        zzicVar15.C.incrementAndGet();
        zzlqVar.f31741b = true;
        zzic.m(zzguVar3);
        zzgsVar = zzguVar3.m;
        zzgsVar2 = zzguVar3.l;
        zzgsVar3 = zzguVar3.n;
        zzgsVar4 = zzguVar3.f31769f;
        zzalVar.m();
        zzgsVar2.b(161000L, "App measurement initialized, version");
        zzic.m(zzguVar3);
        zzgsVar2.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        strM = zzgiVar.m();
        if (zzppVar2.L(strM, zzalVar.f31553c)) {
            zzic.m(zzguVar3);
            zzgsVar2.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            zzic.m(zzguVar3);
            zzgsVar2.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strM)));
        }
        zzic.m(zzguVar3);
        zzgsVar.a("Debug-level message logging enabled");
        i3 = zzicVar7.A;
        atomicInteger = zzicVar7.C;
        if (i3 != atomicInteger.get()) {
            zzic.m(zzguVar3);
            zzgsVar4.c("Not all components initialized", Integer.valueOf(zzicVar7.A), Integer.valueOf(atomicInteger.get()));
        }
        zzicVar7.v = true;
        j2 = zzicVar7.D;
        zzljVar = zzicVar7.m;
        zzhz zzhzVar7 = zzicVar7.g;
        zzic.m(zzhzVar7);
        zzhzVar7.g();
        zzic.j(zzicVar7.u);
        zzinVarL = zzicVar7.u.l();
        zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
        zzaif.a();
        zR = zzalVar.r(null, zzfy.P0);
        if (zzinVarL == zzinVar) {
            z = true;
        } else {
            z = false;
        }
        if (zR) {
            zzppVar2.g();
            if (zzppVar2.D() == 1) {
                zzppVar2.g();
                IntentFilter intentFilter16 = new IntentFilter();
                j3 = 1;
                intentFilter16.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter16.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                zzicVar2 = zzicVar8;
                z3 = z;
                zzguVar = zzguVar3;
                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter16, 2);
                zzgu zzguVar111113 = zzicVar2.f31842f;
                zzic.m(zzguVar111113);
                zzguVar111113.m.a("Registered app receiver");
                if (z3) {
                    zzic.j(zzicVar7.u);
                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                }
            } else if (z) {
                z = true;
                zzppVar2.g();
                IntentFilter intentFilter17 = new IntentFilter();
                j3 = 1;
                intentFilter17.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter17.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                zzicVar2 = zzicVar8;
                z3 = z;
                zzguVar = zzguVar3;
                ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter17, 2);
                zzgu zzguVar111114 = zzicVar2.f31842f;
                zzic.m(zzguVar111114);
                zzguVar111114.m.a("Registered app receiver");
                if (z3) {
                    zzic.j(zzicVar7.u);
                    zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
                }
            } else {
                zzguVar = zzguVar3;
                j3 = 1;
                zzicVar2 = zzicVar8;
            }
        } else if (z) {
            z = true;
            zzppVar2.g();
            IntentFilter intentFilter18 = new IntentFilter();
            j3 = 1;
            intentFilter18.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intentFilter18.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
            zzicVar2 = zzicVar8;
            z3 = z;
            zzguVar = zzguVar3;
            ContextCompat.registerReceiver(zzicVar2.f31838a, new zzw(zzicVar2), intentFilter18, 2);
            zzgu zzguVar111115 = zzicVar2.f31842f;
            zzic.m(zzguVar111115);
            zzguVar111115.m.a("Registered app receiver");
            if (z3) {
                zzic.j(zzicVar7.u);
                zzicVar7.u.k(((Long) zzfy.C.a(null)).longValue());
            }
        } else {
            zzguVar = zzguVar3;
            j3 = 1;
            zzicVar2 = zzicVar8;
        }
        zzhgVar = zzhhVar.g;
        zzjlVarN = zzhhVar.n();
        i4 = zzjlVarN.f31854b;
        zzjiVarW = zzalVar.w("google_analytics_default_allow_ad_storage", false);
        zzicVar3 = zzicVar2;
        zzjiVarW2 = zzalVar.w("google_analytics_default_allow_analytics_storage", false);
        zzjiVar = zzji.UNINITIALIZED;
        if (zzjiVarW == zzjiVar) {
            zzicVar4 = zzicVar7;
            zzgsVar5 = zzgsVar4;
            if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                if (TextUtils.isEmpty(zzicVar4.r().n())) {
                    if (i4 == 0) {
                    }
                    zzic.l(zzljVar);
                    z2 = false;
                    zzljVar.L(new zzjl(null, null, -10), false);
                } else {
                    z2 = false;
                }
                zzjlVar = null;
                if (zzjlVar != null) {
                    zzic.l(zzljVar);
                    zzljVar.L(zzjlVar, true);
                } else {
                    zzjlVar = zzjlVarN;
                }
                zzic.l(zzljVar);
                zzicVar5 = zzljVar.f31850a;
                zzljVar.P(zzjlVar);
                zzhhVar.g();
                int i110 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                if (zzjiVarW3 != zzjiVar) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                }
                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                if (zzjiVarW4 == zzjiVar) {
                    if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                    zzic.l(zzljVar);
                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                }
                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                if (boolT != null) {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar111116 = zzicVar5.f31842f;
                    zzic.m(zzguVar111116);
                    zzguVar111116.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar111117 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar111117);
                                    zzguVar111117.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar11116 = zzicVar5.f31841e;
                    zzic.k(zzhhVar11116);
                    zzhhVar11116.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                } else {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar111117 = zzicVar5.f31842f;
                    zzic.m(zzguVar111117);
                    zzguVar111117.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar111118 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar111118);
                                    zzguVar111118.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar11117 = zzicVar5.f31841e;
                    zzic.k(zzhhVar11117);
                    zzhhVar11117.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                }
                zzheVar = zzhhVar.f31810f;
                if (zzheVar.a() == 0) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                    zzheVar.b(j2);
                }
                zzic.l(zzljVar);
                zzxVar = zzljVar.q;
                if (zzxVar.c()) {
                    zzhh zzhhVar11118 = zzxVar.f32025a.f31841e;
                    zzic.k(zzhhVar11118);
                    zzhhVar11118.w.b(null);
                }
                if (zzicVar4.h()) {
                    if (zzicVar4.f()) {
                        if (zzppVar2.J("android.permission.INTERNET")) {
                            zzic.m(zzguVar);
                            zzgsVar6 = zzgsVar5;
                            zzgsVar6.a("App is missing INTERNET permission");
                        } else {
                            zzgsVar6 = zzgsVar5;
                        }
                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                            zzic.m(zzguVar);
                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                        }
                        zzicVar6 = zzicVar4;
                        context = zzicVar6.f31838a;
                        if (!Wrappers.a(context).c()) {
                            if (!zzpp.b0(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                            }
                            if (!zzpp.B(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                            }
                        }
                        zzic.m(zzguVar);
                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                    } else {
                        zzicVar6 = zzicVar4;
                    }
                    zzguVar2 = zzguVar;
                } else {
                    zzicVar6 = zzicVar4;
                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                        String strN1111 = zzicVar6.r().n();
                        zzhhVar.g();
                        String string17 = zzhhVar.k().getString("gmp_app_id", null);
                        zIsEmpty = TextUtils.isEmpty(strN1111);
                        boolean zIsEmpty17 = TextUtils.isEmpty(string17);
                        if (zIsEmpty) {
                            zzhgVar2 = zzhgVar;
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        String strN1112 = zzicVar6.r().n();
                        zzhhVar.g();
                        SharedPreferences.Editor editorEdit19 = zzhhVar.k().edit();
                        editorEdit19.putString("gmp_app_id", strN1112);
                        editorEdit19.apply();
                    } else {
                        zzhgVar2 = zzhgVar;
                    }
                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                        zzhgVar2.b(null);
                    }
                    zzic.l(zzljVar);
                    zzljVar.g.set(zzhgVar2.a());
                    zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                    zzguVar2 = zzguVar;
                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                        zF = zzicVar6.f();
                        sharedPreferences = zzhhVar.f31808c;
                        if (sharedPreferences == null) {
                            zContains = z2;
                        } else {
                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                        }
                        if (!zContains) {
                            zzhhVar.o(!zF);
                        }
                        if (zF) {
                            zzic.l(zzljVar);
                            zzljVar.u();
                        }
                        zzoc zzocVar17 = zzicVar6.f31843h;
                        zzic.l(zzocVar17);
                        zzocVar17.f31937e.a();
                        zzicVar6.p().k(new AtomicReference());
                        zzicVar6.p().l(zzhhVar.y.a());
                    }
                }
                zzaif.a();
                if (zzalVar.r(null, zzfy.P0)) {
                    zzppVar2.g();
                    if (zzppVar2.D() == j3) {
                        long jIntValue17 = ((Integer) zzfy.w0.a(null)).intValue();
                        long jNextInt17 = new Random().nextInt(5000);
                        zzicVar6.f31846k.getClass();
                        jMax = Math.max(500L, ((jIntValue17 * 1000) + jNextInt17) - SystemClock.elapsedRealtime());
                        if (jMax > 500) {
                            zzic.m(zzguVar2);
                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                        }
                        zzic.l(zzljVar);
                        zzljVar.g();
                        if (zzljVar.l == null) {
                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                        }
                        zzljVar.l.b(jMax);
                    }
                }
                zzhhVar.o.b(true);
            }
            EnumMap enumMap11 = new EnumMap(zzjk.class);
            enumMap11.put(zzjk.AD_STORAGE, zzjiVarW);
            enumMap11.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
            zzjlVar = new zzjl(enumMap11, -10);
        } else {
            zzicVar4 = zzicVar7;
            zzgsVar5 = zzgsVar4;
            if (zzjl.l(-10, zzhhVar.k().getInt("consent_source", 100))) {
                if (TextUtils.isEmpty(zzicVar4.r().n())) {
                    if (i4 == 0) {
                    }
                    zzic.l(zzljVar);
                    z2 = false;
                    zzljVar.L(new zzjl(null, null, -10), false);
                } else {
                    z2 = false;
                }
                zzjlVar = null;
                if (zzjlVar != null) {
                    zzic.l(zzljVar);
                    zzljVar.L(zzjlVar, true);
                } else {
                    zzjlVar = zzjlVarN;
                }
                zzic.l(zzljVar);
                zzicVar5 = zzljVar.f31850a;
                zzljVar.P(zzjlVar);
                zzhhVar.g();
                int i111 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
                zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
                if (zzjiVarW3 != zzjiVar) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
                }
                zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
                if (zzjiVarW4 == zzjiVar) {
                    if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                        zzic.l(zzljVar);
                        zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                    }
                } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                    zzic.l(zzljVar);
                    zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
                }
                boolT = zzalVar.t("google_analytics_tcf_data_enabled");
                if (boolT != null) {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar111118 = zzicVar5.f31842f;
                    zzic.m(zzguVar111118);
                    zzguVar111118.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar111119 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar111119);
                                    zzguVar111119.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar11119 = zzicVar5.f31841e;
                    zzic.k(zzhhVar11119);
                    zzhhVar11119.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                } else {
                    zzic.m(zzguVar);
                    zzgsVar.a("TCF client enabled.");
                    zzic.l(zzljVar);
                    zzljVar.g();
                    zzgu zzguVar111119 = zzicVar5.f31842f;
                    zzic.m(zzguVar111119);
                    zzguVar111119.m.a("Register tcfPrefChangeListener.");
                    if (zzljVar.t == null) {
                        zzljVar.u = new zzkb(zzljVar, zzicVar5);
                        zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                                zzlj zzljVar2 = zzljVar;
                                zzljVar2.getClass();
                                if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                                    zzgu zzguVar1111110 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar1111110);
                                    zzguVar1111110.n.a("IABTCF_TCString change picked up in listener.");
                                    zzkb zzkbVar = zzljVar2.u;
                                    Preconditions.h(zzkbVar);
                                    zzkbVar.b(500L);
                                }
                            }
                        };
                    }
                    zzhh zzhhVar111110 = zzicVar5.f31841e;
                    zzic.k(zzhhVar111110);
                    zzhhVar111110.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
                    zzic.l(zzljVar);
                    zzljVar.m();
                }
                zzheVar = zzhhVar.f31810f;
                if (zzheVar.a() == 0) {
                    zzic.m(zzguVar);
                    zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
                    zzheVar.b(j2);
                }
                zzic.l(zzljVar);
                zzxVar = zzljVar.q;
                if (zzxVar.c()) {
                    zzhh zzhhVar111111 = zzxVar.f32025a.f31841e;
                    zzic.k(zzhhVar111111);
                    zzhhVar111111.w.b(null);
                }
                if (zzicVar4.h()) {
                    if (zzicVar4.f()) {
                        if (zzppVar2.J("android.permission.INTERNET")) {
                            zzic.m(zzguVar);
                            zzgsVar6 = zzgsVar5;
                            zzgsVar6.a("App is missing INTERNET permission");
                        } else {
                            zzgsVar6 = zzgsVar5;
                        }
                        if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                            zzic.m(zzguVar);
                            zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                        }
                        zzicVar6 = zzicVar4;
                        context = zzicVar6.f31838a;
                        if (!Wrappers.a(context).c()) {
                            if (!zzpp.b0(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                            }
                            if (!zzpp.B(context)) {
                                zzic.m(zzguVar);
                                zzgsVar6.a("AppMeasurementService not registered/enabled");
                            }
                        }
                        zzic.m(zzguVar);
                        zzgsVar6.a("Uploading is not possible. App measurement disabled");
                    } else {
                        zzicVar6 = zzicVar4;
                    }
                    zzguVar2 = zzguVar;
                } else {
                    zzicVar6 = zzicVar4;
                    if (TextUtils.isEmpty(zzicVar6.r().n())) {
                        String strN1113 = zzicVar6.r().n();
                        zzhhVar.g();
                        String string18 = zzhhVar.k().getString("gmp_app_id", null);
                        zIsEmpty = TextUtils.isEmpty(strN1113);
                        boolean zIsEmpty18 = TextUtils.isEmpty(string18);
                        if (zIsEmpty) {
                            zzhgVar2 = zzhgVar;
                        } else {
                            zzhgVar2 = zzhgVar;
                        }
                        String strN1114 = zzicVar6.r().n();
                        zzhhVar.g();
                        SharedPreferences.Editor editorEdit110 = zzhhVar.k().edit();
                        editorEdit110.putString("gmp_app_id", strN1114);
                        editorEdit110.apply();
                    } else {
                        zzhgVar2 = zzhgVar;
                    }
                    if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                        zzhgVar2.b(null);
                    }
                    zzic.l(zzljVar);
                    zzljVar.g.set(zzhgVar2.a());
                    zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                    zzguVar2 = zzguVar;
                    if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                        zF = zzicVar6.f();
                        sharedPreferences = zzhhVar.f31808c;
                        if (sharedPreferences == null) {
                            zContains = z2;
                        } else {
                            zContains = sharedPreferences.contains("deferred_analytics_collection");
                        }
                        if (!zContains) {
                            zzhhVar.o(!zF);
                        }
                        if (zF) {
                            zzic.l(zzljVar);
                            zzljVar.u();
                        }
                        zzoc zzocVar18 = zzicVar6.f31843h;
                        zzic.l(zzocVar18);
                        zzocVar18.f31937e.a();
                        zzicVar6.p().k(new AtomicReference());
                        zzicVar6.p().l(zzhhVar.y.a());
                    }
                }
                zzaif.a();
                if (zzalVar.r(null, zzfy.P0)) {
                    zzppVar2.g();
                    if (zzppVar2.D() == j3) {
                        long jIntValue18 = ((Integer) zzfy.w0.a(null)).intValue();
                        long jNextInt18 = new Random().nextInt(5000);
                        zzicVar6.f31846k.getClass();
                        jMax = Math.max(500L, ((jIntValue18 * 1000) + jNextInt18) - SystemClock.elapsedRealtime());
                        if (jMax > 500) {
                            zzic.m(zzguVar2);
                            zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                        }
                        zzic.l(zzljVar);
                        zzljVar.g();
                        if (zzljVar.l == null) {
                            zzljVar.l = new zzju(zzljVar, zzicVar5);
                        }
                        zzljVar.l.b(jMax);
                    }
                }
                zzhhVar.o.b(true);
            }
            EnumMap enumMap12 = new EnumMap(zzjk.class);
            enumMap12.put(zzjk.AD_STORAGE, zzjiVarW);
            enumMap12.put(zzjk.ANALYTICS_STORAGE, zzjiVarW2);
            zzjlVar = new zzjl(enumMap12, -10);
        }
        z2 = false;
        if (zzjlVar != null) {
            zzic.l(zzljVar);
            zzljVar.L(zzjlVar, true);
        } else {
            zzjlVar = zzjlVarN;
        }
        zzic.l(zzljVar);
        zzicVar5 = zzljVar.f31850a;
        zzljVar.P(zzjlVar);
        zzhhVar.g();
        int i112 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31582a;
        zzjiVarW3 = zzalVar.w("google_analytics_default_allow_ad_personalization_signals", true);
        if (zzjiVarW3 != zzjiVar) {
            zzic.m(zzguVar);
            zzgsVar3.b(zzjiVarW3, "Default ad personalization consent from Manifest");
        }
        zzjiVarW4 = zzalVar.w("google_analytics_default_allow_ad_user_data", true);
        if (zzjiVarW4 == zzjiVar) {
            if (!TextUtils.isEmpty(zzicVar4.r().n())) {
                zzic.l(zzljVar);
                zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
            }
        } else if (!TextUtils.isEmpty(zzicVar4.r().n())) {
            zzic.l(zzljVar);
            zzljVar.K(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
        }
        boolT = zzalVar.t("google_analytics_tcf_data_enabled");
        if (boolT != null) {
            zzic.m(zzguVar);
            zzgsVar.a("TCF client enabled.");
            zzic.l(zzljVar);
            zzljVar.g();
            zzgu zzguVar1111110 = zzicVar5.f31842f;
            zzic.m(zzguVar1111110);
            zzguVar1111110.m.a("Register tcfPrefChangeListener.");
            if (zzljVar.t == null) {
                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                        zzlj zzljVar2 = zzljVar;
                        zzljVar2.getClass();
                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                            zzgu zzguVar1111111 = zzljVar2.f31850a.f31842f;
                            zzic.m(zzguVar1111111);
                            zzguVar1111111.n.a("IABTCF_TCString change picked up in listener.");
                            zzkb zzkbVar = zzljVar2.u;
                            Preconditions.h(zzkbVar);
                            zzkbVar.b(500L);
                        }
                    }
                };
            }
            zzhh zzhhVar111112 = zzicVar5.f31841e;
            zzic.k(zzhhVar111112);
            zzhhVar111112.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
            zzic.l(zzljVar);
            zzljVar.m();
        } else {
            zzic.m(zzguVar);
            zzgsVar.a("TCF client enabled.");
            zzic.l(zzljVar);
            zzljVar.g();
            zzgu zzguVar1111111 = zzicVar5.f31842f;
            zzic.m(zzguVar1111111);
            zzguVar1111111.m.a("Register tcfPrefChangeListener.");
            if (zzljVar.t == null) {
                zzljVar.u = new zzkb(zzljVar, zzicVar5);
                zzljVar.t = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str7) {
                        zzlj zzljVar2 = zzljVar;
                        zzljVar2.getClass();
                        if (Objects.equals(str7, "IABTCF_TCString") || Objects.equals(str7, "IABTCF_gdprApplies") || Objects.equals(str7, "IABTCF_EnableAdvertiserConsentMode")) {
                            zzgu zzguVar1111112 = zzljVar2.f31850a.f31842f;
                            zzic.m(zzguVar1111112);
                            zzguVar1111112.n.a("IABTCF_TCString change picked up in listener.");
                            zzkb zzkbVar = zzljVar2.u;
                            Preconditions.h(zzkbVar);
                            zzkbVar.b(500L);
                        }
                    }
                };
            }
            zzhh zzhhVar111113 = zzicVar5.f31841e;
            zzic.k(zzhhVar111113);
            zzhhVar111113.l().registerOnSharedPreferenceChangeListener(zzljVar.t);
            zzic.l(zzljVar);
            zzljVar.m();
        }
        zzheVar = zzhhVar.f31810f;
        if (zzheVar.a() == 0) {
            zzic.m(zzguVar);
            zzgsVar3.b(Long.valueOf(j2), "Persisting first open");
            zzheVar.b(j2);
        }
        zzic.l(zzljVar);
        zzxVar = zzljVar.q;
        if (zzxVar.c()) {
            zzhh zzhhVar111114 = zzxVar.f32025a.f31841e;
            zzic.k(zzhhVar111114);
            zzhhVar111114.w.b(null);
        }
        if (zzicVar4.h()) {
            if (zzicVar4.f()) {
                if (zzppVar2.J("android.permission.INTERNET")) {
                    zzic.m(zzguVar);
                    zzgsVar6 = zzgsVar5;
                    zzgsVar6.a("App is missing INTERNET permission");
                } else {
                    zzgsVar6 = zzgsVar5;
                }
                if (!zzppVar2.J("android.permission.ACCESS_NETWORK_STATE")) {
                    zzic.m(zzguVar);
                    zzgsVar6.a("App is missing ACCESS_NETWORK_STATE permission");
                }
                zzicVar6 = zzicVar4;
                context = zzicVar6.f31838a;
                if (!Wrappers.a(context).c()) {
                    if (!zzpp.b0(context)) {
                        zzic.m(zzguVar);
                        zzgsVar6.a("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zzpp.B(context)) {
                        zzic.m(zzguVar);
                        zzgsVar6.a("AppMeasurementService not registered/enabled");
                    }
                }
                zzic.m(zzguVar);
                zzgsVar6.a("Uploading is not possible. App measurement disabled");
            } else {
                zzicVar6 = zzicVar4;
            }
            zzguVar2 = zzguVar;
        } else {
            zzicVar6 = zzicVar4;
            if (TextUtils.isEmpty(zzicVar6.r().n())) {
                String strN1115 = zzicVar6.r().n();
                zzhhVar.g();
                String string19 = zzhhVar.k().getString("gmp_app_id", null);
                zIsEmpty = TextUtils.isEmpty(strN1115);
                boolean zIsEmpty19 = TextUtils.isEmpty(string19);
                if (zIsEmpty) {
                    zzhgVar2 = zzhgVar;
                } else {
                    zzhgVar2 = zzhgVar;
                }
                String strN1116 = zzicVar6.r().n();
                zzhhVar.g();
                SharedPreferences.Editor editorEdit111 = zzhhVar.k().edit();
                editorEdit111.putString("gmp_app_id", strN1116);
                editorEdit111.apply();
            } else {
                zzhgVar2 = zzhgVar;
            }
            if (!zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                zzhgVar2.b(null);
            }
            zzic.l(zzljVar);
            zzljVar.g.set(zzhgVar2.a());
            zzicVar3.f31838a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            zzguVar2 = zzguVar;
            if (!TextUtils.isEmpty(zzicVar6.r().n())) {
                zF = zzicVar6.f();
                sharedPreferences = zzhhVar.f31808c;
                if (sharedPreferences == null) {
                    zContains = z2;
                } else {
                    zContains = sharedPreferences.contains("deferred_analytics_collection");
                }
                if (!zContains) {
                    zzhhVar.o(!zF);
                }
                if (zF) {
                    zzic.l(zzljVar);
                    zzljVar.u();
                }
                zzoc zzocVar19 = zzicVar6.f31843h;
                zzic.l(zzocVar19);
                zzocVar19.f31937e.a();
                zzicVar6.p().k(new AtomicReference());
                zzicVar6.p().l(zzhhVar.y.a());
            }
        }
        zzaif.a();
        if (zzalVar.r(null, zzfy.P0)) {
            zzppVar2.g();
            if (zzppVar2.D() == j3) {
                long jIntValue19 = ((Integer) zzfy.w0.a(null)).intValue();
                long jNextInt19 = new Random().nextInt(5000);
                zzicVar6.f31846k.getClass();
                jMax = Math.max(500L, ((jIntValue19 * 1000) + jNextInt19) - SystemClock.elapsedRealtime());
                if (jMax > 500) {
                    zzic.m(zzguVar2);
                    zzgsVar3.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                }
                zzic.l(zzljVar);
                zzljVar.g();
                if (zzljVar.l == null) {
                    zzljVar.l = new zzju(zzljVar, zzicVar5);
                }
                zzljVar.l.b(jMax);
            }
        }
        zzhhVar.o.b(true);
    }
}
