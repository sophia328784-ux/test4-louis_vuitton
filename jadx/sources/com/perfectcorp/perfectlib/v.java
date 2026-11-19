package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.developermode.WatermarkBlender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41883b;

    public /* synthetic */ v(Object obj, int i2) {
        this.f41882a = i2;
        this.f41883b = obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f41882a;
        boolean z = true;
        Object obj = this.f41883b;
        switch (i2) {
            case 0:
                Configuration.ImageSource imageSource = (Configuration.ImageSource) obj;
                List<com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a> listB = com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b(null, null);
                Log.g(3, "CacheStrategyContentUpdater", "[updateCacheFirstThenUpdateContent] start update rows.size=" + listB.size());
                for (com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a c0136a : listB) {
                    try {
                        if (c0136a.d != com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b.f41169b) {
                            continue;
                        } else {
                            int i3 = CacheStrategyContentUpdater.AnonymousClass1.f39501a[c0136a.f41166b.ordinal()];
                            if (i3 == 1) {
                                ApplyEffectUtility.LookCacheFirstThenUpdateStrategy.a(c0136a, imageSource);
                            } else if (i3 == 2) {
                                SkuCacheStrategyHelper.b(c0136a, imageSource);
                            } else {
                                if (i3 != 3) {
                                    throw new UnsupportedOperationException("type '" + c0136a.f41166b + "' is not supported");
                                }
                                SkuCacheStrategyHelper.a(c0136a);
                            }
                        }
                    } catch (Throwable th) {
                        Log.e("CacheStrategyContentUpdater", "[updateCacheFirstThenUpdateContent] Error occurred while updating data. row=" + c0136a, th);
                    }
                }
                Log.g(3, "CacheStrategyContentUpdater", "[updateCacheFirstThenUpdateContent] update finished");
                SQLiteDatabase sQLiteDatabaseA = com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    sQLiteDatabaseA.delete("CacheStrategyForCacheFirstThenUpdate", null, null);
                    sQLiteDatabaseA.setTransactionSuccessful();
                    sQLiteDatabaseA.endTransaction();
                    Log.g(3, "CacheStrategyContentUpdater", "[updateCacheFirstThenUpdateContent] CacheStrategyForCacheFirstThenUpdateDao.clear() done");
                    return;
                } catch (Throwable th2) {
                    try {
                        Log.e("CacheStrategyForCacheFirstThenUpdateDao", "clear", th2);
                        throw th2;
                    } catch (Throwable th3) {
                        sQLiteDatabaseA.endTransaction();
                        throw th3;
                    }
                }
            case 1:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[applyEffectIds] success");
                ((VtoApplier.ApplyCallback) obj).onSuccess(null);
                return;
            case 2:
                PerfectLib.f39745j = PerfectLib.State.RELEASED;
                PerfectLib.f39738a = new ApplyEffectParams();
                PerfectLib.f39739b = new ApplyEffectParams();
                PerfectLib.f39740c = new HandFunctionalities();
                Set set = Collections.EMPTY_SET;
                PerfectLib.f39742f = set;
                PerfectLib.g = Configuration.m;
                com.perfectcorp.perfectlib.ymk.clflurry.a.f41968e = null;
                GPUImageRenderer.O = false;
                WatermarkBlender.f40116a = false;
                PerfectLib.d = set;
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                Log.g(3, "PerfectLib", "SDK released.");
                com.perfectcorp.common.logger.j.d();
                ((SettableFuture) obj).set("PerfectLib");
                return;
            case 3:
                Configuration configuration = (Configuration) obj;
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVarR = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r();
                applyEffectParams2.g = aVarR.getBoolean("6f59ea6b-0af4-4c36-948c-965dc8a7c80e", true) || aVarR.getBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", true) || aVarR.getBoolean("8db48cd5-5537-44a2-9280-347994063ac1", true);
                ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVarR2 = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r();
                applyEffectParams3.f40069h = aVarR2.getBoolean("8a277eed-7bf6-49bb-943a-77c55b7f92b2", true) || aVarR2.getBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", true) || aVarR2.getBoolean("8db48cd5-5537-44a2-9280-347994063ac1", true);
                PerfectLib.f39738a.r = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("c9d75858-7ec4-4e98-8fd6-088acae7658c", true);
                PerfectLib.f39738a.f40070i = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("8c533e4d-8dee-472b-88ae-23958087a236", true);
                PerfectLib.f39738a.f40071j = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("5392ce5e-fb36-4c65-864a-45e27399802f", true);
                PerfectLib.f39738a.l = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("770cb509-08c2-4004-ad1c-fe00050c5155", true);
                PerfectLib.f39738a.m = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", true);
                PerfectLib.f39738a.n = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("db6c20d6-9772-440a-83b5-7c7cd45c22d6", true);
                PerfectLib.f39738a.o = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("b354a7ba-9828-44bb-b6b8-e529b1b1a2da", true);
                PerfectLib.f39738a.p = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("05982a41-e607-43af-a1da-9c9ac30681f8", true);
                PerfectLib.f39738a.q = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("163a3804-45c7-49fa-8fb4-e12c2fe1f99f", true);
                PerfectLib.f39738a.s = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("5ba67514-b41e-44ad-9f1b-ef4d16a4bef2", true);
                ApplyEffectParams applyEffectParams4 = PerfectLib.f39739b;
                com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVarR3 = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r();
                applyEffectParams4.g = aVarR3.getBoolean("6f59ea6b-0af4-4c36-948c-965dc8a7c80e", true) || aVarR3.getBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", true) || aVarR3.getBoolean("8db48cd5-5537-44a2-9280-347994063ac1", true);
                ApplyEffectParams applyEffectParams5 = PerfectLib.f39739b;
                com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVarR4 = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r();
                applyEffectParams5.f40069h = aVarR4.getBoolean("8a277eed-7bf6-49bb-943a-77c55b7f92b2", true) || aVarR4.getBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", true) || aVarR4.getBoolean("8db48cd5-5537-44a2-9280-347994063ac1", true);
                PerfectLib.f39739b.r = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("c9d75858-7ec4-4e98-8fd6-088acae7658c", true);
                PerfectLib.f39739b.f40070i = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("a04adc79-a0ab-4726-bee8-4dc857a8672e", true);
                PerfectLib.f39739b.f40071j = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("089d2498-8bf1-411d-bc73-66cd9262897d", true);
                PerfectLib.f39739b.m = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("8db48cd5-5537-44a2-9280-347994063ac1", true);
                PerfectLib.f39739b.n = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("0e409f66-17cd-4bcd-99f9-f0faaf885790", true);
                PerfectLib.f39739b.o = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("f3162186-d3c4-465b-af95-4da31cb1851a", true);
                PerfectLib.f39739b.p = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("5d60e3a7-a146-4cef-bab8-6a00860c29de", true);
                PerfectLib.f39739b.q = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("93b923b7-81da-4336-a0fb-3d5a1b7a00ba", true);
                PerfectLib.f39739b.s = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("fccc5881-4bd9-41cf-b821-42a70a38c352", true);
                Log.g(3, "PerfectLib", "effectParams=" + PerfectLib.f39738a);
                Log.g(3, "PerfectLib", "photoMakeupParams=" + PerfectLib.f39739b);
                PerfectLib.f39740c = new HandFunctionalities(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r());
                Log.g(3, "PerfectLib", "handFunctionalities=" + PerfectLib.f39740c);
                PerfectLib.accessoryFunctionalities = new AccessoryFunctionalities(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r());
                Log.g(3, "PerfectLib", "accessoryFunctionalities=" + PerfectLib.accessoryFunctionalities);
                String string = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getString("8831e33f-707f-414a-b7f8-e1024c0b332b", null);
                Gson gson = GsonBaseResponse.f41999a;
                if (string == null) {
                    string = "";
                }
                InitResponse.a aVar = (InitResponse.a) gson.i(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.s(string), InitResponse.a.class);
                if (aVar != null) {
                    List<String> list = aVar.collectData;
                    boolean z2 = list != null && list.contains("consoleReport");
                    int i4 = aVar.countlyEventQueueSize;
                    if (i4 <= 0) {
                        i4 = -1;
                    }
                    com.perfectcorp.uma.countly.d.f43217j = i4;
                    boolean zEquals = "sendAfterUserConsent".equals(aVar.collectData_consoleReport);
                    boolean z3 = configuration.f39521j;
                    Log.g(3, "PerfectLib", "user accept to log events=" + configuration.f39521j);
                    if (!zEquals) {
                        z = z2;
                    } else if (!z2 || !z3) {
                        z = false;
                    }
                    Log.g(3, "PerfectLib", "countlyEventQueueSize=" + aVar.countlyEventQueueSize);
                    com.perfectcorp.uma.countly.d.f43217j = aVar.countlyEventQueueSize;
                }
                com.perfectcorp.perfectlib.ymk.clflurry.a.f41967c = z;
                Log.g(3, "PerfectLib", "needToLogEvents=" + z);
                return;
            case 4:
                ((TagHandler.SyncingTask) obj).f39988c.c(TagHandler.SyncServerCallback.class);
                return;
            default:
                Log.g(3, "TagHandler", "[syncServerByType] end. type=" + ((TagHandler.Type) obj));
                return;
        }
    }
}
