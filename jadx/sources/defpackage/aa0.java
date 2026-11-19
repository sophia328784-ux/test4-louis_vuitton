package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.view.Surface;
import android.widget.Toast;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.MappingRedirectableLiveData;
import androidx.camera.video.Recorder;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.LiveData;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import androidx.media3.ui.PlayerView;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.model.WorkGenerationalId;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.QualityCheck;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.RecommendationType;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.c;
import com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.b;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Ref$IntRef;
import lv.nfc.reader.TagNfcExecutorCallback;
import lv.nfc.reader.data.models.LVTagResult;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class aa0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f463c;
    public final /* synthetic */ Object d;

    public /* synthetic */ aa0(Object obj, Object obj2, int i2) {
        this.f462b = i2;
        this.f463c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        switch (this.f462b) {
            case 0:
                LiveMakeupCtrl liveMakeupCtrl = (LiveMakeupCtrl) this.f463c;
                BackgroundPayload backgroundPayload = (BackgroundPayload) this.d;
                c cVar = liveMakeupCtrl.d1;
                cVar.b(backgroundPayload);
                if (backgroundPayload != null) {
                    cVar.a();
                    return;
                }
                return;
            case 1:
                ((LookHandler.DownloadCallback) this.f463c).progress(((Double) ((DownloadReport.ProgressReport) this.d).f39309b).doubleValue());
                return;
            case 2:
                ((MakeupCam.QualityCheckCallback) this.f463c).onAnalyze((QualityCheck) this.d);
                return;
            case 3:
                ((MakeupCam.VideoCallback) this.f463c).onFailure((Exception) this.d);
                return;
            case 4:
                MappingRedirectableLiveData.d((MappingRedirectableLiveData) this.f463c, (LiveData) this.d);
                return;
            case 5:
                MediaCodecRenderer mediaCodecRenderer = (MediaCodecRenderer) this.f463c;
                mediaCodecRenderer.F.set(mediaCodecRenderer.T((FormatHolder) this.d, mediaCodecRenderer.z, 0));
                return;
            case 6:
                ((MediaMetricsListener) this.f463c).d.reportTrackChangeEvent((TrackChangeEvent) this.d);
                return;
            case 7:
                ((MediaMetricsListener) this.f463c).d.reportNetworkEvent((NetworkEvent) this.d);
                return;
            case 8:
                ((MediaMetricsListener) this.f463c).d.reportPlaybackErrorEvent((PlaybackErrorEvent) this.d);
                return;
            case 9:
                ((MediaMetricsListener) this.f463c).d.reportPlaybackMetrics((PlaybackMetrics) this.d);
                return;
            case 10:
                ((MediaMetricsListener) this.f463c).d.reportPlaybackStateEvent((PlaybackStateEvent) this.d);
                return;
            case 11:
                ((Consumer) this.f463c).accept((MediaSourceEventListener) this.d);
                return;
            case 12:
                ((ImageReaderProxy.OnImageAvailableListener) this.d).d((MetadataImageReader) this.f463c);
                return;
            case 13:
                OptionsActivity optionsActivity = (OptionsActivity) this.f463c;
                AppInfo appInfo = (AppInfo) this.d;
                OptionsActivity.Companion companion = OptionsActivity.u;
                Toast.makeText(optionsActivity, appInfo.f59750a + " is copied on clipboard", 0).show();
                return;
            case 14:
                ((VideoSink.Listener) this.f463c).b((VideoSize) this.d);
                return;
            case 15:
                PlayerView.a((PlayerView) this.f463c, (Bitmap) this.d);
                return;
            case 16:
                Preview.SurfaceProvider surfaceProvider = (Preview.SurfaceProvider) this.f463c;
                SurfaceRequest surfaceRequest = (SurfaceRequest) this.d;
                Preview.Defaults defaults = Preview.x;
                surfaceProvider.a(surfaceRequest);
                return;
            case 17:
                Processor processor = (Processor) this.f463c;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) this.d;
                synchronized (processor.f20317k) {
                    try {
                        Iterator it = processor.f20316j.iterator();
                        while (it.hasNext()) {
                            ((ExecutionListener) it.next()).c(workGenerationalId, false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            case 18:
                ((RecommendationHandler.GetSurveyFormCallback) this.f463c).onFailure(new IllegalArgumentException("Unsupported type=" + ((RecommendationType) this.d)));
                return;
            case 19:
                ((RecommendationHandler.SyncServerCallback) this.f463c).onFailure(new IllegalArgumentException("Unsupported type=" + ((RecommendationType) this.d)));
                return;
            case 20:
                Executor executor = (Executor) this.f463c;
                Runnable runnable = (Runnable) this.d;
                Set set = Recorder.m0;
                executor.execute(runnable);
                return;
            case 21:
                ((ResourcesCompat.FontCallback) this.f463c).c((Typeface) this.d);
                return;
            case 22:
                b.d.k((SQLiteDatabase) this.f463c, (ArrayList) this.d);
                return;
            case 23:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.f463c;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.C0171b c0171b = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.C0171b) this.d;
                String str = c0171b.guid;
                Threads.b();
                DBUtility.i(sQLiteDatabase, new yp(2, sQLiteDatabase, str));
                e.C0182e.b(sQLiteDatabase, c0171b.payload);
                return;
            case 24:
                SkuDataForProtocol.IdSystemContentZip idSystemContentZip = (SkuDataForProtocol.IdSystemContentZip) this.f463c;
                TemplateUtils.j((TemplateUtils.c) this.d);
                a.c(YMKDatabase.c(), new com.perfectcorp.perfectlib.ph.template.a(idSystemContentZip.f39925a));
                return;
            case 25:
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = (SpeakerTrunkEqualizerFragment) this.f463c;
                Ref$IntRef ref$IntRef = (Ref$IntRef) this.d;
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.P().f51342f.setProgress(ref$IntRef.f71919b);
                return;
            case 26:
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) this.f463c;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.d;
                SurfaceTexture surfaceTexture2 = sphericalGLSurfaceView.f28507h;
                Surface surface = sphericalGLSurfaceView.f28508i;
                Surface surface2 = new Surface(surfaceTexture);
                sphericalGLSurfaceView.f28507h = surfaceTexture;
                sphericalGLSurfaceView.f28508i = surface2;
                Iterator it2 = sphericalGLSurfaceView.f28503b.iterator();
                while (it2.hasNext()) {
                    ((SphericalGLSurfaceView.VideoSurfaceListener) it2.next()).a();
                }
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface != null) {
                    surface.release();
                    return;
                }
                return;
            case 27:
                androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView sphericalGLSurfaceView2 = (androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView) this.f463c;
                SurfaceTexture surfaceTexture3 = (SurfaceTexture) this.d;
                SurfaceTexture surfaceTexture4 = sphericalGLSurfaceView2.f16037h;
                Surface surface3 = sphericalGLSurfaceView2.f16038i;
                Surface surface4 = new Surface(surfaceTexture3);
                sphericalGLSurfaceView2.f16037h = surfaceTexture3;
                sphericalGLSurfaceView2.f16038i = surface4;
                Iterator it3 = sphericalGLSurfaceView2.f16033b.iterator();
                while (it3.hasNext()) {
                    ((androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener) it3.next()).z(surface4);
                }
                if (surfaceTexture4 != null) {
                    surfaceTexture4.release();
                }
                if (surface3 != null) {
                    surface3.release();
                    return;
                }
                return;
            case 28:
                ((TagHandler.SyncServerCallback) this.f463c).onFailure((Throwable) this.d);
                return;
            default:
                ((TagNfcExecutorCallback) this.f463c).success((LVTagResult) this.d);
                return;
        }
    }
}
