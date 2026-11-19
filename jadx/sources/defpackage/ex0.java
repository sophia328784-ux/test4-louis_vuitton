package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.DownloadTaskHelper$FileDownloader;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.exceptions.IdSystemDataNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.b;
import com.perfectcorp.perfectlib.ph.template.c;
import com.perfectcorp.perfectlib.ph.template.idc.e;
import com.perfectcorp.perfectlib.ph.template.m;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.DownloadPriority;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.internal.bind.f;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.d;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ex0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68965b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuDataForProtocol.IdSystemContentZip f68966c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NetworkTaskManager.TaskPriority f68967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f68968f;

    public /* synthetic */ ex0(SkuDataForProtocol.IdSystemContentZip idSystemContentZip, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable, String str) {
        this.f68966c = idSystemContentZip;
        this.f68967e = taskPriority;
        this.f68968f = downloadTaskCancelable;
        this.d = str;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) throws Throwable {
        TemplateUtils.c cVarD;
        int i2 = this.f68965b;
        DownloadTaskCancelable downloadTaskCancelable = this.f68968f;
        NetworkTaskManager.TaskPriority taskPriority = this.f68967e;
        String str = this.d;
        SkuDataForProtocol.IdSystemContentZip idSystemContentZip = this.f68966c;
        switch (i2) {
            case 0:
                String str2 = idSystemContentZip.f39925a;
                List listB = ((b.C0181b) obj).b();
                if (listB.isEmpty()) {
                    throw new IdSystemDataNotFoundException(fc.h("Can't find pattern '", str2, "'"));
                }
                e eVar = (e) listB.get(0);
                if (TextUtils.isEmpty(eVar.attr_itemZIP)) {
                    throw new IdSystemDataNotFoundException(fc.h("No content ZIP in pattern '", str2, "'"));
                }
                File file = new File(DownloadFolderHelper.d());
                file.mkdirs();
                PerformanceCounter performanceCounter = SkuDataForProtocol.n;
                if (!file.isDirectory()) {
                    a61.n(file, "Unable to create directories of ");
                    return null;
                }
                DownloadTaskHelper$FileDownloader downloadTaskHelper$FileDownloader = new DownloadTaskHelper$FileDownloader();
                URI uriD = NetworkManager.d(eVar.attr_itemZIP);
                Objects.requireNonNull(uriD);
                downloadTaskHelper$FileDownloader.f39333a = uriD;
                downloadTaskHelper$FileDownloader.f39337f = new DownloadKey.Guid(str2);
                downloadTaskHelper$FileDownloader.g = DownloadStateMonitors.f41988a;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                downloadTaskHelper$FileDownloader.f39336e = taskPriority;
                downloadTaskHelper$FileDownloader.d = DownloadPriority.a();
                String strD = DownloadFolderHelper.d();
                StringBuilder sbU = n00.u(str2, "_tmp_");
                sbU.append(System.nanoTime());
                downloadTaskHelper$FileDownloader.f39334b = new File(strD, sbU.toString());
                downloadTaskHelper$FileDownloader.f39335c = new File(DownloadFolderHelper.d(), str2);
                DownloadHandle downloadHandleA = downloadTaskHelper$FileDownloader.a(NetworkTaskManagerHolder.a());
                DownloadTaskCancelable downloadTaskCancelable2 = DownloadTaskCancelable.f40351e;
                downloadTaskCancelable.a(Collections.singletonList(Disposables.b(new et(downloadHandleA, 5))));
                Single singleD = ((BaseDownloadHandle) downloadHandleA).d(null, null);
                ex0 ex0Var = new ex0(idSystemContentZip, str, taskPriority, downloadTaskCancelable);
                singleD.getClass();
                return new n(singleD, ex0Var);
            default:
                h hVar = idSystemContentZip.f39926b;
                e eVar2 = idSystemContentZip.f39927c;
                File file2 = (File) ((DownloadReport.CompleteReport) obj).f39309b;
                if (new File(file2.getAbsolutePath(), "makeup_template.xml").exists() || eVar2 == null) {
                    cVarD = TemplateUtils.d(IO.d(file2.getAbsolutePath()), YMKPrimitiveData.SourceType.DOWNLOAD, null, hVar);
                } else {
                    Log.g(3, "SkuDataForProtocol", "xml file does not exist.");
                    Gson gson = GsonBaseResponse.f41999a;
                    gson.getClass();
                    Class<?> cls = eVar2.getClass();
                    f fVar = new f();
                    gson.g(eVar2, cls, fVar);
                    JsonObject jsonObjectM = fVar.E().m();
                    jsonObjectM.p("attr_guid", eVar2.attr_patternGuid);
                    jsonObjectM.p("attr_thumbnail", eVar2.attr_thumbnail);
                    File file3 = new File(file2, eVar2.pattern_mask.get(0).mask.get(0).attr_obb_path);
                    e eVar3 = (e) gson.h(jsonObjectM, e.class);
                    a aVar = (a) SkuDataForProtocol.j(hVar, eVar3).get(eVar2.attr_thumbnail);
                    if (aVar != null) {
                        Completable completableA = new SkuDataForProtocol.IdSystemFiles(eVar2.attr_patternGuid, Collections.singletonList(aVar), Functions.f42607c).a(str, taskPriority, downloadTaskCancelable);
                        d dVar = new d();
                        completableA.a(dVar);
                        dVar.a();
                    }
                    YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.DOWNLOAD;
                    String str3 = eVar2.attr_type;
                    float fA = SkuBeautyMode$FeatureType.a(str3);
                    i iVar = new i(Collections.singletonMap(eVar2.attr_thumbnail, aVar));
                    eVar3.getClass();
                    TemplateUtils.b bVarA = e.a(eVar3, null, sourceType, str3, fA, iVar);
                    ArrayList<c> arrayList = bVarA.f41598h;
                    List list = ((m) bVarA.d.iterator().next()).d;
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : arrayList) {
                        ArrayList arrayList3 = new ArrayList(cVar.f41612c);
                        ArrayList arrayList4 = new ArrayList(list);
                        ArrayList arrayList5 = new ArrayList();
                        arrayList5.add(file3.getAbsolutePath());
                        c.a aVar2 = new c.a(cVar);
                        aVar2.f41619c = arrayList3;
                        aVar2.d = cVar.d;
                        aVar2.g = arrayList5;
                        aVar2.f41622h = cVar.f41615h;
                        aVar2.f41620e = arrayList4;
                        arrayList2.add(aVar2.a());
                    }
                    arrayList.clear();
                    arrayList.addAll(arrayList2);
                    cVarD = new TemplateUtils.c(bVarA);
                }
                DBUtility.i(YMKDatabase.c(), new aa0(idSystemContentZip, cVarD, 24));
                return g.f42660b;
        }
    }

    public /* synthetic */ ex0(SkuDataForProtocol.IdSystemContentZip idSystemContentZip, String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
        this.f68966c = idSystemContentZip;
        this.d = str;
        this.f68967e = taskPriority;
        this.f68968f = downloadTaskCancelable;
    }
}
