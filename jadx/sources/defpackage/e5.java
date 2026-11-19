package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.platform.AndroidComposeView;
import com.appsflyer.internal.AFi1aSDK;
import com.batch.android.v0.l;
import com.github.druk.dnssd.DNSSDEmbedded;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.ph.utility.networkcache.a;
import com.perfectcorp.uma.b;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e5 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68766b;

    public /* synthetic */ e5(int i2) {
        this.f68766b = i2;
    }

    private final void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 3;
        int i3 = 2;
        switch (this.f68766b) {
            case 0:
                int i4 = AlarmManagerSchedulerBroadcastReceiver.f28054a;
                return;
            case 1:
                MutableObjectList mutableObjectList = AndroidComposeView.T1;
                synchronized (mutableObjectList) {
                    try {
                        int i5 = Build.VERSION.SDK_INT;
                        Object[] objArr = mutableObjectList.f3345a;
                        int i6 = mutableObjectList.f3346b;
                        int i7 = 0;
                        if (i5 < 30) {
                            while (i7 < i6) {
                                AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i7];
                                boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                                AndroidComposeView.P1.getClass();
                                androidComposeView.setShowLayoutBounds(AndroidComposeView.Companion.a());
                                if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                    androidComposeView.post(new n5(androidComposeView, i3));
                                }
                                i7++;
                            }
                        } else {
                            while (i7 < i6) {
                                AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr[i7];
                                androidComposeView2.post(new n5(androidComposeView2, i2));
                                i7++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 2:
                return;
            case 3:
                DNSSDEmbedded.nativeExit();
                return;
            case 4:
                LookHandlerPreferences.f40326a.m();
                LookHandlerPreferences.f40327b.m();
                a.C0186a.f41754b.f41755a.edit().remove("cacheKey").apply();
                LookHandler lookHandler = LookHandler.getInstance();
                if (lookHandler != null) {
                    lookHandler.f39666c.clear();
                    return;
                }
                return;
            case 5:
                PerfectLib.a();
                return;
            case 6:
                if (com.perfectcorp.perfectlib.ymk.clflurry.a.b()) {
                    return;
                }
                try {
                    b.d();
                    return;
                } catch (Throwable th2) {
                    Log.j("CLFlurryAgentHelper", "", th2);
                    return;
                }
            case 7:
                com.perfectcorp.perfectlib.internal.a.a();
                return;
            case 8:
                SkuHandlerPreferences.f40330a.m();
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new fx0(sQLiteDatabaseC, 2));
                com.perfectcorp.perfectlib.ph.database.mcsdk.a aVarH = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h();
                aVarH.getClass();
                Log.g(3, "SkuAndShadeIdMappingDatabase", "clear");
                SQLiteDatabase writableDatabase = aVarH.getWritableDatabase();
                writableDatabase.beginTransaction();
                try {
                    writableDatabase.delete("SkuAndShadeIdMapping", null, null);
                    writableDatabase.setTransactionSuccessful();
                    break;
                } catch (Throwable th3) {
                    try {
                        Log.e("SkuAndShadeIdMappingDatabase", "clear", th3);
                    } finally {
                        writableDatabase.endTransaction();
                    }
                    break;
                }
                return;
            case 9:
                AFi1aSDK.unregisterClient();
                return;
            default:
                l.k();
                return;
        }
    }
}
