package defpackage;

import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.developermode.WatermarkBlender;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b;
import com.perfectcorp.perfectlib.y3;
import com.perfectcorp.perfectlib.ymk.clflurry.a;
import com.perfectcorp.perfectlib.ymk.clflurry.f;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class na0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f76481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76482c;

    public /* synthetic */ na0(Object obj, Object obj2, int i2) {
        this.f76480a = i2;
        this.f76481b = obj;
        this.f76482c = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) throws Exception {
        switch (this.f76480a) {
            case 0:
                LookInfo lookInfo = (LookInfo) this.f76481b;
                LookHandler.DownloadCallback downloadCallback = (LookHandler.DownloadCallback) this.f76482c;
                Throwable th = (Throwable) obj;
                if (th instanceof SkipCallbackException) {
                    Log.c("LookHandler", "[download] canceled. guid=" + lookInfo.getGuid(), th);
                } else {
                    Log.e("LookHandler", "[download] failed. guid=" + lookInfo.getGuid(), th);
                    downloadCallback.onFailure(InternalErrorRetriever.a(th));
                }
                break;
            case 1:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f76481b;
                LookHandler.CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback = (LookHandler.CheckNeedToUpdateWithGuidsCallback) this.f76482c;
                Log.g(3, "LookHandler", "[checkNeedToUpdateWithGuids] success, needToUpdateMap.size" + concurrentHashMap.size());
                checkNeedToUpdateWithGuidsCallback.onSuccess(concurrentHashMap);
                break;
            case 2:
                Configuration configuration = (Configuration) this.f76481b;
                SettableFuture settableFuture = (SettableFuture) this.f76482c;
                Set set = (Set) obj;
                PerfectLib.f39745j = PerfectLib.State.INITIALIZED;
                PerfectLib.f39738a.f40064a = "";
                PerfectLib.g = configuration;
                a.f41968e = configuration.f39518f;
                com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVarR = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r();
                if (aVarR.getInt("ACTIVATION_EVENT_SENT_VERSION", 0) != 11900) {
                    f.a aVar = new f.a();
                    f fVar = new f("MCSDK_Activation", "1");
                    HashMap mapA = fVar.a();
                    mapA.putAll(aVar.f41973a);
                    fVar.c(mapA);
                    fVar.b();
                    aVarR.n(11900, "ACTIVATION_EVENT_SENT_VERSION");
                }
                new f().b();
                GPUImageRenderer.O = configuration.g;
                WatermarkBlender.f40116a = configuration.g;
                PerfectLib.f39744i = new CompositeDisposable();
                PerfectLib.d = set;
                PerfectLib.f39741e = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getStringSet("f0a4e420-6682-45ec-abf2-79604f725e66", Collections.EMPTY_SET);
                Log.g(3, "PerfectLib", "SDK initialized. availableFunctionalities=" + set + ", enabledAiFaceConditions=" + PerfectLib.f39741e);
                settableFuture.set(PerfectLib.d);
                break;
            case 3:
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) this.f76481b;
                ArrayList arrayList = (ArrayList) this.f76482c;
                com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.conditionalinfo.a aVar2 = (com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.conditionalinfo.a) ((RequestTask.Response) obj).f39358b;
                ArrayList arrayList2 = new ArrayList();
                for (com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.conditionalinfo.a.C0189a c0189a : aVar2.results) {
                    if (c0189a != null && !TextUtils.isEmpty(c0189a.guid) && c0189a.info != null) {
                        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.C0187a c0187a = new com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.C0187a();
                        String str = c0189a.guid;
                        Objects.requireNonNull(str);
                        c0187a.f41820a = str;
                        String strK = GsonHelper.f39260a.k(c0189a.info);
                        Objects.requireNonNull(strK);
                        c0187a.f41821b = strK;
                        arrayList2.add(new com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a(c0187a));
                    }
                }
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new aa0(sQLiteDatabaseC, arrayList2, 22));
                PfCommons.c(new com.perfectcorp.perfectlib.f(syncServerCallback, aVar2, arrayList, 10));
                break;
            case 4:
                SharedPreferences.Editor editor = (SharedPreferences.Editor) this.f76481b;
                RecommendationHandler.SyncServerCallback syncServerCallback2 = (RecommendationHandler.SyncServerCallback) this.f76482c;
                editor.putString("SURVEY_CONTENT", (String) ((RequestTask.Response) obj).f39358b);
                PfCommons.c(new y3(syncServerCallback2, 4));
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadSurveyContent] end");
                break;
            case 5:
                String str2 = (String) this.f76481b;
                Multimap multimap = (Multimap) this.f76482c;
                File file = (File) obj;
                a.v(3, "[getThumbnailDownloadTasks] download successfully. url=", str2, "SkinCare3RecommendationHandler");
                for (DownloadImageInfo.Builder builder : multimap.get(str2)) {
                    builder.f40311b = file.getAbsolutePath();
                    builder.f40313e = file.length();
                }
                a.v(3, "[getThumbnailDownloadTasks] builder updated. url=", str2, "SkinCare3RecommendationHandler");
                break;
            case 6:
                File file2 = (File) obj;
                for (DownloadImageInfo.Builder builder2 : ((SkuDataForProtocol) this.f76481b).f39920k.get(this.f76482c)) {
                    builder2.f40311b = file2.getAbsolutePath();
                    builder2.f40313e = file2.length();
                }
                break;
            case 7:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.f76481b;
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) this.f76482c;
                downloadTaskCancelable.c();
                skuDataForProtocol.k();
                break;
            case 8:
                PerfectEffect perfectEffect = (PerfectEffect) this.f76481b;
                SkuHandler.GetListCallback getListCallback = (SkuHandler.GetListCallback) this.f76482c;
                List<ProductInfo> list = (List) obj;
                StringBuilder sb = new StringBuilder("[getListByEffect] succeed, effect=");
                sb.append(perfectEffect);
                sb.append(" size=");
                fc.z(list, sb, 3, "SkuHandler");
                getListCallback.onSuccess(list);
                break;
            case 9:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f76481b;
                SingleEmitter singleEmitter = (SingleEmitter) this.f76482c;
                Pair pair = (Pair) obj;
                Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                Log.g(3, "SDKInitHandler", "[initParallelly] onSuccess. domain=" + ((String) pair.first) + ", successFlag=" + atomicBoolean.get());
                if (atomicBoolean.compareAndSet(false, true)) {
                    Log.g(3, "SDKInitHandler", "[initParallelly] emit success");
                    singleEmitter.onSuccess(pair);
                }
                break;
            case 10:
                String str3 = (String) this.f76481b;
                File file3 = (File) this.f76482c;
                Log.e("BackgroundDownloader", "[createUnzipSingle] failed. guid=" + str3, (Throwable) obj);
                FileUtils.c(file3);
                break;
            default:
                b bVar = (b) this.f76481b;
                File file4 = (File) this.f76482c;
                Log.c("BackgroundDownloader", "unzip or parse failed, guid=" + bVar.f41423a + " download url=" + bVar.f41425c + " zip file=" + file4.getAbsolutePath() + " zip file size=" + file4.length(), (Throwable) obj);
                break;
        }
    }
}
