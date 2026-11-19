package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.DefaultClock;
import com.linkplay.medialib.ContentTree;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zznl extends zzg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zznf f31914c;
    public zzgb d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Boolean f31915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzmm f31916f;
    public ScheduledExecutorService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzog f31917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f31918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzmq f31919j;

    public zznl(zzic zzicVar) {
        super(zzicVar);
        this.f31918i = new ArrayList();
        this.f31917h = new zzog(zzicVar.f31846k);
        this.f31914c = new zznf(this);
        this.f31916f = new zzmm(this, zzicVar);
        this.f31919j = new zzmq(this, zzicVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return false;
    }

    public final void k(AtomicReference atomicReference) {
        g();
        h();
        u(new zzmi(this, atomicReference, w(false)));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0052  */
    /* JADX WARN: Code duplicated, block: B:14:0x0055  */
    public final void l(Bundle bundle) {
        boolean z;
        boolean zN;
        g();
        h();
        zzbf zzbfVar = new zzbf(bundle);
        s();
        zzic zzicVar = this.f31850a;
        if (zzicVar.d.r(null, zzfy.W0)) {
            zzgl zzglVarO = zzicVar.o();
            zzic zzicVar2 = zzglVarO.f31850a;
            zzpp zzppVar = zzicVar2.f31844i;
            zzgu zzguVar = zzicVar2.f31842f;
            zzic.k(zzppVar);
            byte[] bArrP = zzpp.P(zzbfVar);
            if (bArrP == null) {
                zzic.m(zzguVar);
                zzguVar.g.a("Null default event parameters; not writing to database");
            } else {
                if (bArrP.length > 131072) {
                    zzic.m(zzguVar);
                    zzguVar.g.a("Default event parameters too long for local database. Sending directly to service");
                } else {
                    zN = zzglVarO.n(4, bArrP);
                }
                if (zN) {
                    z = true;
                } else {
                    z = false;
                }
            }
            zN = false;
            if (zN) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        u(new zzmo(this, true, w(false), z, zzbfVar, bundle));
    }

    public final void m() {
        g();
        h();
        if (x()) {
            return;
        }
        if (n()) {
            zznf zznfVar = this.f31914c;
            zznl zznlVar = zznfVar.d;
            zznlVar.g();
            Context context = zznlVar.f31850a.f31838a;
            synchronized (zznfVar) {
                try {
                    if (zznfVar.f31912b) {
                        zzgu zzguVar = zznfVar.d.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.n.a("Connection attempt already in progress");
                        return;
                    } else {
                        if (zznfVar.f31913c != null && (zznfVar.f31913c.b() || zznfVar.f31913c.isConnected())) {
                            zzgu zzguVar2 = zznfVar.d.f31850a.f31842f;
                            zzic.m(zzguVar2);
                            zzguVar2.n.a("Already awaiting connection attempt");
                            return;
                        }
                        zznfVar.f31913c = new zzgo(context, Looper.getMainLooper(), zznfVar, zznfVar);
                        zzgu zzguVar3 = zznfVar.d.f31850a.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.n.a("Connecting to remote service");
                        zznfVar.f31912b = true;
                        Preconditions.h(zznfVar.f31913c);
                        zznfVar.f31913c.o();
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzic zzicVar = this.f31850a;
        if (zzicVar.d.j()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = zzicVar.f31838a.getPackageManager().queryIntentServices(new Intent().setClassName(zzicVar.f31838a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzgu zzguVar4 = zzicVar.f31842f;
            zzic.m(zzguVar4);
            zzguVar4.f31769f.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(zzicVar.f31838a, "com.google.android.gms.measurement.AppMeasurementService"));
        zznf zznfVar2 = this.f31914c;
        zznl zznlVar2 = zznfVar2.d;
        zznlVar2.g();
        Context context2 = zznlVar2.f31850a.f31838a;
        ConnectionTracker connectionTrackerB = ConnectionTracker.b();
        synchronized (zznfVar2) {
            try {
                boolean z = zznfVar2.f31912b;
                zznl zznlVar3 = zznfVar2.d;
                if (z) {
                    zzgu zzguVar5 = zznlVar3.f31850a.f31842f;
                    zzic.m(zzguVar5);
                    zzguVar5.n.a("Connection attempt already in progress");
                } else {
                    zzgu zzguVar6 = zznlVar3.f31850a.f31842f;
                    zzic.m(zzguVar6);
                    zzguVar6.n.a("Using local app measurement service");
                    zznfVar2.f31912b = true;
                    connectionTrackerB.a(context2, intent, zznlVar3.f31914c, 129);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean n() {
        g();
        h();
        if (this.f31915e == null) {
            g();
            h();
            zzic zzicVar = this.f31850a;
            zzhh zzhhVar = zzicVar.f31841e;
            zzic.k(zzhhVar);
            zzhhVar.g();
            boolean z = false;
            Boolean boolValueOf = !zzhhVar.k().contains("use_service") ? null : Boolean.valueOf(zzhhVar.k().getBoolean("use_service", false));
            boolean z2 = true;
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                zzgi zzgiVarR = this.f31850a.r();
                zzgiVarR.h();
                if (zzgiVarR.n == 1) {
                    z = true;
                } else {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.n.a("Checking service availability");
                    zzpp zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    int iB = GoogleApiAvailabilityLight.f28964b.b(zzppVar.f31850a.f31838a, 12451000);
                    if (iB == 0) {
                        zzgu zzguVar2 = zzicVar.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.n.a("Service available");
                    } else if (iB == 1) {
                        zzgu zzguVar3 = zzicVar.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.n.a("Service missing");
                    } else if (iB != 2) {
                        if (iB != 3) {
                            zzgu zzguVar4 = zzicVar.f31842f;
                            if (iB == 9) {
                                zzic.m(zzguVar4);
                                zzguVar4.f31771i.a("Service invalid");
                            } else if (iB != 18) {
                                zzic.m(zzguVar4);
                                zzguVar4.f31771i.b(Integer.valueOf(iB), "Unexpected service status");
                            } else {
                                zzic.m(zzguVar4);
                                zzguVar4.f31771i.a("Service updating");
                            }
                        } else {
                            zzgu zzguVar5 = zzicVar.f31842f;
                            zzic.m(zzguVar5);
                            zzguVar5.f31771i.a("Service disabled");
                        }
                        z2 = false;
                    } else {
                        zzgu zzguVar6 = zzicVar.f31842f;
                        zzic.m(zzguVar6);
                        zzguVar6.m.a("Service container out of date");
                        zzpp zzppVar2 = zzicVar.f31844i;
                        zzic.k(zzppVar2);
                        if (zzppVar2.R() >= 17443) {
                            z = boolValueOf == null;
                            z2 = false;
                        }
                    }
                    z = true;
                }
                if (!z && zzicVar.d.j()) {
                    zzgu zzguVar7 = zzicVar.f31842f;
                    zzic.m(zzguVar7);
                    zzguVar7.f31769f.a("No way to upload. Consider using the full version of Analytics");
                } else if (z2) {
                    zzhh zzhhVar2 = zzicVar.f31841e;
                    zzic.k(zzhhVar2);
                    zzhhVar2.g();
                    SharedPreferences.Editor editorEdit = zzhhVar2.k().edit();
                    editorEdit.putBoolean("use_service", z);
                    editorEdit.apply();
                }
                z2 = z;
            }
            this.f31915e = Boolean.valueOf(z2);
        }
        return this.f31915e.booleanValue();
    }

    public final void o() {
        g();
        h();
        zznf zznfVar = this.f31914c;
        if (zznfVar.f31913c != null && (zznfVar.f31913c.isConnected() || zznfVar.f31913c.b())) {
            zznfVar.f31913c.disconnect();
        }
        zznfVar.f31913c = null;
        try {
            ConnectionTracker.b().c(this.f31850a.f31838a, zznfVar);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final boolean p() {
        g();
        h();
        if (!n()) {
            return true;
        }
        zzpp zzppVar = this.f31850a.f31844i;
        zzic.k(zzppVar);
        return zzppVar.R() >= ((Integer) zzfy.J0.a(null)).intValue();
    }

    public final boolean q() {
        g();
        h();
        if (!n()) {
            return true;
        }
        zzpp zzppVar = this.f31850a.f31844i;
        zzic.k(zzppVar);
        return zzppVar.R() >= 241200;
    }

    public final void r(ComponentName componentName) {
        g();
        if (this.d != null) {
            this.d = null;
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.b(componentName, "Disconnected from device MeasurementService");
            g();
            m();
        }
    }

    public final void s() {
        this.f31850a.getClass();
    }

    public final void t() {
        g();
        zzog zzogVar = this.f31917h;
        zzogVar.f31942b = zzogVar.f31941a.b();
        this.f31850a.getClass();
        this.f31916f.b(((Long) zzfy.Y.a(null)).longValue());
    }

    public final void u(Runnable runnable) {
        g();
        if (x()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.f31918i;
        long size = arrayList.size();
        zzic zzicVar = this.f31850a;
        zzicVar.getClass();
        if (size >= 1000) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Discarding data. Max runnable queue size reached");
        } else {
            arrayList.add(runnable);
            this.f31919j.b(60000L);
            m();
        }
    }

    public final void v() {
        g();
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzgs zzgsVar = zzguVar.n;
        ArrayList arrayList = this.f31918i;
        zzgsVar.b(Integer.valueOf(arrayList.size()), "Processing queued up service tasks");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Task exception while flushing queue");
            }
        }
        arrayList.clear();
        this.f31919j.c();
    }

    public final zzr w(boolean z) {
        long jAbs;
        Pair pair;
        zzic zzicVar = this.f31850a;
        zzicVar.getClass();
        zzgi zzgiVarR = zzicVar.r();
        String strP = null;
        if (z) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzic zzicVar2 = zzguVar.f31850a;
            zzhh zzhhVar = zzicVar2.f31841e;
            zzic.k(zzhhVar);
            if (zzhhVar.f31809e != null) {
                zzhh zzhhVar2 = zzicVar2.f31841e;
                zzic.k(zzhhVar2);
                zzhf zzhfVar = zzhhVar2.f31809e;
                zzhh zzhhVar3 = zzhfVar.f31804e;
                zzhhVar3.g();
                zzhhVar3.g();
                long j2 = zzhfVar.f31804e.k().getLong(zzhfVar.f31801a, 0L);
                if (j2 == 0) {
                    zzhfVar.a();
                    jAbs = 0;
                } else {
                    zzhhVar3.f31850a.f31846k.getClass();
                    jAbs = Math.abs(j2 - System.currentTimeMillis());
                }
                long j3 = zzhfVar.d;
                if (jAbs < j3) {
                    pair = null;
                } else if (jAbs > j3 + j3) {
                    zzhfVar.a();
                    pair = null;
                } else {
                    String string = zzhhVar3.k().getString(zzhfVar.f31803c, null);
                    long j4 = zzhhVar3.k().getLong(zzhfVar.f31802b, 0L);
                    zzhfVar.a();
                    pair = (string == null || j4 <= 0) ? zzhh.z : new Pair(string, Long.valueOf(j4));
                }
                if (pair != null && pair != zzhh.z) {
                    String strValueOf = String.valueOf(pair.second);
                    String str = (String) pair.first;
                    strP = d21.p(new StringBuilder(strValueOf.length() + 1 + String.valueOf(str).length()), strValueOf, ":", str);
                }
            }
        }
        return zzgiVarR.k(strP);
    }

    public final boolean x() {
        g();
        h();
        return this.d != null;
    }

    /* JADX WARN: Code duplicated, block: B:258:0x0432 A[Catch: all -> 0x046e, TRY_ENTER, TryCatch #48 {all -> 0x046e, blocks: (B:268:0x045e, B:258:0x0432, B:260:0x0438, B:261:0x043b, B:278:0x047f, B:207:0x0369, B:209:0x0373, B:214:0x0384), top: B:395:0x045e }] */
    /* JADX WARN: Code duplicated, block: B:263:0x044a  */
    /* JADX WARN: Code duplicated, block: B:271:0x0465  */
    /* JADX WARN: Code duplicated, block: B:273:0x046a A[PHI: r4 r6 r23 r24 r26 r36 r37
      0x046a: PHI (r4v15 android.database.sqlite.SQLiteDatabase) = 
      (r4v12 android.database.sqlite.SQLiteDatabase)
      (r4v13 android.database.sqlite.SQLiteDatabase)
      (r4v16 android.database.sqlite.SQLiteDatabase)
     binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r6v5 int) = (r6v3 int), (r6v3 int), (r6v6 int) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r23v9 int) = (r23v6 int), (r23v7 int), (r23v10 int) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r24v9 java.lang.String) = (r24v6 java.lang.String), (r24v7 java.lang.String), (r24v10 java.lang.String) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r26v9 java.lang.String) = (r26v6 java.lang.String), (r26v7 java.lang.String), (r26v10 java.lang.String) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r36v9 int) = (r36v6 int), (r36v7 int), (r36v10 int) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x046a: PHI (r37v9 java.lang.String) = (r37v6 java.lang.String), (r37v7 java.lang.String), (r37v10 java.lang.String) binds: [B:264:0x044d, B:281:0x0491, B:272:0x0468] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:280:0x048e  */
    /* JADX WARN: Code duplicated, block: B:285:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:287:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:292:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:293:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:300:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:302:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:304:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:305:0x0587  */
    /* JADX WARN: Code duplicated, block: B:316:0x05b4 A[Catch: RemoteException -> 0x05e2, TRY_LEAVE, TryCatch #41 {RemoteException -> 0x05e2, blocks: (B:314:0x05a9, B:316:0x05b4), top: B:389:0x05a9 }] */
    /* JADX WARN: Code duplicated, block: B:319:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:337:0x061e  */
    /* JADX WARN: Code duplicated, block: B:339:0x0622  */
    /* JADX WARN: Code duplicated, block: B:341:0x0643  */
    /* JADX WARN: Code duplicated, block: B:347:0x0662  */
    /* JADX WARN: Code duplicated, block: B:353:0x067a  */
    /* JADX WARN: Code duplicated, block: B:361:0x069d  */
    /* JADX WARN: Code duplicated, block: B:385:0x064f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:403:0x0666 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:412:0x058f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:456:0x0494 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:457:0x0494 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:459:0x0494 A[SYNTHETIC] */
    public final void y(zzgb zzgbVar, AbstractSafeParcelable abstractSafeParcelable, zzr zzrVar) throws Throwable {
        ArrayList arrayList;
        zzic zzicVar;
        Context context;
        zzgu zzguVar;
        int i2;
        SQLiteDatabase sQLiteDatabaseM;
        int i3;
        int i4;
        Cursor cursor;
        Cursor cursorQuery;
        Cursor cursorQuery2;
        long j2;
        String str;
        String[] strArr;
        int i5;
        long j3;
        String string;
        zzbf zzbfVarCreateFromParcel;
        int i6;
        zzah zzahVarCreateFromParcel;
        zzpl zzplVarCreateFromParcel;
        int size;
        int size2;
        int i7;
        zzgk zzgkVar;
        AbstractSafeParcelable abstractSafeParcelable2;
        zzfx zzfxVar;
        zzic zzicVar2;
        Context context2;
        zzgu zzguVar2;
        long jElapsedRealtime;
        long j4;
        long jCurrentTimeMillis;
        String str2;
        g();
        h();
        s();
        zzic zzicVar3 = this.f31850a;
        zzicVar3.getClass();
        Context context3 = zzicVar3.f31838a;
        zzal zzalVar = zzicVar3.d;
        zzgu zzguVar3 = zzicVar3.f31842f;
        DefaultClock defaultClock = zzicVar3.f31846k;
        int i8 = 100;
        zzr zzrVar2 = zzrVar;
        int i9 = 0;
        for (int i10 = 100; i9 < 1001 && i10 == i8; i10 = size) {
            ArrayList arrayList2 = new ArrayList();
            zzgl zzglVarO = zzicVar3.o();
            String str3 = "entry";
            int i11 = i8;
            String str4 = "type";
            String str5 = "rowid";
            DefaultClock defaultClock2 = defaultClock;
            zzic zzicVar4 = zzglVarO.f31850a;
            zzglVarO.g();
            int i12 = i9;
            if (zzglVarO.d) {
                zzicVar = zzicVar3;
                context = context3;
                zzguVar = zzguVar3;
            } else {
                arrayList = new ArrayList();
                zzicVar = zzicVar3;
                if (zzglVarO.f31850a.f31838a.getDatabasePath("google_app_measurement_local.db").exists()) {
                    int i13 = 5;
                    context = context3;
                    zzguVar = zzguVar3;
                    int i14 = 0;
                    int i15 = 5;
                    while (true) {
                        if (i14 < i13) {
                            try {
                                sQLiteDatabaseM = zzglVarO.m();
                                if (sQLiteDatabaseM == null) {
                                    try {
                                        try {
                                            zzglVarO.d = true;
                                        } catch (Throwable th) {
                                            th = th;
                                            sQLiteDatabaseM = sQLiteDatabaseM;
                                            cursor = null;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (sQLiteDatabaseM != null) {
                                                sQLiteDatabaseM.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteDatabaseLockedException unused) {
                                        i3 = i14;
                                        str5 = str5;
                                        i4 = 5;
                                        str4 = str4;
                                        cursorQuery = null;
                                        try {
                                            SystemClock.sleep(i15);
                                            i15 += 20;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (sQLiteDatabaseM != null) {
                                                sQLiteDatabaseM.close();
                                            }
                                            i14 = i3 + 1;
                                            i13 = i4;
                                            str4 = str4;
                                            str3 = str3;
                                            str5 = str5;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor = cursorQuery;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (sQLiteDatabaseM != null) {
                                                sQLiteDatabaseM.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteFullException e2) {
                                        e = e2;
                                        i3 = i14;
                                        str5 = str5;
                                        i4 = 5;
                                        str4 = str4;
                                        cursorQuery = null;
                                        zzgu zzguVar4 = zzicVar4.f31842f;
                                        zzic.m(zzguVar4);
                                        zzguVar4.f31769f.b(e, "Error reading entries from local database");
                                        zzglVarO.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseM != null) {
                                            sQLiteDatabaseM.close();
                                        }
                                        i14 = i3 + 1;
                                        i13 = i4;
                                        str4 = str4;
                                        str3 = str3;
                                        str5 = str5;
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        i3 = i14;
                                        str5 = str5;
                                        i4 = 5;
                                        str4 = str4;
                                        cursorQuery = null;
                                        if (sQLiteDatabaseM != null && sQLiteDatabaseM.inTransaction()) {
                                            sQLiteDatabaseM.endTransaction();
                                        }
                                        zzgu zzguVar5 = zzicVar4.f31842f;
                                        zzic.m(zzguVar5);
                                        zzguVar5.f31769f.b(e, "Error reading entries from local database");
                                        zzglVarO.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseM != null) {
                                            sQLiteDatabaseM.close();
                                        }
                                        i14 = i3 + 1;
                                        i13 = i4;
                                        str4 = str4;
                                        str3 = str3;
                                        str5 = str5;
                                    }
                                } else {
                                    sQLiteDatabaseM.beginTransaction();
                                    try {
                                        cursorQuery2 = sQLiteDatabaseM.query("messages", new String[]{str5}, "type=?", new String[]{ContentTree.IMAGE_ID}, null, null, "rowid desc", "1");
                                        try {
                                            long j5 = -1;
                                            if (cursorQuery2.moveToFirst()) {
                                                i3 = i14;
                                                try {
                                                    j2 = cursorQuery2.getLong(0);
                                                    try {
                                                        cursorQuery2.close();
                                                    } catch (SQLiteDatabaseLockedException unused2) {
                                                        str5 = str5;
                                                        i4 = 5;
                                                        str4 = str4;
                                                        cursorQuery = null;
                                                        SystemClock.sleep(i15);
                                                        i15 += 20;
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        if (sQLiteDatabaseM != null) {
                                                            sQLiteDatabaseM.close();
                                                        }
                                                        i14 = i3 + 1;
                                                        i13 = i4;
                                                        str4 = str4;
                                                        str3 = str3;
                                                        str5 = str5;
                                                    } catch (SQLiteFullException e4) {
                                                        e = e4;
                                                        str5 = str5;
                                                        i4 = 5;
                                                        str4 = str4;
                                                        cursorQuery = null;
                                                        zzgu zzguVar6 = zzicVar4.f31842f;
                                                        zzic.m(zzguVar6);
                                                        zzguVar6.f31769f.b(e, "Error reading entries from local database");
                                                        zzglVarO.d = true;
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        if (sQLiteDatabaseM != null) {
                                                            sQLiteDatabaseM.close();
                                                        }
                                                        i14 = i3 + 1;
                                                        i13 = i4;
                                                        str4 = str4;
                                                        str3 = str3;
                                                        str5 = str5;
                                                    } catch (SQLiteException e5) {
                                                        e = e5;
                                                        str5 = str5;
                                                        i4 = 5;
                                                        str4 = str4;
                                                        cursorQuery = null;
                                                        if (sQLiteDatabaseM != null) {
                                                            sQLiteDatabaseM.endTransaction();
                                                        }
                                                        zzgu zzguVar7 = zzicVar4.f31842f;
                                                        zzic.m(zzguVar7);
                                                        zzguVar7.f31769f.b(e, "Error reading entries from local database");
                                                        zzglVarO.d = true;
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        if (sQLiteDatabaseM != null) {
                                                            sQLiteDatabaseM.close();
                                                        }
                                                        i14 = i3 + 1;
                                                        i13 = i4;
                                                        str4 = str4;
                                                        str3 = str3;
                                                        str5 = str5;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    i4 = 5;
                                                    if (cursorQuery2 != null) {
                                                        try {
                                                            cursorQuery2.close();
                                                        } catch (SQLiteDatabaseLockedException unused3) {
                                                            cursorQuery = null;
                                                            SystemClock.sleep(i15);
                                                            i15 += 20;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                            }
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.close();
                                                            }
                                                            i14 = i3 + 1;
                                                            i13 = i4;
                                                            str4 = str4;
                                                            str3 = str3;
                                                            str5 = str5;
                                                        } catch (SQLiteFullException e6) {
                                                            e = e6;
                                                            cursorQuery = null;
                                                            zzgu zzguVar8 = zzicVar4.f31842f;
                                                            zzic.m(zzguVar8);
                                                            zzguVar8.f31769f.b(e, "Error reading entries from local database");
                                                            zzglVarO.d = true;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                            }
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.close();
                                                            }
                                                            i14 = i3 + 1;
                                                            i13 = i4;
                                                            str4 = str4;
                                                            str3 = str3;
                                                            str5 = str5;
                                                        } catch (SQLiteException e7) {
                                                            e = e7;
                                                            cursorQuery = null;
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.endTransaction();
                                                            }
                                                            zzgu zzguVar9 = zzicVar4.f31842f;
                                                            zzic.m(zzguVar9);
                                                            zzguVar9.f31769f.b(e, "Error reading entries from local database");
                                                            zzglVarO.d = true;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                            }
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.close();
                                                            }
                                                            i14 = i3 + 1;
                                                            i13 = i4;
                                                            str4 = str4;
                                                            str3 = str3;
                                                            str5 = str5;
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            cursor = null;
                                                            if (cursor != null) {
                                                                cursor.close();
                                                            }
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.close();
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            } else {
                                                i3 = i14;
                                                cursorQuery2.close();
                                                j2 = -1;
                                            }
                                            if (j2 != -1) {
                                                str = "rowid<?";
                                                strArr = new String[]{String.valueOf(j2)};
                                            } else {
                                                str = null;
                                                strArr = null;
                                            }
                                            try {
                                                String[] strArr2 = {str5, str4, str3};
                                                zzal zzalVar2 = zzicVar4.d;
                                                zzfx zzfxVar2 = zzfy.W0;
                                                str5 = str5;
                                                try {
                                                    try {
                                                        int i16 = 4;
                                                        int i17 = 3;
                                                        if (zzalVar2.r(null, zzfxVar2)) {
                                                            i5 = 5;
                                                            try {
                                                                strArr2 = new String[]{str5, str4, str3, "app_version", "app_version_int"};
                                                            } catch (SQLiteDatabaseLockedException unused4) {
                                                                i4 = 5;
                                                                str4 = str4;
                                                                cursorQuery = null;
                                                                SystemClock.sleep(i15);
                                                                i15 += 20;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            } catch (SQLiteFullException e8) {
                                                                e = e8;
                                                                i4 = 5;
                                                                str4 = str4;
                                                                cursorQuery = null;
                                                                zzgu zzguVar10 = zzicVar4.f31842f;
                                                                zzic.m(zzguVar10);
                                                                zzguVar10.f31769f.b(e, "Error reading entries from local database");
                                                                zzglVarO.d = true;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            } catch (SQLiteException e9) {
                                                                e = e9;
                                                                i4 = 5;
                                                                str4 = str4;
                                                                cursorQuery = null;
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.endTransaction();
                                                                }
                                                                zzgu zzguVar11 = zzicVar4.f31842f;
                                                                zzic.m(zzguVar11);
                                                                zzguVar11.f31769f.b(e, "Error reading entries from local database");
                                                                zzglVarO.d = true;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            }
                                                        } else {
                                                            i5 = 5;
                                                        }
                                                        try {
                                                            cursorQuery = sQLiteDatabaseM.query("messages", strArr2, str, strArr, null, null, "rowid asc", Integer.toString(i11));
                                                            while (cursorQuery.moveToNext()) {
                                                                try {
                                                                    try {
                                                                        try {
                                                                            j5 = cursorQuery.getLong(0);
                                                                            try {
                                                                                int i18 = cursorQuery.getInt(1);
                                                                                str4 = str4;
                                                                                try {
                                                                                    byte[] blob = cursorQuery.getBlob(2);
                                                                                    str3 = str3;
                                                                                    try {
                                                                                        if (zzicVar4.d.r(null, zzfxVar2)) {
                                                                                            try {
                                                                                                string = cursorQuery.getString(i17);
                                                                                                j3 = cursorQuery.getLong(i16);
                                                                                            } catch (SQLiteDatabaseLockedException unused5) {
                                                                                                cursorQuery = cursorQuery;
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                SystemClock.sleep(i15);
                                                                                                i15 += 20;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            } catch (SQLiteFullException e10) {
                                                                                                e = e10;
                                                                                                cursorQuery = cursorQuery;
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                zzgu zzguVar12 = zzicVar4.f31842f;
                                                                                                zzic.m(zzguVar12);
                                                                                                zzguVar12.f31769f.b(e, "Error reading entries from local database");
                                                                                                zzglVarO.d = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            } catch (SQLiteException e11) {
                                                                                                e = e11;
                                                                                                cursorQuery = cursorQuery;
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.endTransaction();
                                                                                                }
                                                                                                zzgu zzguVar13 = zzicVar4.f31842f;
                                                                                                zzic.m(zzguVar13);
                                                                                                zzguVar13.f31769f.b(e, "Error reading entries from local database");
                                                                                                zzglVarO.d = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            }
                                                                                        } else {
                                                                                            j3 = 0;
                                                                                            string = null;
                                                                                        }
                                                                                        if (i18 == 0) {
                                                                                            cursorQuery = cursorQuery;
                                                                                            try {
                                                                                                try {
                                                                                                    Parcel parcelObtain = Parcel.obtain();
                                                                                                    try {
                                                                                                        try {
                                                                                                            parcelObtain.unmarshall(blob, 0, blob.length);
                                                                                                            parcelObtain.setDataPosition(0);
                                                                                                            zzbh zzbhVarCreateFromParcel = zzbh.CREATOR.createFromParcel(parcelObtain);
                                                                                                            parcelObtain.recycle();
                                                                                                            if (zzbhVarCreateFromParcel != null) {
                                                                                                                arrayList.add(new zzgk(zzbhVarCreateFromParcel, string, j3));
                                                                                                            }
                                                                                                        } catch (SafeParcelReader.ParseException unused6) {
                                                                                                            zzgu zzguVar14 = zzicVar4.f31842f;
                                                                                                            zzic.m(zzguVar14);
                                                                                                            zzguVar14.f31769f.a("Failed to load event from local database");
                                                                                                            parcelObtain.recycle();
                                                                                                        }
                                                                                                    } catch (Throwable th5) {
                                                                                                        parcelObtain.recycle();
                                                                                                        throw th5;
                                                                                                    }
                                                                                                } catch (Throwable th6) {
                                                                                                    th = th6;
                                                                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                    cursor = cursorQuery;
                                                                                                    if (cursor != null) {
                                                                                                        cursor.close();
                                                                                                    }
                                                                                                    if (sQLiteDatabaseM != null) {
                                                                                                        sQLiteDatabaseM.close();
                                                                                                    }
                                                                                                    throw th;
                                                                                                }
                                                                                            } catch (SQLiteDatabaseLockedException unused7) {
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                SystemClock.sleep(i15);
                                                                                                i15 += 20;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            } catch (SQLiteFullException e12) {
                                                                                                e = e12;
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                zzgu zzguVar15 = zzicVar4.f31842f;
                                                                                                zzic.m(zzguVar15);
                                                                                                zzguVar15.f31769f.b(e, "Error reading entries from local database");
                                                                                                zzglVarO.d = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            } catch (SQLiteException e13) {
                                                                                                e = e13;
                                                                                                sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                i4 = 5;
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.endTransaction();
                                                                                                }
                                                                                                zzgu zzguVar16 = zzicVar4.f31842f;
                                                                                                zzic.m(zzguVar16);
                                                                                                zzguVar16.f31769f.b(e, "Error reading entries from local database");
                                                                                                zzglVarO.d = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (sQLiteDatabaseM != null) {
                                                                                                    sQLiteDatabaseM.close();
                                                                                                }
                                                                                                i14 = i3 + 1;
                                                                                                i13 = i4;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                str5 = str5;
                                                                                            }
                                                                                        } else {
                                                                                            cursorQuery = cursorQuery;
                                                                                            if (i18 == 1) {
                                                                                                Parcel parcelObtain2 = Parcel.obtain();
                                                                                                try {
                                                                                                    try {
                                                                                                        parcelObtain2.unmarshall(blob, 0, blob.length);
                                                                                                        parcelObtain2.setDataPosition(0);
                                                                                                        zzplVarCreateFromParcel = zzpl.CREATOR.createFromParcel(parcelObtain2);
                                                                                                        parcelObtain2.recycle();
                                                                                                    } catch (Throwable th7) {
                                                                                                        parcelObtain2.recycle();
                                                                                                        throw th7;
                                                                                                    }
                                                                                                } catch (SafeParcelReader.ParseException unused8) {
                                                                                                    zzgu zzguVar17 = zzicVar4.f31842f;
                                                                                                    zzic.m(zzguVar17);
                                                                                                    zzguVar17.f31769f.a("Failed to load user property from local database");
                                                                                                    parcelObtain2.recycle();
                                                                                                    zzplVarCreateFromParcel = null;
                                                                                                }
                                                                                                if (zzplVarCreateFromParcel != null) {
                                                                                                    arrayList.add(new zzgk(zzplVarCreateFromParcel, string, j3));
                                                                                                }
                                                                                            } else {
                                                                                                if (i18 == 2) {
                                                                                                    Parcel parcelObtain3 = Parcel.obtain();
                                                                                                    try {
                                                                                                        try {
                                                                                                            parcelObtain3.unmarshall(blob, 0, blob.length);
                                                                                                            parcelObtain3.setDataPosition(0);
                                                                                                            zzahVarCreateFromParcel = zzah.CREATOR.createFromParcel(parcelObtain3);
                                                                                                            parcelObtain3.recycle();
                                                                                                        } catch (SafeParcelReader.ParseException unused9) {
                                                                                                            zzgu zzguVar18 = zzicVar4.f31842f;
                                                                                                            zzic.m(zzguVar18);
                                                                                                            zzguVar18.f31769f.a("Failed to load conditional user property from local database");
                                                                                                            parcelObtain3.recycle();
                                                                                                            zzahVarCreateFromParcel = null;
                                                                                                        }
                                                                                                        if (zzahVarCreateFromParcel != null) {
                                                                                                            arrayList.add(new zzgk(zzahVarCreateFromParcel, string, j3));
                                                                                                        }
                                                                                                    } catch (Throwable th8) {
                                                                                                        parcelObtain3.recycle();
                                                                                                        throw th8;
                                                                                                    }
                                                                                                } else if (i18 == 4) {
                                                                                                    try {
                                                                                                        Parcel parcelObtain4 = Parcel.obtain();
                                                                                                        try {
                                                                                                            try {
                                                                                                                try {
                                                                                                                    parcelObtain4.unmarshall(blob, 0, blob.length);
                                                                                                                    parcelObtain4.setDataPosition(0);
                                                                                                                    zzbfVarCreateFromParcel = zzbf.CREATOR.createFromParcel(parcelObtain4);
                                                                                                                    try {
                                                                                                                        parcelObtain4.recycle();
                                                                                                                        if (zzbfVarCreateFromParcel != null) {
                                                                                                                            arrayList.add(new zzgk(zzbfVarCreateFromParcel, string, j3));
                                                                                                                        }
                                                                                                                        i6 = 3;
                                                                                                                    } catch (SQLiteDatabaseLockedException unused10) {
                                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                                        i4 = 5;
                                                                                                                        SystemClock.sleep(i15);
                                                                                                                        i15 += 20;
                                                                                                                        if (cursorQuery != null) {
                                                                                                                            cursorQuery.close();
                                                                                                                        }
                                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                                            sQLiteDatabaseM.close();
                                                                                                                        }
                                                                                                                        i14 = i3 + 1;
                                                                                                                        i13 = i4;
                                                                                                                        str4 = str4;
                                                                                                                        str3 = str3;
                                                                                                                        str5 = str5;
                                                                                                                    } catch (SQLiteFullException e14) {
                                                                                                                        e = e14;
                                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                                        i4 = 5;
                                                                                                                        zzgu zzguVar19 = zzicVar4.f31842f;
                                                                                                                        zzic.m(zzguVar19);
                                                                                                                        zzguVar19.f31769f.b(e, "Error reading entries from local database");
                                                                                                                        zzglVarO.d = true;
                                                                                                                        if (cursorQuery != null) {
                                                                                                                            cursorQuery.close();
                                                                                                                        }
                                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                                            sQLiteDatabaseM.close();
                                                                                                                        }
                                                                                                                        i14 = i3 + 1;
                                                                                                                        i13 = i4;
                                                                                                                        str4 = str4;
                                                                                                                        str3 = str3;
                                                                                                                        str5 = str5;
                                                                                                                    } catch (SQLiteException e15) {
                                                                                                                        e = e15;
                                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                                        i4 = 5;
                                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                                            sQLiteDatabaseM.endTransaction();
                                                                                                                        }
                                                                                                                        zzgu zzguVar110 = zzicVar4.f31842f;
                                                                                                                        zzic.m(zzguVar110);
                                                                                                                        zzguVar110.f31769f.b(e, "Error reading entries from local database");
                                                                                                                        zzglVarO.d = true;
                                                                                                                        if (cursorQuery != null) {
                                                                                                                            cursorQuery.close();
                                                                                                                        }
                                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                                            sQLiteDatabaseM.close();
                                                                                                                        }
                                                                                                                        i14 = i3 + 1;
                                                                                                                        i13 = i4;
                                                                                                                        str4 = str4;
                                                                                                                        str3 = str3;
                                                                                                                        str5 = str5;
                                                                                                                    }
                                                                                                                } catch (Throwable th9) {
                                                                                                                    th = th9;
                                                                                                                    parcelObtain4.recycle();
                                                                                                                    throw th;
                                                                                                                }
                                                                                                            } catch (SafeParcelReader.ParseException unused11) {
                                                                                                                zzgu zzguVar20 = zzicVar4.f31842f;
                                                                                                                zzic.m(zzguVar20);
                                                                                                                zzguVar20.f31769f.a("Failed to load default event parameters from local database");
                                                                                                                parcelObtain4.recycle();
                                                                                                                zzbfVarCreateFromParcel = null;
                                                                                                            }
                                                                                                        } catch (SafeParcelReader.ParseException unused12) {
                                                                                                        } catch (Throwable th10) {
                                                                                                            th = th10;
                                                                                                        }
                                                                                                    } catch (SQLiteDatabaseLockedException unused13) {
                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                        i4 = 5;
                                                                                                        SystemClock.sleep(i15);
                                                                                                        i15 += 20;
                                                                                                        if (cursorQuery != null) {
                                                                                                            cursorQuery.close();
                                                                                                        }
                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                            sQLiteDatabaseM.close();
                                                                                                        }
                                                                                                        i14 = i3 + 1;
                                                                                                        i13 = i4;
                                                                                                        str4 = str4;
                                                                                                        str3 = str3;
                                                                                                        str5 = str5;
                                                                                                    } catch (SQLiteFullException e16) {
                                                                                                        e = e16;
                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                        i4 = 5;
                                                                                                        zzgu zzguVar111 = zzicVar4.f31842f;
                                                                                                        zzic.m(zzguVar111);
                                                                                                        zzguVar111.f31769f.b(e, "Error reading entries from local database");
                                                                                                        zzglVarO.d = true;
                                                                                                        if (cursorQuery != null) {
                                                                                                            cursorQuery.close();
                                                                                                        }
                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                            sQLiteDatabaseM.close();
                                                                                                        }
                                                                                                        i14 = i3 + 1;
                                                                                                        i13 = i4;
                                                                                                        str4 = str4;
                                                                                                        str3 = str3;
                                                                                                        str5 = str5;
                                                                                                    } catch (SQLiteException e17) {
                                                                                                        e = e17;
                                                                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                                        i4 = 5;
                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                            sQLiteDatabaseM.endTransaction();
                                                                                                        }
                                                                                                        zzgu zzguVar112 = zzicVar4.f31842f;
                                                                                                        zzic.m(zzguVar112);
                                                                                                        zzguVar112.f31769f.b(e, "Error reading entries from local database");
                                                                                                        zzglVarO.d = true;
                                                                                                        if (cursorQuery != null) {
                                                                                                            cursorQuery.close();
                                                                                                        }
                                                                                                        if (sQLiteDatabaseM != null) {
                                                                                                            sQLiteDatabaseM.close();
                                                                                                        }
                                                                                                        i14 = i3 + 1;
                                                                                                        i13 = i4;
                                                                                                        str4 = str4;
                                                                                                        str3 = str3;
                                                                                                        str5 = str5;
                                                                                                    }
                                                                                                } else {
                                                                                                    zzgu zzguVar21 = zzicVar4.f31842f;
                                                                                                    i6 = 3;
                                                                                                    if (i18 == 3) {
                                                                                                        zzic.m(zzguVar21);
                                                                                                        zzguVar21.n.a("Skipping app launch break");
                                                                                                    } else {
                                                                                                        zzic.m(zzguVar21);
                                                                                                        zzguVar21.f31769f.a("Unknown record type in local database");
                                                                                                    }
                                                                                                }
                                                                                                i17 = i6;
                                                                                                str4 = str4;
                                                                                                str3 = str3;
                                                                                                zzfxVar2 = zzfxVar2;
                                                                                                cursorQuery = cursorQuery;
                                                                                                i16 = 4;
                                                                                            }
                                                                                        }
                                                                                        i6 = 3;
                                                                                        i17 = i6;
                                                                                        str4 = str4;
                                                                                        str3 = str3;
                                                                                        zzfxVar2 = zzfxVar2;
                                                                                        cursorQuery = cursorQuery;
                                                                                        i16 = 4;
                                                                                    } catch (SQLiteDatabaseLockedException unused14) {
                                                                                        cursorQuery = cursorQuery;
                                                                                    } catch (SQLiteFullException e18) {
                                                                                        e = e18;
                                                                                        cursorQuery = cursorQuery;
                                                                                    } catch (SQLiteException e19) {
                                                                                        e = e19;
                                                                                        cursorQuery = cursorQuery;
                                                                                    }
                                                                                } catch (SQLiteDatabaseLockedException unused15) {
                                                                                    str3 = str3;
                                                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                    i4 = 5;
                                                                                    SystemClock.sleep(i15);
                                                                                    i15 += 20;
                                                                                    if (cursorQuery != null) {
                                                                                        cursorQuery.close();
                                                                                    }
                                                                                    if (sQLiteDatabaseM != null) {
                                                                                        sQLiteDatabaseM.close();
                                                                                    }
                                                                                    i14 = i3 + 1;
                                                                                    i13 = i4;
                                                                                    str4 = str4;
                                                                                    str3 = str3;
                                                                                    str5 = str5;
                                                                                } catch (SQLiteFullException e20) {
                                                                                    e = e20;
                                                                                    str3 = str3;
                                                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                    i4 = 5;
                                                                                    zzgu zzguVar113 = zzicVar4.f31842f;
                                                                                    zzic.m(zzguVar113);
                                                                                    zzguVar113.f31769f.b(e, "Error reading entries from local database");
                                                                                    zzglVarO.d = true;
                                                                                    if (cursorQuery != null) {
                                                                                        cursorQuery.close();
                                                                                    }
                                                                                    if (sQLiteDatabaseM != null) {
                                                                                        sQLiteDatabaseM.close();
                                                                                    }
                                                                                    i14 = i3 + 1;
                                                                                    i13 = i4;
                                                                                    str4 = str4;
                                                                                    str3 = str3;
                                                                                    str5 = str5;
                                                                                } catch (SQLiteException e21) {
                                                                                    e = e21;
                                                                                    str3 = str3;
                                                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                                                    i4 = 5;
                                                                                    if (sQLiteDatabaseM != null) {
                                                                                        sQLiteDatabaseM.endTransaction();
                                                                                    }
                                                                                    zzgu zzguVar114 = zzicVar4.f31842f;
                                                                                    zzic.m(zzguVar114);
                                                                                    zzguVar114.f31769f.b(e, "Error reading entries from local database");
                                                                                    zzglVarO.d = true;
                                                                                    if (cursorQuery != null) {
                                                                                        cursorQuery.close();
                                                                                    }
                                                                                    if (sQLiteDatabaseM != null) {
                                                                                        sQLiteDatabaseM.close();
                                                                                    }
                                                                                    i14 = i3 + 1;
                                                                                    i13 = i4;
                                                                                    str4 = str4;
                                                                                    str3 = str3;
                                                                                    str5 = str5;
                                                                                }
                                                                            } catch (SQLiteDatabaseLockedException unused16) {
                                                                                str4 = str4;
                                                                            } catch (SQLiteFullException e22) {
                                                                                e = e22;
                                                                                str4 = str4;
                                                                            } catch (SQLiteException e23) {
                                                                                e = e23;
                                                                                str4 = str4;
                                                                            }
                                                                        } catch (SQLiteDatabaseLockedException unused17) {
                                                                            cursorQuery = cursorQuery;
                                                                            str4 = str4;
                                                                            str3 = str3;
                                                                        } catch (SQLiteFullException e24) {
                                                                            e = e24;
                                                                            cursorQuery = cursorQuery;
                                                                            str4 = str4;
                                                                            str3 = str3;
                                                                        } catch (SQLiteException e25) {
                                                                            e = e25;
                                                                            cursorQuery = cursorQuery;
                                                                            str4 = str4;
                                                                            str3 = str3;
                                                                        }
                                                                    } catch (Throwable th11) {
                                                                        th = th11;
                                                                        cursorQuery = cursorQuery;
                                                                    }
                                                                } catch (SQLiteDatabaseLockedException unused18) {
                                                                    cursorQuery = cursorQuery;
                                                                    str4 = str4;
                                                                    str3 = str3;
                                                                } catch (SQLiteFullException e26) {
                                                                    e = e26;
                                                                    cursorQuery = cursorQuery;
                                                                    str4 = str4;
                                                                    str3 = str3;
                                                                } catch (SQLiteException e27) {
                                                                    e = e27;
                                                                    cursorQuery = cursorQuery;
                                                                    str4 = str4;
                                                                    str3 = str3;
                                                                }
                                                            }
                                                            cursorQuery = cursorQuery;
                                                            str4 = str4;
                                                            str3 = str3;
                                                            i2 = 0;
                                                            sQLiteDatabaseM = sQLiteDatabaseM;
                                                            try {
                                                                if (sQLiteDatabaseM.delete("messages", "rowid <= ?", new String[]{Long.toString(j5)}) < arrayList.size()) {
                                                                    zzgu zzguVar22 = zzicVar4.f31842f;
                                                                    zzic.m(zzguVar22);
                                                                    zzguVar22.f31769f.a("Fewer entries removed from local database than expected");
                                                                }
                                                                sQLiteDatabaseM.setTransactionSuccessful();
                                                                sQLiteDatabaseM.endTransaction();
                                                                cursorQuery.close();
                                                                sQLiteDatabaseM.close();
                                                            } catch (SQLiteDatabaseLockedException unused19) {
                                                                i4 = 5;
                                                                SystemClock.sleep(i15);
                                                                i15 += 20;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            } catch (SQLiteFullException e28) {
                                                                e = e28;
                                                                i4 = 5;
                                                                zzgu zzguVar115 = zzicVar4.f31842f;
                                                                zzic.m(zzguVar115);
                                                                zzguVar115.f31769f.b(e, "Error reading entries from local database");
                                                                zzglVarO.d = true;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            } catch (SQLiteException e29) {
                                                                e = e29;
                                                                i4 = 5;
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.endTransaction();
                                                                }
                                                                zzgu zzguVar116 = zzicVar4.f31842f;
                                                                zzic.m(zzguVar116);
                                                                zzguVar116.f31769f.b(e, "Error reading entries from local database");
                                                                zzglVarO.d = true;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                if (sQLiteDatabaseM != null) {
                                                                    sQLiteDatabaseM.close();
                                                                }
                                                                i14 = i3 + 1;
                                                                i13 = i4;
                                                                str4 = str4;
                                                                str3 = str3;
                                                                str5 = str5;
                                                            }
                                                        } catch (SQLiteDatabaseLockedException unused20) {
                                                            str3 = str3;
                                                            sQLiteDatabaseM = sQLiteDatabaseM;
                                                            str4 = str4;
                                                            i4 = i5;
                                                            cursorQuery = null;
                                                            SystemClock.sleep(i15);
                                                            i15 += 20;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                            }
                                                            if (sQLiteDatabaseM != null) {
                                                                sQLiteDatabaseM.close();
                                                            }
                                                            i14 = i3 + 1;
                                                            i13 = i4;
                                                            str4 = str4;
                                                            str3 = str3;
                                                            str5 = str5;
                                                        }
                                                    } catch (SQLiteDatabaseLockedException unused21) {
                                                        str3 = str3;
                                                        sQLiteDatabaseM = sQLiteDatabaseM;
                                                        str4 = str4;
                                                        i4 = 5;
                                                        cursorQuery = null;
                                                        SystemClock.sleep(i15);
                                                        i15 += 20;
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        if (sQLiteDatabaseM != null) {
                                                            sQLiteDatabaseM.close();
                                                        }
                                                        i14 = i3 + 1;
                                                        i13 = i4;
                                                        str4 = str4;
                                                        str3 = str3;
                                                        str5 = str5;
                                                    }
                                                } catch (SQLiteFullException e30) {
                                                    e = e30;
                                                    str3 = str3;
                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                    str4 = str4;
                                                    i4 = 5;
                                                    cursorQuery = null;
                                                    zzgu zzguVar117 = zzicVar4.f31842f;
                                                    zzic.m(zzguVar117);
                                                    zzguVar117.f31769f.b(e, "Error reading entries from local database");
                                                    zzglVarO.d = true;
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    if (sQLiteDatabaseM != null) {
                                                        sQLiteDatabaseM.close();
                                                    }
                                                    i14 = i3 + 1;
                                                    i13 = i4;
                                                    str4 = str4;
                                                    str3 = str3;
                                                    str5 = str5;
                                                } catch (SQLiteException e31) {
                                                    e = e31;
                                                    str3 = str3;
                                                    sQLiteDatabaseM = sQLiteDatabaseM;
                                                    str4 = str4;
                                                    i4 = 5;
                                                    cursorQuery = null;
                                                    if (sQLiteDatabaseM != null) {
                                                        sQLiteDatabaseM.endTransaction();
                                                    }
                                                    zzgu zzguVar118 = zzicVar4.f31842f;
                                                    zzic.m(zzguVar118);
                                                    zzguVar118.f31769f.b(e, "Error reading entries from local database");
                                                    zzglVarO.d = true;
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    if (sQLiteDatabaseM != null) {
                                                        sQLiteDatabaseM.close();
                                                    }
                                                    i14 = i3 + 1;
                                                    i13 = i4;
                                                    str4 = str4;
                                                    str3 = str3;
                                                    str5 = str5;
                                                }
                                            } catch (SQLiteDatabaseLockedException unused22) {
                                                str5 = str5;
                                            } catch (SQLiteFullException e32) {
                                                e = e32;
                                                str5 = str5;
                                            } catch (SQLiteException e33) {
                                                e = e33;
                                                str5 = str5;
                                            }
                                        } catch (Throwable th12) {
                                            th = th12;
                                            i3 = i14;
                                        }
                                    } catch (Throwable th13) {
                                        th = th13;
                                        i3 = i14;
                                        i4 = 5;
                                        cursorQuery2 = null;
                                    }
                                }
                            } catch (SQLiteDatabaseLockedException unused23) {
                                i3 = i14;
                                str5 = str5;
                                str4 = str4;
                                str3 = str3;
                                i4 = 5;
                                sQLiteDatabaseM = null;
                            } catch (SQLiteFullException e34) {
                                e = e34;
                                i3 = i14;
                                str5 = str5;
                                str4 = str4;
                                str3 = str3;
                                i4 = 5;
                                sQLiteDatabaseM = null;
                            } catch (SQLiteException e35) {
                                e = e35;
                                i3 = i14;
                                str5 = str5;
                                str4 = str4;
                                str3 = str3;
                                i4 = 5;
                                sQLiteDatabaseM = null;
                            } catch (Throwable th14) {
                                th = th14;
                                sQLiteDatabaseM = null;
                            }
                        } else {
                            i2 = 0;
                            zzgu zzguVar23 = zzicVar4.f31842f;
                            zzic.m(zzguVar23);
                            zzguVar23.f31771i.a("Failed to read events from database in reasonable time");
                            arrayList = null;
                        }
                        i14 = i3 + 1;
                        i13 = i4;
                        str4 = str4;
                        str3 = str3;
                        str5 = str5;
                    }
                } else {
                    context = context3;
                    zzguVar = zzguVar3;
                    i2 = 0;
                }
                if (arrayList != null) {
                    arrayList2.addAll(arrayList);
                    size = arrayList.size();
                } else {
                    size = i2;
                }
                if (abstractSafeParcelable != null && size < i11) {
                    arrayList2.add(new zzgk(abstractSafeParcelable, zzrVar2.d, zzrVar2.f32023k));
                }
                size2 = arrayList2.size();
                i7 = i2;
                while (i7 < size2) {
                    zzgkVar = (zzgk) arrayList2.get(i7);
                    abstractSafeParcelable2 = zzgkVar.f31750a;
                    zzfxVar = zzfy.W0;
                    if (zzalVar.r(null, zzfxVar)) {
                        str2 = zzgkVar.f31751b;
                        if (!TextUtils.isEmpty(str2)) {
                            zzrVar2 = new zzr(zzrVar2.f32016b, zzrVar2.f32017c, str2, zzgkVar.f31752c, zzrVar2.f32018e, zzrVar2.f32019f, zzrVar2.g, zzrVar2.f32020h, zzrVar2.f32021i, zzrVar2.f32022j, zzrVar2.l, zzrVar2.m, zzrVar2.n, zzrVar2.o, zzrVar2.p, zzrVar2.q, zzrVar2.r, zzrVar2.s, zzrVar2.t, zzrVar2.u, zzrVar2.v, zzrVar2.w, zzrVar2.x, zzrVar2.y, zzrVar2.z, zzrVar2.A, zzrVar2.B, zzrVar2.C, zzrVar2.D, zzrVar2.E, zzrVar2.F, zzrVar2.G);
                        }
                    }
                    if (abstractSafeParcelable2 instanceof zzbh) {
                        try {
                            defaultClock2.getClass();
                            jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                defaultClock2.getClass();
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                try {
                                    try {
                                        zzgbVar.s2((zzbh) abstractSafeParcelable2, zzrVar2);
                                        zzic.m(zzguVar);
                                        zzguVar2 = zzguVar;
                                        try {
                                            zzguVar2.n.a("Logging telemetry for logEvent from database");
                                            if (zzgq.d == null) {
                                                zzicVar2 = zzicVar;
                                                context2 = context;
                                                try {
                                                    zzgq.d = new zzgq(context2, zzicVar2);
                                                } catch (RemoteException e36) {
                                                    e = e36;
                                                    j4 = jCurrentTimeMillis;
                                                    zzic.m(zzguVar2);
                                                    zzguVar2.f31769f.b(e, "Failed to send event to the service");
                                                    if (j4 != 0) {
                                                        if (zzgq.d == null) {
                                                            zzgq.d = new zzgq(context2, zzicVar2);
                                                        }
                                                        zzgq zzgqVar = zzgq.d;
                                                        defaultClock2.getClass();
                                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                        defaultClock2.getClass();
                                                        zzgqVar.a(j4, jCurrentTimeMillis2, 13, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                                    }
                                                }
                                            } else {
                                                zzicVar2 = zzicVar;
                                                context2 = context;
                                            }
                                            zzgq zzgqVar2 = zzgq.d;
                                            defaultClock2.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            defaultClock2.getClass();
                                            zzgqVar2.a(jCurrentTimeMillis, jCurrentTimeMillis3, 0, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                        } catch (RemoteException e37) {
                                            e = e37;
                                            zzicVar2 = zzicVar;
                                            context2 = context;
                                        }
                                    } catch (RemoteException e38) {
                                        e = e38;
                                        zzicVar2 = zzicVar;
                                        context2 = context;
                                        zzguVar2 = zzguVar;
                                        j4 = jCurrentTimeMillis;
                                        zzic.m(zzguVar2);
                                        zzguVar2.f31769f.b(e, "Failed to send event to the service");
                                        if (j4 != 0) {
                                            if (zzgq.d == null) {
                                                zzgq.d = new zzgq(context2, zzicVar2);
                                            }
                                            zzgq zzgqVar3 = zzgq.d;
                                            defaultClock2.getClass();
                                            long jCurrentTimeMillis4 = System.currentTimeMillis();
                                            defaultClock2.getClass();
                                            zzgqVar3.a(j4, jCurrentTimeMillis4, 13, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                        }
                                        i7++;
                                        zzguVar = zzguVar2;
                                        context = context2;
                                        zzicVar = zzicVar2;
                                        size = size;
                                    }
                                } catch (RemoteException e39) {
                                    e = e39;
                                }
                            } catch (RemoteException e40) {
                                e = e40;
                                zzicVar2 = zzicVar;
                                context2 = context;
                                zzguVar2 = zzguVar;
                                jElapsedRealtime = 0;
                            }
                        } catch (RemoteException e41) {
                            e = e41;
                            zzicVar2 = zzicVar;
                            context2 = context;
                            zzguVar2 = zzguVar;
                            jElapsedRealtime = 0;
                            j4 = 0;
                        }
                    } else {
                        zzicVar2 = zzicVar;
                        context2 = context;
                        zzguVar2 = zzguVar;
                        if (abstractSafeParcelable2 instanceof zzpl) {
                            try {
                                zzgbVar.b0((zzpl) abstractSafeParcelable2, zzrVar2);
                            } catch (RemoteException e42) {
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.b(e42, "Failed to send user property to the service");
                            }
                        } else {
                            if (abstractSafeParcelable2 instanceof zzah) {
                                try {
                                    zzgbVar.n((zzah) abstractSafeParcelable2, zzrVar2);
                                } catch (RemoteException e43) {
                                    zzic.m(zzguVar2);
                                    zzguVar2.f31769f.b(e43, "Failed to send conditional user property to the service");
                                }
                            } else if (zzalVar.r(null, zzfxVar) || !(abstractSafeParcelable2 instanceof zzbf)) {
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.a("Discarding data. Unrecognized parcel type.");
                            } else {
                                try {
                                    zzgbVar.S1(((zzbf) abstractSafeParcelable2).Z1(), zzrVar2);
                                } catch (RemoteException e44) {
                                    zzic.m(zzguVar2);
                                    zzguVar2.f31769f.b(e44, "Failed to send default event parameters to the service");
                                }
                            }
                            i7++;
                            zzguVar = zzguVar2;
                            context = context2;
                            zzicVar = zzicVar2;
                            size = size;
                        }
                    }
                    i7++;
                    zzguVar = zzguVar2;
                    context = context2;
                    zzicVar = zzicVar2;
                    size = size;
                }
                zzguVar3 = zzguVar;
                context3 = context;
                zzicVar3 = zzicVar;
                defaultClock = defaultClock2;
                i8 = 100;
                i9 = i12 + 1;
            }
            i2 = 0;
            arrayList = null;
            if (arrayList != null) {
                arrayList2.addAll(arrayList);
                size = arrayList.size();
            } else {
                size = i2;
            }
            if (abstractSafeParcelable != null) {
                arrayList2.add(new zzgk(abstractSafeParcelable, zzrVar2.d, zzrVar2.f32023k));
            }
            size2 = arrayList2.size();
            i7 = i2;
            while (i7 < size2) {
                zzgkVar = (zzgk) arrayList2.get(i7);
                abstractSafeParcelable2 = zzgkVar.f31750a;
                zzfxVar = zzfy.W0;
                if (zzalVar.r(null, zzfxVar)) {
                    str2 = zzgkVar.f31751b;
                    if (!TextUtils.isEmpty(str2)) {
                        zzrVar2 = new zzr(zzrVar2.f32016b, zzrVar2.f32017c, str2, zzgkVar.f31752c, zzrVar2.f32018e, zzrVar2.f32019f, zzrVar2.g, zzrVar2.f32020h, zzrVar2.f32021i, zzrVar2.f32022j, zzrVar2.l, zzrVar2.m, zzrVar2.n, zzrVar2.o, zzrVar2.p, zzrVar2.q, zzrVar2.r, zzrVar2.s, zzrVar2.t, zzrVar2.u, zzrVar2.v, zzrVar2.w, zzrVar2.x, zzrVar2.y, zzrVar2.z, zzrVar2.A, zzrVar2.B, zzrVar2.C, zzrVar2.D, zzrVar2.E, zzrVar2.F, zzrVar2.G);
                    }
                }
                if (abstractSafeParcelable2 instanceof zzbh) {
                    defaultClock2.getClass();
                    jCurrentTimeMillis = System.currentTimeMillis();
                    defaultClock2.getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    zzgbVar.s2((zzbh) abstractSafeParcelable2, zzrVar2);
                    zzic.m(zzguVar);
                    zzguVar2 = zzguVar;
                    zzguVar2.n.a("Logging telemetry for logEvent from database");
                    if (zzgq.d == null) {
                        zzicVar2 = zzicVar;
                        context2 = context;
                        zzgq.d = new zzgq(context2, zzicVar2);
                    } else {
                        zzicVar2 = zzicVar;
                        context2 = context;
                    }
                    zzgq zzgqVar4 = zzgq.d;
                    defaultClock2.getClass();
                    long jCurrentTimeMillis5 = System.currentTimeMillis();
                    defaultClock2.getClass();
                    zzgqVar4.a(jCurrentTimeMillis, jCurrentTimeMillis5, 0, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                } else {
                    zzicVar2 = zzicVar;
                    context2 = context;
                    zzguVar2 = zzguVar;
                    if (abstractSafeParcelable2 instanceof zzpl) {
                        zzgbVar.b0((zzpl) abstractSafeParcelable2, zzrVar2);
                    } else {
                        if (abstractSafeParcelable2 instanceof zzah) {
                            zzgbVar.n((zzah) abstractSafeParcelable2, zzrVar2);
                        } else if (zzalVar.r(null, zzfxVar)) {
                            zzic.m(zzguVar2);
                            zzguVar2.f31769f.a("Discarding data. Unrecognized parcel type.");
                        } else {
                            zzic.m(zzguVar2);
                            zzguVar2.f31769f.a("Discarding data. Unrecognized parcel type.");
                        }
                        i7++;
                        zzguVar = zzguVar2;
                        context = context2;
                        zzicVar = zzicVar2;
                        size = size;
                    }
                }
                i7++;
                zzguVar = zzguVar2;
                context = context2;
                zzicVar = zzicVar2;
                size = size;
            }
            zzguVar3 = zzguVar;
            context3 = context;
            zzicVar3 = zzicVar;
            defaultClock = defaultClock2;
            i8 = 100;
            i9 = i12 + 1;
        }
    }

    public final void z(zzah zzahVar) {
        boolean zN;
        g();
        h();
        zzic zzicVar = this.f31850a;
        zzicVar.getClass();
        zzgl zzglVarO = zzicVar.o();
        zzic zzicVar2 = zzglVarO.f31850a;
        zzic.k(zzicVar2.f31844i);
        byte[] bArrP = zzpp.P(zzahVar);
        if (bArrP.length > 131072) {
            zzgu zzguVar = zzicVar2.f31842f;
            zzic.m(zzguVar);
            zzguVar.g.a("Conditional user property too long for local database. Sending directly to service");
            zN = false;
        } else {
            zN = zzglVarO.n(2, bArrP);
        }
        boolean z = zN;
        u(new zzmu(this, true, w(true), z, new zzah(zzahVar), zzahVar));
    }
}
