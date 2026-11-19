package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.util.Range;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.streamsharing.VirtualCameraControl;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.TextRangeLayoutMeasureResult;
import androidx.compose.foundation.text.TextRangeLayoutMeasureScope;
import androidx.compose.foundation.text.TextRangeScopeMeasurePolicy;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.fragment.app.FragmentResultListener;
import androidx.work.DirectExecutor;
import com.batch.android.j1.c;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.batch.android.s.a;
import com.batch.android.t.b;
import com.batch.android.v0.f;
import com.batch.android.v0.i;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.d;
import com.perfectcorp.perfectlib.ph.template.idc.e;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.SetMultimap;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.UniversalAgent;
import com.sightcall.universal.displayname.DisplayNameAndLiveTranslation;
import com.sightcall.universal.ui.UniversalDisplayName;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanBottomSheet;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gy0 implements Function, FragmentResultListener, CallbackToFutureAdapter.Resolver, TextRangeScopeMeasurePolicy, OnSuccessListener, UniversalDisplayName.DisplayNameCallback, SynchronizationGuard.CriticalSection, AsyncFunction, a.b, c, h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69517c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gy0(Serializable serializable, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f69516b = i2;
        this.d = serializable;
        this.f69517c = downloadTaskCancelable;
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void a(String str, Bundle bundle) {
        Function0 function0 = (Function0) this.f69517c;
        Function0 function1 = (Function0) this.d;
        SneakerScanBottomSheet.Companion companion = SneakerScanBottomSheet.O;
        bundle.getClass();
        if (bundle.containsKey("NEXT")) {
            function0.mo47invoke();
        } else if (bundle.containsKey("BACK")) {
            function1.mo47invoke();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f69516b;
        Object obj2 = this.f69517c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj2;
                String str = (String) obj;
                downloadTaskCancelable.c();
                HashSet hashSet = new HashSet();
                Log.g(3, "SkuHandler", "[updateExistingIdSystemItems] type = " + str);
                PfCommons.c(new px0((ProgressCallback) obj3, 6));
                HashSet<String> hashSet2 = new HashSet(com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.b(YMKDatabase.b(), str, YMKPrimitiveData.SourceType.SKU.name()));
                hashSet2.addAll(com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.b(YMKDatabase.b(), str, YMKPrimitiveData.SourceType.DOWNLOAD.name()));
                for (String str2 : hashSet2) {
                    if (com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.f(YMKDatabase.b(), str2)) {
                        hashSet.add(str2);
                    }
                }
                StringBuilder sbR = pq0.r("[updateExistingIdSystemItems] type = ", str, ", patterns: ");
                sbR.append(hashSet.size());
                Log.g(3, "SkuHandler", sbR.toString());
                downloadTaskCancelable.c();
                Iterator it = SkuDao.h(YMKDatabase.b(), str).iterator();
                while (it.hasNext()) {
                    hashSet.addAll(com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.e(YMKDatabase.b(), (String) it.next()));
                }
                StringBuilder sbR2 = pq0.r("[updateExistingIdSystemItems] type = ", str, ", all idc items: ");
                sbR2.append(hashSet.size());
                Log.g(3, "SkuHandler", sbR2.toString());
                if (hashSet.isEmpty()) {
                    return Single.h(str);
                }
                downloadTaskCancelable.c();
                return j.d(downloadTaskCancelable, str, new ArrayList(hashSet));
            case 10:
                d.b bVar = (d.b) obj2;
                String str3 = (String) obj3;
                String str4 = (String) obj;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.a.C0150a c0150a = new com.perfectcorp.perfectlib.ph.database.ymk.sku.a.C0150a();
                String strA = bVar.a();
                Objects.requireNonNull(strA);
                c0150a.f41283a = strA;
                Objects.requireNonNull(str4);
                c0150a.f41284b = str4;
                c0150a.f41285c = bVar.c();
                Objects.requireNonNull(str3);
                c0150a.d = str3;
                return new com.perfectcorp.perfectlib.ph.database.ymk.sku.a(c0150a);
            case 11:
                ArrayList arrayList = (ArrayList) obj3;
                DownloadTaskCancelable downloadTaskCancelable2 = (DownloadTaskCancelable) obj2;
                Pattern pattern = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                for (Pair pair : (List) obj) {
                    arrayList.add(j.c(com.perfectcorp.perfectlib.ph.unit.sku.a.g((SetMultimap) pair.second), (String) pair.first, NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable2));
                }
                return Single.h(Boolean.TRUE);
            default:
                e eVar = (e) ((Pair) obj).first;
                int andIncrement = j.f41498a.getAndIncrement();
                Log.g(3, "IdSystemDataHelper", "[#" + andIncrement + "] #downloadPatternImages(); begin");
                HashMap mapD = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.d(eVar, DownloadFolderHelper.d());
                StringBuilder sbQ = fc.q(andIncrement, "[#", "] #getDownloadComponents(); component count=");
                sbQ.append(mapD.size());
                Log.g(3, "IdSystemDataHelper", sbQ.toString());
                return j.b(eVar.attr_guid, mapD, (NetworkTaskManager.TaskPriority) obj3, (DownloadTaskCancelable) obj2, andIncrement);
        }
    }

    @Override // androidx.compose.foundation.text.TextRangeScopeMeasurePolicy
    public TextRangeLayoutMeasureResult b(TextRangeLayoutMeasureScope textRangeLayoutMeasureScope) {
        TextLinkScope textLinkScope = (TextLinkScope) this.f69517c;
        AnnotatedString.Range range = (AnnotatedString.Range) this.d;
        TextLayoutResult textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) textLinkScope.f6014a).getF10755b();
        if (textLayoutResult == null) {
            return new TextRangeLayoutMeasureResult(0, 0, new o11(27));
        }
        AnnotatedString.Range rangeC = TextLinkScope.c(range, textLayoutResult);
        if (rangeC == null) {
            return new TextRangeLayoutMeasureResult(0, 0, new o11(28));
        }
        IntRect intRectB = IntRectKt.b(textLayoutResult.j(rangeC.f10429b, rangeC.f10430c).getBounds());
        return new TextRangeLayoutMeasureResult(intRectB.d(), intRectB.b(), new hv0(intRectB, 14));
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        int i2 = this.f69516b;
        Object obj = this.d;
        Uploader uploader = (Uploader) this.f69517c;
        switch (i2) {
            case 6:
                uploader.f28071c.i((Iterable) obj);
                break;
            default:
                for (Map.Entry entry : ((HashMap) obj).entrySet()) {
                    uploader.f28075i.k(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
                }
                break;
        }
        return null;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f69516b;
        Object obj = this.d;
        Object obj2 = this.f69517c;
        switch (i2) {
            case 2:
                Range range = SurfaceRequest.q;
                ((AtomicReference) obj).set(completer);
                return "SurfaceRequest-surface-recreation(" + ((SurfaceRequest) obj2).hashCode() + ")";
            default:
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                completer.a(new x90(atomicBoolean, 1), DirectExecutor.INSTANCE);
                ((Executor) obj2).execute(new b5(atomicBoolean, completer, (Function0) obj, 25));
                return Unit.f71739a;
        }
    }

    @Override // com.sightcall.universal.ui.UniversalDisplayName.DisplayNameCallback
    public void onResult(String str, Language language) {
        ((UniversalLoadingActivity) this.f69517c).lambda$askDisplayName$4((DisplayNameAndLiveTranslation) this.d, str, language);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((UniversalAgent) this.f69517c).lambda$syncFcmToken$0((Agent) this.d, (String) obj);
    }

    public /* synthetic */ gy0(Object obj, Object obj2, int i2) {
        this.f69516b = i2;
        this.f69517c = obj;
        this.d = obj2;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        ((com.batch.android.v0.j) this.f69517c).a((AtomicReference) this.d, gVar);
    }

    @Override // com.batch.android.s.a.b
    public void a(b bVar) {
        ((f) this.f69517c).a((b) this.d, bVar);
    }

    @Override // com.batch.android.j1.c
    public void a(com.batch.android.j1.b bVar) {
        ((i) this.f69517c).a((Context) this.d, bVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public ListenableFuture apply(Object obj) {
        VirtualCameraControl virtualCameraControl = (VirtualCameraControl) this.f69517c;
        List list = (List) this.d;
        androidx.camera.core.streamsharing.a aVar = virtualCameraControl.f2667c;
        Integer num = (Integer) ((CaptureConfig) list.get(0)).f2269b.f(CaptureConfig.f2266j, 100);
        Objects.requireNonNull(num);
        int iIntValue = num.intValue();
        Integer num2 = (Integer) ((CaptureConfig) list.get(0)).f2269b.f(CaptureConfig.f2265i, 0);
        Objects.requireNonNull(num2);
        int iIntValue2 = num2.intValue();
        SurfaceProcessorNode surfaceProcessorNode = aVar.f2670a.u;
        if (surfaceProcessorNode != null) {
            return surfaceProcessorNode.f2567a.b(iIntValue, iIntValue2);
        }
        return Futures.e(new Exception("Failed to take picture: pipeline is not ready."));
    }
}
