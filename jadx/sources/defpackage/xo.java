package defpackage;

import android.content.Context;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.Configuration;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkGenerationalId;
import com.appsflyer.internal.AFc1bSDK;
import com.appsflyer.internal.AFi1aSDK;
import com.appsflyer.sdk_base.referrer.ReferrerProp;
import com.batch.android.n1.c;
import com.batch.android.q.f;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.lp.ble.manager.ApItem;
import com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$setWLANList$1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xo implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81168c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81169e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81170f;

    public /* synthetic */ xo(DefaultSurfaceProcessor defaultSurfaceProcessor, DynamicRange dynamicRange, CallbackToFutureAdapter.Completer completer) {
        this.f81167b = 2;
        Map map = Collections.EMPTY_MAP;
        this.f81168c = defaultSurfaceProcessor;
        this.d = dynamicRange;
        this.f81169e = map;
        this.f81170f = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81167b;
        Object obj = this.f81169e;
        Object obj2 = this.f81168c;
        Object obj3 = this.f81170f;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                List list = (List) obj2;
                ConnectToWifiFragment connectToWifiFragment = (ConnectToWifiFragment) obj4;
                wo woVar = (wo) obj;
                ConnectToWifiFragment$setWLANList$1 connectToWifiFragment$setWLANList$1 = (ConnectToWifiFragment$setWLANList$1) obj3;
                if (list != null) {
                    List list2 = list;
                    if (!CollectionsKt.z(list2).isEmpty()) {
                        ArrayList<ApItem> arrayListZ = CollectionsKt.z(list2);
                        connectToWifiFragment.J.addAll(arrayListZ);
                        for (ApItem apItem : arrayListZ) {
                        }
                        woVar.mo47invoke();
                    }
                }
                connectToWifiFragment$setWLANList$1.onFailed(null);
                break;
            case 1:
                DefaultScheduler defaultScheduler = (DefaultScheduler) obj2;
                TransportContext transportContext = (TransportContext) obj4;
                TransportScheduleCallback transportScheduleCallback = (TransportScheduleCallback) obj;
                EventInternal eventInternal = (EventInternal) obj3;
                Logger logger = DefaultScheduler.f28041f;
                try {
                    TransportBackend transportBackend = defaultScheduler.f28044c.get(transportContext.b());
                    if (transportBackend == null) {
                        String str = "Transport backend '" + transportContext.b() + "' is not registered";
                        logger.warning(str);
                        transportScheduleCallback.g(new IllegalArgumentException(str));
                    } else {
                        defaultScheduler.f28045e.c(new y81(defaultScheduler, transportContext, transportBackend.a(eventInternal), 6));
                        transportScheduleCallback.g(null);
                    }
                } catch (Exception e2) {
                    logger.warning("Error scheduling event " + e2.getMessage());
                    transportScheduleCallback.g(e2);
                    return;
                }
                break;
            case 2:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj2;
                DynamicRange dynamicRange = (DynamicRange) obj4;
                Map map = Collections.EMPTY_MAP;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) obj3;
                try {
                    defaultSurfaceProcessor.f2531b.e(dynamicRange);
                    completer.b(null);
                } catch (RuntimeException e3) {
                    completer.d(e3);
                    return;
                }
                break;
            case 3:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj2;
                DynamicRange dynamicRange2 = (DynamicRange) obj4;
                Map map2 = Collections.EMPTY_MAP;
                CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) obj3;
                try {
                    dualSurfaceProcessor.f2583b.e(dynamicRange2);
                    completer2.b(null);
                } catch (RuntimeException e4) {
                    completer2.d(e4);
                    return;
                }
                break;
            case 4:
                ImageCapture.Defaults defaults = ImageCapture.B;
                ((ImageCapture) obj2).J((ImageCapture.OutputFileOptions) obj4, (Executor) obj, (MediaCaptureRepositoryImpl$takePhoto$2$1$1) obj3);
                break;
            case 5:
                List list3 = (List) obj2;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj4;
                Configuration configuration = (Configuration) obj;
                WorkDatabase workDatabase = (WorkDatabase) obj3;
                int i3 = Schedulers.f20319a;
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    ((Scheduler) it.next()).a(workGenerationalId.f20499a);
                }
                Schedulers.b(configuration, workDatabase, list3);
                break;
            case 6:
                ((AFi1aSDK) obj2).AFKeystoreWrapper((Context) obj4, (ReferrerProp) obj, (AFc1bSDK) obj3);
                break;
            default:
                ((f) obj4).a((c) obj, (String) obj3, (List) obj2);
                break;
        }
    }

    public /* synthetic */ xo(DualSurfaceProcessor dualSurfaceProcessor, DynamicRange dynamicRange, CallbackToFutureAdapter.Completer completer) {
        this.f81167b = 3;
        Map map = Collections.EMPTY_MAP;
        this.f81168c = dualSurfaceProcessor;
        this.d = dynamicRange;
        this.f81169e = map;
        this.f81170f = completer;
    }

    public /* synthetic */ xo(f fVar, c cVar, String str, List list) {
        this.f81167b = 7;
        this.d = fVar;
        this.f81169e = cVar;
        this.f81170f = str;
        this.f81168c = list;
    }

    public /* synthetic */ xo(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f81167b = i2;
        this.f81168c = obj;
        this.d = obj2;
        this.f81169e = obj3;
        this.f81170f = obj4;
    }
}
