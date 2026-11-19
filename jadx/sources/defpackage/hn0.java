package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.video.Recorder;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.compat.quirk.DeactivateEncoderSurfaceBeforeStopEncoderQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.view.d;
import androidx.compose.material.ripple.RippleHostView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.internal.c;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.background.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.sightcall.advancedannotations.domain.drawer.annotation.TextAnnotation;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.sightcall.pratik.RunLoop;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hn0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69755c;

    public /* synthetic */ hn0(Object obj, int i2) {
        this.f69754b = i2;
        this.f69755c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() throws Exception {
        int i2 = this.f69754b;
        int i3 = 0;
        Object obj = this.f69755c;
        switch (i2) {
            case 0:
                ((PerfectLib.ReleaseCallback) obj).onReleased();
                return;
            case 1:
                a aVar = (a) obj;
                Log.g(3, "SDKInitHandler", "[resetInitState] start");
                synchronized (a.f42002c) {
                    Log.g(3, "SDKInitHandler", "[resetInitState] enter critical section");
                    aVar.f42004b = null;
                    Log.g(3, "SDKInitHandler", "[resetInitState] exit critical section");
                    break;
                }
                Log.g(3, "SDKInitHandler", "[resetInitState] end");
                return;
            case 2:
                ((c) obj).c();
                return;
            case 3:
                ((CompositeDisposable) obj).dispose();
                return;
            case 4:
                ((PlaybackVideoGraphWrapper) obj).q--;
                return;
            case 5:
                float[] fArr = PlayerControlView.K1;
                ((PlayerControlView) obj).r();
                return;
            case 6:
                ((PlayerView) obj).invalidate();
                return;
            case 7:
                ((Preview) obj).q();
                return;
            case 8:
                PreviewFragment._set_isPlaying_$lambda$0((PreviewFragment) obj);
                return;
            case 9:
                ProcessLifecycleOwner processLifecycleOwner = (ProcessLifecycleOwner) obj;
                LifecycleRegistry lifecycleRegistry = processLifecycleOwner.g;
                if (processLifecycleOwner.f13471c == 0) {
                    processLifecycleOwner.d = true;
                    lifecycleRegistry.g(Lifecycle.Event.ON_PAUSE);
                }
                if (processLifecycleOwner.f13470b == 0 && processLifecycleOwner.d) {
                    lifecycleRegistry.g(Lifecycle.Event.ON_STOP);
                    processLifecycleOwner.f13472e = true;
                    return;
                }
                return;
            case 10:
                LinkedList linkedList = (LinkedList) obj;
                ProductMappingDatabase.h().n();
                ProductMappingDatabase productMappingDatabaseH = ProductMappingDatabase.h();
                productMappingDatabaseH.getClass();
                if (MoreCollections.a(linkedList)) {
                    Log.d("ProductMappingDatabase", "[insert] insert value is empty");
                    return;
                }
                SQLiteDatabase writableDatabase = productMappingDatabaseH.getWritableDatabase();
                bz bzVarListIterator = ((ImmutableList) ProductMappingDatabase.f41151b).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    ProductMappingDatabase.m(linkedList, writableDatabase, ((Integer) bzVarListIterator.next()).intValue());
                    return;
                }
                ProductMappingDatabase.m(linkedList, writableDatabase, 125);
                return;
            case 11:
                ((RecommendationHandler.GetSurveyFormCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 12:
                ((RecommendationHandler.SyncServerCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 13:
                Encoder encoder = (Encoder) obj;
                Set set = Recorder.m0;
                Logger.c(3, "Recorder");
                if (DeviceQuirks.f2947a.b(DeactivateEncoderSurfaceBeforeStopEncoderQuirk.class) != null) {
                    Recorder.r(encoder);
                    return;
                }
                return;
            case 14:
                RippleHostView.setRippleState$lambda$1((RippleHostView) obj);
                return;
            case 15:
                RunLoop.startEventHandler$lambda$0((RunLoop) obj);
                return;
            case 16:
                ((ImageCapture.ScreenFlashListener) obj).onCompleted();
                return;
            case 17:
                ((AudioStream.AudioStreamCallback) obj).a(true);
                return;
            case 18:
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) obj;
                PerformanceCounter.Tracer tracerA = SkuDataForProtocol.u.a();
                PerformanceCounter.Tracer tracerA2 = SkuDataForProtocol.p.a();
                Iterator it = skuDataForProtocol.f39913b.iterator();
                while (it.hasNext()) {
                    h hVar = (h) skuDataForProtocol.f39914c.get((String) it.next());
                    if (hVar != null) {
                        SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                        DBUtility.i(sQLiteDatabaseC, new gx0(sQLiteDatabaseC, hVar, i3));
                        com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.b(hVar);
                    }
                }
                tracerA2.close();
                PerformanceCounter.Tracer tracerA3 = SkuDataForProtocol.q.a();
                Iterator it2 = skuDataForProtocol.f39917h.values().iterator();
                while (it2.hasNext()) {
                    b.d.i(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.database.ymk.background.a) it2.next());
                }
                tracerA3.close();
                PerformanceCounter.Tracer tracerA4 = SkuDataForProtocol.r.a();
                Iterator it3 = skuDataForProtocol.d.values().iterator();
                while (it3.hasNext()) {
                    TemplateUtils.j((TemplateUtils.c) it3.next());
                }
                tracerA4.close();
                PerformanceCounter.Tracer tracerA5 = SkuDataForProtocol.s.a();
                for (Map.Entry entry : skuDataForProtocol.g.f()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.c(YMKDatabase.c(), new com.perfectcorp.perfectlib.ph.template.a((String) entry.getKey(), (String) entry.getValue(), 0L));
                }
                tracerA5.close();
                PerformanceCounter.Tracer tracerA6 = SkuDataForProtocol.t.a();
                for (DownloadImageInfo.Builder builder : skuDataForProtocol.f39920k.values()) {
                    DownloadImageDao downloadImageDao = DownloadImageDao.d;
                    SQLiteDatabase sQLiteDatabaseC2 = YMKDatabase.c();
                    builder.getClass();
                    downloadImageDao.i(sQLiteDatabaseC2, new DownloadImageInfo(builder));
                }
                tracerA6.close();
                tracerA.close();
                return;
            case 19:
                Map<String, ProductInfo> map = Collections.EMPTY_MAP;
                ((SkuHandler.DownloadProductsCallback) obj).onComplete(map, map);
                return;
            case 20:
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                Surface surface = sphericalGLSurfaceView.f16038i;
                if (surface != null) {
                    Iterator it4 = sphericalGLSurfaceView.f16033b.iterator();
                    while (it4.hasNext()) {
                        ((SphericalGLSurfaceView.VideoSurfaceListener) it4.next()).e();
                    }
                }
                SurfaceTexture surfaceTexture = sphericalGLSurfaceView.f16037h;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                sphericalGLSurfaceView.f16037h = null;
                sphericalGLSurfaceView.f16038i = null;
                return;
            case 21:
                com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView sphericalGLSurfaceView2 = (com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView) obj;
                Surface surface2 = sphericalGLSurfaceView2.f28508i;
                if (surface2 != null) {
                    Iterator it5 = sphericalGLSurfaceView2.f28503b.iterator();
                    while (it5.hasNext()) {
                        ((com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener) it5.next()).e();
                    }
                }
                SurfaceTexture surfaceTexture2 = sphericalGLSurfaceView2.f28507h;
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface2 != null) {
                    surface2.release();
                }
                sphericalGLSurfaceView2.f28507h = null;
                sphericalGLSurfaceView2.f28508i = null;
                return;
            case 22:
                SurfaceProcessorNode.Out out = ((SurfaceProcessorNode) obj).f2569c;
                if (out != null) {
                    Iterator<SurfaceEdge> it6 = out.values().iterator();
                    while (it6.hasNext()) {
                        it6.next().c();
                    }
                    return;
                }
                return;
            case 23:
                ((d) obj).a();
                return;
            case 24:
                ((TagHandler.ListTagsCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 25:
                ((TagHandler.SyncServerCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 26:
                ((TagHandler.ListGuidsCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 27:
                ((TagHandler.ListGroupsCallback) obj).onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                return;
            case 28:
                TakePictureRequest takePictureRequest = (TakePictureRequest) obj;
                if (takePictureRequest.f() != null) {
                    takePictureRequest.f().onCaptureProcessProgressed(100);
                    return;
                } else {
                    if (takePictureRequest.d() != null) {
                        takePictureRequest.d().getClass();
                        return;
                    }
                    return;
                }
            default:
                TextAnnotation.reloadLayout$lambda$1((TextAnnotation) obj);
                return;
        }
    }
}
