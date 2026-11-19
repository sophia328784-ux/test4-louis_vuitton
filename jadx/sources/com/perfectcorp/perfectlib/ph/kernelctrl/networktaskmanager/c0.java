package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41474c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c0(Object obj, Object obj2, int i2) {
        this.f41473b = i2;
        this.f41474c = obj;
        this.d = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = 1;
        switch (this.f41473b) {
            case 0:
                c.b bVar = (c.b) this.f41474c;
                String str = (String) obj;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ApplyEffectUtility.h(str, bVar.m, (Configuration.ImageSource) this.d, bVar.o, bVar.f41448f, false, null), new r81(13)), new c(str, i2), null).f(new x(bVar, 1));
            default:
                final e eVar = (e) this.f41474c;
                final Pair pair = (Pair) this.d;
                Object[] objArr = (Object[]) obj;
                c.a aVar = eVar.f41478c;
                synchronized (aVar.u) {
                    if (aVar.f39300c.isCancelled()) {
                        throw new SkipCallbackException("Future had been cancelled.");
                    }
                    aVar.v = true;
                }
                DBUtility.i(YMKDatabase.c(), new Runnable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a aVar2 = eVar.f41478c;
                        for (c.b bVar2 : (List) pair.first) {
                            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar3 = bVar2.f41447e;
                            String str2 = bVar3.d;
                            if (!str2.equals(aVar2.E)) {
                                bVar2.i();
                            } else if (aVar2.F) {
                                bVar2.i();
                                if (aVar2.D) {
                                    com.perfectcorp.perfectlib.ph.database.ymk.look.e.c(YMKDatabase.c(), str2, bVar3.f41225a.toString());
                                    SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                                    String str3 = bVar3.o;
                                    try {
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("ExtStr3", str3);
                                        sQLiteDatabaseC.update(YMKDatabase.a(sQLiteDatabaseC, "LookInfo"), contentValues, "GUID = ?", new String[]{str2});
                                    } catch (Throwable th) {
                                        Log.e("LookInfoDao", "updateFilterGuid failed", th);
                                        throw th;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                });
                return (DownloadReport.CompleteReport) objArr[0];
        }
    }
}
