package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.StuckPlayerDetector;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.WifiLockManager;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TimelineWithUpdatedMediaItem;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoDecoderOutputBufferRenderer;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import defpackage.c8;
import defpackage.d21;
import defpackage.fw;
import defpackage.md;
import defpackage.mt;
import defpackage.nw;
import defpackage.ow;
import defpackage.ps;
import defpackage.r6;
import defpackage.r81;
import defpackage.wm;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.IntConsumer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    public static final /* synthetic */ int t0 = 0;
    public final WifiLockManager A;
    public final long B;
    public final BackgroundThreadStateHandler C;
    public final StuckPlayerDetector D;
    public final VirtualDeviceIdChangeListener E;
    public final CodecParameterListenerManager F;
    public final CodecParameterListenerManager G;
    public int H;
    public boolean I;
    public int J;
    public int K;
    public boolean L;
    public boolean M;
    public ImmutableSet N;
    public final ScrubbingModeParameters O;
    public ShuffleOrder P;
    public Player.Commands Q;
    public MediaMetadata R;
    public MediaMetadata S;
    public Object T;
    public Surface U;
    public SurfaceHolder V;
    public SphericalGLSurfaceView W;
    public boolean X;
    public TextureView Y;
    public int Z;
    public Size a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TrackSelectorResult f14644b;
    public AudioAttributes b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Player.Commands f14645c;
    public float c0;
    public final ConditionVariable d = new ConditionVariable();
    public float d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f14646e;
    public boolean e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Player f14647f;
    public CueGroup f0;
    public final Renderer[] g;
    public final boolean g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Renderer[] f14648h;
    public boolean h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TrackSelector f14649i;
    public final int i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HandlerWrapper f14650j;
    public boolean j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final e f14651k;
    public final DeviceInfo k0;
    public final ExoPlayerImplInternal l;
    public VideoSize l0;
    public final ListenerSet m;
    public final long m0;
    public final CopyOnWriteArraySet n;
    public final long n0;
    public final Timeline.Period o;
    public final long o0;
    public final ArrayList p;
    public MediaMetadata p0;
    public final boolean q;
    public PlaybackInfo q0;
    public final MediaSource.Factory r;
    public int r0;
    public final AnalyticsCollector s;
    public long s0;
    public final Looper t;
    public final BandwidthMeter u;
    public final SystemClock v;
    public final ComponentListener w;
    public final FrameMetadataListener x;
    public final AudioBecomingNoisyManager y;
    public final WakeLockManager z;

    public final class CodecParameterListenerManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f14652a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CodecParameters f14653b = CodecParameters.f14570b;

        public static void a(CodecParameterListenerManager codecParameterListenerManager, CodecParameters codecParameters) {
            codecParameterListenerManager.getClass();
            for (Map.Entry entry : new HashMap(codecParameterListenerManager.f14652a).entrySet()) {
                CodecParametersChangeListener codecParametersChangeListener = (CodecParametersChangeListener) entry.getKey();
                List list = (List) entry.getValue();
                if (!b(codecParameters, list).equals(b(codecParameterListenerManager.f14653b, list))) {
                    codecParametersChangeListener.a();
                }
            }
            codecParameterListenerManager.f14653b = codecParameters;
        }

        public static CodecParameters b(CodecParameters codecParameters, List list) {
            codecParameters.getClass();
            CodecParameters.Builder builder = new CodecParameters.Builder(codecParameters);
            HashSet hashSet = new HashSet(list);
            Iterator it = codecParameters.f14571a.keySet().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                HashMap map = builder.f14572a;
                if (!zHasNext) {
                    return new CodecParameters(map);
                }
                String str = (String) it.next();
                if (!hashSet.contains(str)) {
                    map.remove(str);
                }
            }
        }
    }

    public final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioBecomingNoisyManager.Listener, StreamVolumeManager$Listener, ExoPlayer.AudioOffloadListener, StuckPlayerDetector.Callback {
        public ComponentListener() {
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.AudioOffloadListener
        public final void A() {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.x1();
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public final void B(CueGroup cueGroup) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.f0 = cueGroup;
            exoPlayerImpl.m.f(27, new fw(cueGroup, 1));
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataOutput
        public final void C(Metadata metadata) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            ListenerSet listenerSet = exoPlayerImpl.m;
            MediaMetadata.Builder builderA = exoPlayerImpl.p0.a();
            int i2 = 0;
            while (true) {
                Metadata.Entry[] entryArr = metadata.f13897a;
                if (i2 >= entryArr.length) {
                    break;
                }
                entryArr[i2].b(builderA);
                i2++;
            }
            exoPlayerImpl.p0 = new MediaMetadata(builderA);
            MediaMetadata mediaMetadataA1 = exoPlayerImpl.a1();
            if (!mediaMetadataA1.equals(exoPlayerImpl.R)) {
                exoPlayerImpl.R = mediaMetadataA1;
                listenerSet.c(14, new b(this, 3));
            }
            listenerSet.c(28, new fw(metadata, 2));
            listenerSet.b();
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void D(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s.D(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void E(Exception exc) {
            ExoPlayerImpl.this.s.E(exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void F(long j2, long j3, String str) {
            ExoPlayerImpl.this.s.F(j2, j3, str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void G(int i2, long j2, long j3) {
            ExoPlayerImpl.this.s.G(i2, j2, j3);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void a(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.s.a(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void b(VideoSize videoSize) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.l0 = videoSize;
            exoPlayerImpl.m.f(25, new ps(videoSize));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void c(String str) {
            ExoPlayerImpl.this.s.c(str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void d(AudioSink.AudioTrackConfig audioTrackConfig) {
            ExoPlayerImpl.this.s.d(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public final void e() {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s1(null);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void f(int i2) {
            BackgroundThreadStateHandler backgroundThreadStateHandler = ExoPlayerImpl.this.C;
            nw nwVar = new nw(i2, 0);
            backgroundThreadStateHandler.getClass();
            Preconditions.q(Looper.myLooper() == backgroundThreadStateHandler.f14136b.h());
            backgroundThreadStateHandler.f14139f++;
            backgroundThreadStateHandler.a(new r6(backgroundThreadStateHandler, nwVar, 8));
            backgroundThreadStateHandler.b(Integer.valueOf(i2));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void g(String str) {
            ExoPlayerImpl.this.s.g(str);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void h(CodecParameters codecParameters) {
            CodecParameterListenerManager.a(ExoPlayerImpl.this.G, codecParameters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void i(AudioSink.AudioTrackConfig audioTrackConfig) {
            ExoPlayerImpl.this.s.i(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void j(DecoderCounters decoderCounters) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s.j(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void k(DecoderCounters decoderCounters) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s.k(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void l(boolean z) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.e0 == z) {
                return;
            }
            exoPlayerImpl.e0 = z;
            exoPlayerImpl.m.f(23, new wm(z, 1));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void m(Exception exc) {
            ExoPlayerImpl.this.s.m(exc);
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public final void n(List list) {
            ExoPlayerImpl.this.m.f(27, new c8(list, 3));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void o(long j2) {
            ExoPlayerImpl.this.s.o(j2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            int i4 = ExoPlayerImpl.t0;
            Surface surface = new Surface(surfaceTexture);
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.s1(surface);
            exoPlayerImpl.U = surface;
            exoPlayerImpl.m1(i2, i3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.s1(null);
            exoPlayerImpl.m1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            int i4 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.m1(i2, i3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void p(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s.p(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void q(Exception exc) {
            ExoPlayerImpl.this.s.q(exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void r(long j2, Object obj) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.s.r(j2, obj);
            if (exoPlayerImpl.T == obj) {
                exoPlayerImpl.m.f(26, new mt(15));
            }
        }

        @Override // androidx.media3.common.audio.AudioBecomingNoisyManager.Listener
        public final void s() {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.v1(3, false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            int i5 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.m1(i3, i4);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.X) {
                exoPlayerImpl.s1(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.X) {
                exoPlayerImpl.s1(null);
            }
            exoPlayerImpl.m1(0, 0);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void t(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.s.t(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void u(long j2, long j3, String str) {
            ExoPlayerImpl.this.s.u(j2, j3, str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void v(CodecParameters codecParameters) {
            CodecParameterListenerManager.a(ExoPlayerImpl.this.F, codecParameters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void w(int i2, long j2) {
            ExoPlayerImpl.this.s.w(i2, j2);
        }

        @Override // androidx.media3.common.util.StuckPlayerDetector.Callback
        public final void x(StuckPlayerException stuckPlayerException) {
            ExoPlaybackException exoPlaybackException = new ExoPlaybackException(2, stuckPlayerException, 1003);
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.t1(exoPlaybackException);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void y(int i2, long j2) {
            ExoPlayerImpl.this.s.y(i2, j2);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public final void z(Surface surface) {
            int i2 = ExoPlayerImpl.t0;
            ExoPlayerImpl.this.s1(surface);
        }
    }

    public static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public VideoFrameMetadataListener f14655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CameraMotionListener f14656c;
        public VideoFrameMetadataListener d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CameraMotionListener f14657e;

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public final void a(long j2, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.f14657e;
            if (cameraMotionListener != null) {
                cameraMotionListener.a(j2, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.f14656c;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.a(j2, fArr);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public final void b() {
            CameraMotionListener cameraMotionListener = this.f14657e;
            if (cameraMotionListener != null) {
                cameraMotionListener.b();
            }
            CameraMotionListener cameraMotionListener2 = this.f14656c;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.b();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
        public final void d(long j2, long j3, Format format, MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.d;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.d(j2, j3, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.f14655b;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.d(j2, j3, format, mediaFormat);
            }
        }

        @Override // androidx.media3.exoplayer.PlayerMessage.Target
        public final void q(int i2, Object obj) {
            if (i2 == 7) {
                this.f14655b = (VideoFrameMetadataListener) obj;
                return;
            }
            if (i2 == 8) {
                this.f14656c = (CameraMotionListener) obj;
                return;
            }
            if (i2 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.d = null;
                this.f14657e = null;
            } else {
                this.d = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f14657e = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    public static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f14658a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MaskingMediaSource f14659b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Timeline f14660c;

        public MediaSourceHolderSnapshot(Object obj, MaskingMediaSource maskingMediaSource) {
            this.f14658a = obj;
            this.f14659b = maskingMediaSource;
            this.f14660c = maskingMediaSource.o;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Timeline a() {
            return this.f14660c;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Object getUid() {
            return this.f14658a;
        }
    }

    public final class VirtualDeviceIdChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f14661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m f14662b;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.exoplayer.m, java.util.function.IntConsumer] */
        public VirtualDeviceIdChangeListener(Context context) {
            this.f14661a = new WeakReference(context);
            ?? r0 = new IntConsumer() { // from class: androidx.media3.exoplayer.m
                @Override // java.util.function.IntConsumer
                public final void accept(int i2) {
                    ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
                    if (exoPlayerImpl.j0) {
                        return;
                    }
                    exoPlayerImpl.p1(1, 19, Integer.valueOf(i2));
                }
            };
            this.f14662b = r0;
            context.registerDeviceIdChangeListener(new ow(ExoPlayerImpl.this.v.e(ExoPlayerImpl.this.t, null), 0), r0);
        }

        public static void a(VirtualDeviceIdChangeListener virtualDeviceIdChangeListener) {
            Context context = (Context) virtualDeviceIdChangeListener.f14661a.get();
            if (context == null) {
                return;
            }
            context.unregisterDeviceIdChangeListener(virtualDeviceIdChangeListener.f14662b);
        }
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer");
    }

    public ExoPlayerImpl(ExoPlayer.Builder builder, Player player) {
        int i2 = 0;
        try {
            Log.f("Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.10.1] [" + Util.f14242a + "]");
            Context context = builder.f14633a;
            Looper looper = builder.f14639i;
            SystemClock systemClock = builder.f14634b;
            this.f14646e = context.getApplicationContext();
            this.s = (AnalyticsCollector) builder.f14638h.apply(systemClock);
            this.i0 = builder.f14640j;
            this.b0 = builder.f14641k;
            this.Z = builder.l;
            this.e0 = false;
            this.B = builder.u;
            ComponentListener componentListener = new ComponentListener();
            this.w = componentListener;
            this.x = new FrameMetadataListener();
            Handler handler = new Handler(looper);
            RenderersFactory renderersFactory = (RenderersFactory) builder.f14635c.get();
            Renderer[] rendererArrA = renderersFactory.a(handler, componentListener, componentListener, componentListener, componentListener);
            this.g = rendererArrA;
            Preconditions.q(rendererArrA.length > 0);
            this.f14648h = new Renderer[rendererArrA.length];
            int i3 = 0;
            while (true) {
                Renderer[] rendererArr = this.f14648h;
                if (i3 >= rendererArr.length) {
                    break;
                }
                renderersFactory.b(this.g[i3]);
                rendererArr[i3] = null;
                i3++;
            }
            TrackSelector trackSelector = (TrackSelector) builder.f14636e.get();
            this.f14649i = trackSelector;
            this.r = (MediaSource.Factory) builder.d.get();
            BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.g.get();
            this.u = bandwidthMeter;
            this.q = builder.m;
            SeekParameters seekParameters = builder.n;
            this.m0 = builder.p;
            this.n0 = builder.q;
            this.o0 = builder.r;
            ScrubbingModeParameters scrubbingModeParameters = builder.o;
            this.O = scrubbingModeParameters;
            this.t = looper;
            this.v = systemClock;
            Player player2 = player == null ? this : player;
            this.f14647f = player2;
            this.m = new ListenerSet(looper, systemClock, new e(this, i2));
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.n = copyOnWriteArraySet;
            this.p = new ArrayList();
            this.P = new ShuffleOrder.DefaultShuffleOrder(0);
            ExoPlayer.PreloadConfiguration preloadConfiguration = ExoPlayer.PreloadConfiguration.f14642b;
            Renderer[] rendererArr2 = this.g;
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr2.length], new ExoTrackSelection[rendererArr2.length], Tracks.f14010b, null);
            this.f14644b = trackSelectorResult;
            this.o = new Timeline.Period();
            Player.Commands.Builder builder2 = new Player.Commands.Builder();
            builder2.f13926a.b(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            trackSelector.getClass();
            builder2.b(29, trackSelector instanceof DefaultTrackSelector);
            builder2.b(23, false);
            builder2.b(25, false);
            builder2.b(33, false);
            builder2.b(26, false);
            builder2.b(34, false);
            Player.Commands commandsC = builder2.c();
            this.f14645c = commandsC;
            Player.Commands.Builder builder3 = new Player.Commands.Builder();
            FlagSet.Builder builder4 = builder3.f13926a;
            FlagSet flagSet = commandsC.f13924a;
            builder4.getClass();
            for (int i4 = 0; i4 < flagSet.f13752a.size(); i4++) {
                builder4.a(flagSet.b(i4));
            }
            builder4.a(4);
            builder4.a(10);
            this.Q = builder3.c();
            this.f14650j = systemClock.e(looper, null);
            e eVar = new e(this, 1);
            this.f14651k = eVar;
            this.q0 = PlaybackInfo.k(trackSelectorResult);
            this.s.w0(player2, looper);
            final PlayerId playerId = new PlayerId(builder.B);
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(this.f14646e, this.g, this.f14648h, trackSelector, trackSelectorResult, (LoadControl) builder.f14637f.get(), bandwidthMeter, this.H, this.I, this.s, seekParameters, builder.s, builder.t, false, false, looper, systemClock, eVar, playerId, null, preloadConfiguration, this.x, builder.D);
            HandlerWrapper handlerWrapper = exoPlayerImplInternal.f14669i;
            this.l = exoPlayerImplInternal;
            Looper looper2 = exoPlayerImplInternal.f14671k;
            this.c0 = 1.0f;
            this.H = 0;
            MediaMetadata mediaMetadata = MediaMetadata.L;
            this.R = mediaMetadata;
            this.S = mediaMetadata;
            this.p0 = mediaMetadata;
            this.r0 = -1;
            this.f0 = CueGroup.d;
            this.g0 = true;
            Y(this.s);
            bandwidthMeter.c(new Handler(looper), this.s);
            copyOnWriteArraySet.add(this.w);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 31) {
                final Context context2 = this.f14646e;
                final boolean z = builder.z;
                systemClock.e(exoPlayerImplInternal.f14671k, null).k(new Runnable() { // from class: androidx.media3.exoplayer.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaMetricsListener mediaMetricsListenerM = MediaMetricsListener.m(context2);
                        if (mediaMetricsListenerM == null) {
                            Log.g("MediaMetricsService unavailable.");
                            return;
                        }
                        if (z) {
                            this.s.c0(mediaMetricsListenerM);
                        }
                        playerId.b(mediaMetricsListenerM.o());
                    }
                });
            }
            BackgroundThreadStateHandler backgroundThreadStateHandler = new BackgroundThreadStateHandler(0, looper2, looper, systemClock, new e(this, 2));
            this.C = backgroundThreadStateHandler;
            backgroundThreadStateHandler.a(new f(this));
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.f14633a, looper2, builder.f14639i, this.w, systemClock);
            this.y = audioBecomingNoisyManager;
            audioBecomingNoisyManager.a(false);
            boolean z2 = (builder.v == Integer.MAX_VALUE || builder.w == Integer.MAX_VALUE || builder.x == Integer.MAX_VALUE || builder.y == Integer.MAX_VALUE) ? false : true;
            WakeLockManager wakeLockManager = new WakeLockManager(context, looper2, systemClock);
            this.z = wakeLockManager;
            if (wakeLockManager.d != z2) {
                wakeLockManager.d = z2;
                wakeLockManager.a(z2, wakeLockManager.f14254e);
            }
            this.A = new WifiLockManager(context, looper2, systemClock);
            this.k0 = DeviceInfo.f13735e;
            this.l0 = VideoSize.d;
            this.a0 = Size.f14197c;
            this.E = i5 >= 34 ? new VirtualDeviceIdChangeListener(context) : null;
            this.F = new CodecParameterListenerManager();
            this.G = new CodecParameterListenerManager();
            this.D = new StuckPlayerDetector(this, this.w, systemClock, builder.v, builder.w, builder.x, builder.y);
            handlerWrapper.g(38, scrubbingModeParameters).a();
            handlerWrapper.f(31, 0, 0, this.b0).a();
            p1(1, 3, this.b0);
            p1(2, 4, Integer.valueOf(this.Z));
            p1(2, 5, 0);
            p1(1, 9, Boolean.valueOf(this.e0));
            p1(6, 8, this.x);
            p1(-1, 16, Integer.valueOf(this.i0));
        } finally {
            this.d.d();
        }
    }

    public static long i1(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.f14754a.g(playbackInfo.f14755b.f15516a, period);
        long j2 = playbackInfo.f14756c;
        return j2 == -9223372036854775807L ? playbackInfo.f14754a.m(period.f13961c, window, 0L).l : period.f13962e + j2;
    }

    public static PlaybackInfo j1(PlaybackInfo playbackInfo, int i2) {
        PlaybackInfo playbackInfoH = playbackInfo.h(i2);
        return (i2 == 1 || i2 == 4) ? playbackInfoH.b(false) : playbackInfoH;
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata A() {
        y1();
        return this.R;
    }

    @Override // androidx.media3.common.Player
    public final void A0(int i2, List list) {
        y1();
        ArrayList arrayListC1 = c1(list);
        y1();
        Preconditions.g(i2 >= 0);
        int iMin = Math.min(i2, this.p.size());
        if (!this.q0.f14754a.p()) {
            w1(Z0(this.q0, iMin, arrayListC1), 0, false, 5, -9223372036854775807L, -1, false);
            return;
        }
        boolean z = this.r0 == -1;
        y1();
        q1(arrayListC1, -1, -9223372036854775807L, z);
    }

    @Override // androidx.media3.common.Player
    public final void B(Surface surface) {
        y1();
        o1();
        s1(surface);
        int i2 = surface == null ? 0 : -1;
        m1(i2, i2);
    }

    @Override // androidx.media3.common.Player
    public final long B0() {
        y1();
        if (!j()) {
            return x();
        }
        PlaybackInfo playbackInfo = this.q0;
        return playbackInfo.f14762k.equals(playbackInfo.f14755b) ? Util.f0(this.q0.q) : getDuration();
    }

    @Override // androidx.media3.common.Player
    public final long C() {
        y1();
        return Util.f0(this.q0.r);
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata C0() {
        y1();
        return this.S;
    }

    @Override // androidx.media3.common.Player
    public final void E0(int i2) {
        y1();
        if (this.H != i2) {
            this.H = i2;
            this.l.f14669i.i(11, i2, 0).a();
            i iVar = new i(i2, 0);
            ListenerSet listenerSet = this.m;
            listenerSet.c(8, iVar);
            u1();
            listenerSet.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.Player
    public final void F0(TrackSelectionParameters trackSelectionParameters) {
        TrackSelectionParameters trackSelectionParametersB;
        y1();
        TrackSelector trackSelector = this.f14649i;
        trackSelector.getClass();
        if (trackSelector instanceof DefaultTrackSelector) {
            TrackSelectionParameters trackSelectionParametersD0 = d0();
            if (this.M) {
                this.N = trackSelectionParameters.I;
                ImmutableSet immutableSet = this.O.f14785a;
                TrackSelectionParameters.Builder builderA = trackSelectionParameters.a();
                UnmodifiableIterator it = immutableSet.iterator();
                while (it.hasNext()) {
                    builderA.m(((Integer) it.next()).intValue(), true);
                }
                trackSelectionParametersB = builderA.b();
            } else {
                trackSelectionParametersB = trackSelectionParameters;
            }
            if (!trackSelectionParametersB.equals(trackSelector.b())) {
                trackSelector.h(trackSelectionParametersB);
            }
            if (trackSelectionParametersD0.equals(trackSelectionParameters)) {
                return;
            }
            this.m.f(19, new b(trackSelectionParameters, 2));
        }
    }

    @Override // androidx.media3.common.Player
    public final void G(int i2, boolean z) {
        y1();
    }

    @Override // androidx.media3.common.Player
    public final void G0(SurfaceView surfaceView) {
        y1();
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        y1();
        if (holder == null || holder != this.V) {
            return;
        }
        b1();
    }

    @Override // androidx.media3.common.Player
    public final void H() {
        y1();
    }

    @Override // androidx.media3.common.Player
    public final void I(int i2) {
        y1();
    }

    @Override // androidx.media3.common.Player
    public final void I0(int i2, int i3, int i4) {
        y1();
        Preconditions.g(i2 >= 0 && i2 <= i3 && i4 >= 0);
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        int iMin = Math.min(i3, size);
        int iMin2 = Math.min(i4, size - (iMin - i2));
        if (i2 >= size || i2 == iMin || i2 == iMin2) {
            return;
        }
        Timeline timelineP = p();
        this.J++;
        Util.Q(arrayList, i2, iMin, iMin2);
        this.P = this.P.d();
        PlaylistTimeline playlistTimeline = new PlaylistTimeline(arrayList, this.P);
        PlaybackInfo playbackInfo = this.q0;
        PlaybackInfo playbackInfoK1 = k1(playbackInfo, playlistTimeline, h1(timelineP, playlistTimeline, g1(playbackInfo), e1(this.q0)));
        ShuffleOrder shuffleOrder = this.P;
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        exoPlayerImplInternal.getClass();
        exoPlayerImplInternal.f14669i.g(19, new ExoPlayerImplInternal.MoveMediaItemsMessage(i2, iMin, iMin2, shuffleOrder)).a();
        w1(playbackInfoK1, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final void J(SurfaceView surfaceView) {
        y1();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            o1();
            s1(surfaceView);
            r1(surfaceView.getHolder());
            return;
        }
        if (!(surfaceView instanceof SphericalGLSurfaceView)) {
            O(surfaceView == null ? null : surfaceView.getHolder());
            return;
        }
        o1();
        this.W = (SphericalGLSurfaceView) surfaceView;
        PlayerMessage playerMessageD1 = d1(this.x);
        Preconditions.q(!playerMessageD1.f14772i);
        playerMessageD1.f14769e = 10000;
        SphericalGLSurfaceView sphericalGLSurfaceView = this.W;
        Preconditions.q(!playerMessageD1.f14772i);
        playerMessageD1.f14770f = sphericalGLSurfaceView;
        playerMessageD1.b();
        this.W.f16033b.add(this.w);
        s1(this.W.getVideoSurface());
        r1(surfaceView.getHolder());
    }

    @Override // androidx.media3.common.Player
    public final void K(int i2, int i3, List list) {
        y1();
        Preconditions.g(i2 >= 0 && i3 >= i2);
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        if (i2 > size) {
            return;
        }
        int iMin = Math.min(i3, size);
        if (iMin - i2 == list.size()) {
            int i4 = i2;
            while (true) {
                if (i4 >= iMin) {
                    this.J++;
                    this.l.f14669i.f(27, i2, iMin, list).a();
                    for (int i5 = i2; i5 < iMin; i5++) {
                        MediaSourceHolderSnapshot mediaSourceHolderSnapshot = (MediaSourceHolderSnapshot) arrayList.get(i5);
                        Timeline timeline = mediaSourceHolderSnapshot.f14660c;
                        MediaItem mediaItem = (MediaItem) list.get(i5 - i2);
                        mediaSourceHolderSnapshot.f14660c = timeline instanceof TimelineWithUpdatedMediaItem ? new TimelineWithUpdatedMediaItem(((TimelineWithUpdatedMediaItem) timeline).f15491e, mediaItem) : new TimelineWithUpdatedMediaItem(timeline, mediaItem);
                    }
                    w1(this.q0.j(new PlaylistTimeline(arrayList, this.P)), 0, false, 4, -9223372036854775807L, -1, false);
                    return;
                }
                if (!((MediaSourceHolderSnapshot) arrayList.get(i4)).f14659b.f15639k.q((MediaItem) list.get(i4 - i2))) {
                    break;
                } else {
                    i4++;
                }
            }
        }
        ArrayList arrayListC1 = c1(list);
        if (!this.q0.f14754a.p()) {
            PlaybackInfo playbackInfoN1 = n1(Z0(this.q0, iMin, arrayListC1), i2, iMin);
            w1(playbackInfoN1, 0, !playbackInfoN1.f14755b.f15516a.equals(this.q0.f14755b.f15516a), 4, f1(playbackInfoN1), -1, false);
        } else {
            boolean z = this.r0 == -1;
            y1();
            q1(arrayListC1, -1, -9223372036854775807L, z);
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean K0() {
        y1();
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void L(MediaMetadata mediaMetadata) {
        y1();
        mediaMetadata.getClass();
        if (mediaMetadata.equals(this.S)) {
            return;
        }
        this.S = mediaMetadata;
        this.m.f(15, new e(this, 4));
    }

    @Override // androidx.media3.common.Player
    public final void L0(int i2) {
        y1();
    }

    @Override // androidx.media3.common.Player
    public final void M0(List list) {
        y1();
        ArrayList arrayListC1 = c1(list);
        y1();
        q1(arrayListC1, -1, -9223372036854775807L, true);
    }

    @Override // androidx.media3.common.Player
    public final void N(int i2, int i3) {
        y1();
        Preconditions.g(i2 >= 0 && i3 >= i2);
        int size = this.p.size();
        int iMin = Math.min(i3, size);
        if (i2 >= size || i2 == iMin) {
            return;
        }
        PlaybackInfo playbackInfoN1 = n1(this.q0, i2, iMin);
        w1(playbackInfoN1, 0, !playbackInfoN1.f14755b.f15516a.equals(this.q0.f14755b.f15516a), 4, f1(playbackInfoN1), -1, false);
    }

    @Override // androidx.media3.common.Player
    public final long N0() {
        y1();
        return this.m0;
    }

    @Override // androidx.media3.common.Player
    public final void O(SurfaceHolder surfaceHolder) {
        y1();
        if (surfaceHolder == null) {
            b1();
            return;
        }
        o1();
        this.X = true;
        this.V = surfaceHolder;
        surfaceHolder.addCallback(this.w);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            s1(null);
            m1(0, 0);
        } else {
            s1(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            m1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // androidx.media3.common.Player
    public final void P(boolean z) {
        y1();
        v1(1, z);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void P0() {
        y1();
        this.Z = 1;
        p1(2, 4, 1);
    }

    @Override // androidx.media3.common.Player
    public final void Q() {
        y1();
        if (this.c0 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f2 = this.d0;
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                g(f2);
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void T(int i2) {
        y1();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void T0() {
        y1();
        if (this.j0) {
            return;
        }
        this.y.a(true);
    }

    @Override // androidx.media3.common.Player
    public final void V(Player.Listener listener) {
        y1();
        listener.getClass();
        this.m.e(listener);
    }

    @Override // androidx.media3.common.Player
    public final int W() {
        y1();
        if (j()) {
            return this.q0.f14755b.f15517b;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public final void X(boolean z) {
        y1();
    }

    @Override // androidx.media3.common.BasePlayer
    public final void X0(long j2, int i2, boolean z) {
        y1();
        if (i2 == -1) {
            return;
        }
        Preconditions.g(i2 >= 0);
        Timeline timeline = this.q0.f14754a;
        if (timeline.p() || i2 < timeline.o()) {
            this.s.M();
            this.J++;
            if (j()) {
                Log.g("seekTo ignored because an ad is playing");
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.q0);
                playbackInfoUpdate.a(1);
                this.f14651k.b(playbackInfoUpdate);
                return;
            }
            PlaybackInfo playbackInfoH = this.q0;
            int i3 = playbackInfoH.f14757e;
            if (i3 == 3 || (i3 == 4 && !timeline.p())) {
                playbackInfoH = this.q0.h(2);
            }
            int iV = v();
            PlaybackInfo playbackInfoK1 = k1(playbackInfoH, timeline, l1(timeline, i2, j2));
            this.l.f14669i.g(3, new ExoPlayerImplInternal.SeekPosition(timeline, i2, Util.R(j2))).a();
            w1(playbackInfoK1, 0, true, 1, f1(playbackInfoK1), iV, z);
        }
    }

    @Override // androidx.media3.common.Player
    public final void Y(Player.Listener listener) {
        listener.getClass();
        this.m.a(listener);
    }

    @Override // androidx.media3.common.Player
    public final int Z() {
        y1();
        return this.q0.n;
    }

    public final PlaybackInfo Z0(PlaybackInfo playbackInfo, int i2, ArrayList arrayList) {
        Timeline timeline = playbackInfo.f14754a;
        this.J++;
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (true) {
            int size = arrayList.size();
            ArrayList arrayList3 = this.p;
            if (i3 >= size) {
                this.P = this.P.i(i2, arrayList2.size());
                PlaylistTimeline playlistTimeline = new PlaylistTimeline(arrayList3, this.P);
                PlaybackInfo playbackInfoK1 = k1(playbackInfo, playlistTimeline, h1(timeline, playlistTimeline, g1(playbackInfo), e1(playbackInfo)));
                this.l.f14669i.f(18, i2, 0, new ExoPlayerImplInternal.MediaSourceListUpdateMessage(arrayList2, this.P, -1, -9223372036854775807L)).a();
                return playbackInfoK1;
            }
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder((MediaSource) arrayList.get(i3), this.q);
            arrayList2.add(mediaSourceHolder);
            arrayList3.add(i3 + i2, new MediaSourceHolderSnapshot(mediaSourceHolder.f14751b, mediaSourceHolder.f14750a));
            i3++;
        }
    }

    @Override // androidx.media3.common.Player
    public final PlaybackParameters a() {
        y1();
        return this.q0.o;
    }

    @Override // androidx.media3.common.Player
    public final Looper a0() {
        return this.t;
    }

    public final MediaMetadata a1() {
        Timeline timelineP = p();
        if (timelineP.p()) {
            return this.p0;
        }
        MediaItem mediaItem = timelineP.m(v(), this.f13705a, 0L).f13969c;
        MediaMetadata.Builder builderA = this.p0.a();
        MediaMetadata mediaMetadata = mediaItem.d;
        if (mediaMetadata != null) {
            ImmutableList immutableList = mediaMetadata.K;
            byte[] bArr = mediaMetadata.f13887k;
            CharSequence charSequence = mediaMetadata.f13879a;
            if (charSequence != null) {
                builderA.f13888a = charSequence;
            }
            CharSequence charSequence2 = mediaMetadata.f13880b;
            if (charSequence2 != null) {
                builderA.f13889b = charSequence2;
            }
            CharSequence charSequence3 = mediaMetadata.f13881c;
            if (charSequence3 != null) {
                builderA.f13890c = charSequence3;
            }
            CharSequence charSequence4 = mediaMetadata.d;
            if (charSequence4 != null) {
                builderA.d = charSequence4;
            }
            CharSequence charSequence5 = mediaMetadata.f13882e;
            if (charSequence5 != null) {
                builderA.f13891e = charSequence5;
            }
            CharSequence charSequence6 = mediaMetadata.f13883f;
            if (charSequence6 != null) {
                builderA.f13892f = charSequence6;
            }
            CharSequence charSequence7 = mediaMetadata.g;
            if (charSequence7 != null) {
                builderA.g = charSequence7;
            }
            Long l = mediaMetadata.f13884h;
            if (l != null) {
                builderA.c(l);
            }
            Rating rating = mediaMetadata.f13885i;
            if (rating != null) {
                builderA.f13894i = rating;
            }
            Rating rating2 = mediaMetadata.f13886j;
            if (rating2 != null) {
                builderA.f13895j = rating2;
            }
            Uri uri = mediaMetadata.n;
            if (uri != null || bArr != null) {
                builderA.n = uri;
                builderA.b(bArr, mediaMetadata.m);
                builderA.l = mediaMetadata.l;
            }
            Integer num = mediaMetadata.o;
            if (num != null) {
                builderA.o = num;
            }
            Integer num2 = mediaMetadata.p;
            if (num2 != null) {
                builderA.p = num2;
            }
            Integer num3 = mediaMetadata.q;
            if (num3 != null) {
                builderA.q = num3;
            }
            Boolean bool = mediaMetadata.r;
            if (bool != null) {
                builderA.r = bool;
            }
            Boolean bool2 = mediaMetadata.s;
            if (bool2 != null) {
                builderA.s = bool2;
            }
            Integer num4 = mediaMetadata.t;
            if (num4 != null) {
                builderA.t = num4;
            }
            Integer num5 = mediaMetadata.u;
            if (num5 != null) {
                builderA.t = num5;
            }
            Integer num6 = mediaMetadata.v;
            if (num6 != null) {
                builderA.u = num6;
            }
            Integer num7 = mediaMetadata.w;
            if (num7 != null) {
                builderA.v = num7;
            }
            Integer num8 = mediaMetadata.x;
            if (num8 != null) {
                builderA.w = num8;
            }
            Integer num9 = mediaMetadata.y;
            if (num9 != null) {
                builderA.x = num9;
            }
            Integer num10 = mediaMetadata.z;
            if (num10 != null) {
                builderA.y = num10;
            }
            CharSequence charSequence8 = mediaMetadata.A;
            if (charSequence8 != null) {
                builderA.z = charSequence8;
            }
            CharSequence charSequence9 = mediaMetadata.B;
            if (charSequence9 != null) {
                builderA.A = charSequence9;
            }
            CharSequence charSequence10 = mediaMetadata.C;
            if (charSequence10 != null) {
                builderA.B = charSequence10;
            }
            Integer num11 = mediaMetadata.D;
            if (num11 != null) {
                builderA.C = num11;
            }
            Integer num12 = mediaMetadata.E;
            if (num12 != null) {
                builderA.D = num12;
            }
            CharSequence charSequence11 = mediaMetadata.F;
            if (charSequence11 != null) {
                builderA.E = charSequence11;
            }
            CharSequence charSequence12 = mediaMetadata.G;
            if (charSequence12 != null) {
                builderA.F = charSequence12;
            }
            CharSequence charSequence13 = mediaMetadata.H;
            if (charSequence13 != null) {
                builderA.G = charSequence13;
            }
            Integer num13 = mediaMetadata.I;
            if (num13 != null) {
                builderA.H = num13;
            }
            Bundle bundle = mediaMetadata.J;
            if (bundle != null) {
                builderA.I = bundle;
            }
            if (!immutableList.isEmpty()) {
                builderA.J = ImmutableList.t(immutableList);
            }
        }
        return new MediaMetadata(builderA);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void b(ProgressiveMediaSource progressiveMediaSource) {
        y1();
        List listSingletonList = Collections.singletonList(progressiveMediaSource);
        y1();
        y1();
        q1(listSingletonList, -1, -9223372036854775807L, true);
    }

    @Override // androidx.media3.common.Player
    public final void b0() {
        y1();
        if (this.c0 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            g(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public final void b1() {
        y1();
        o1();
        s1(null);
        m1(0, 0);
    }

    @Override // androidx.media3.common.Player
    public final void c0() {
        y1();
    }

    public final ArrayList c1(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(this.r.c((MediaItem) list.get(i2)));
        }
        return arrayList;
    }

    @Override // androidx.media3.common.Player
    public final void d(PlaybackParameters playbackParameters) {
        y1();
        if (this.q0.o.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo playbackInfoG = this.q0.g(playbackParameters);
        this.J++;
        this.l.f14669i.g(4, playbackParameters).a();
        w1(playbackInfoG, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final TrackSelectionParameters d0() {
        y1();
        TrackSelectionParameters trackSelectionParametersB = this.f14649i.b();
        return this.M ? trackSelectionParametersB.a().g(this.N).b() : trackSelectionParametersB;
    }

    public final PlayerMessage d1(PlayerMessage.Target target) {
        int iG1 = g1(this.q0);
        Timeline timeline = this.q0.f14754a;
        if (iG1 == -1) {
            iG1 = 0;
        }
        SystemClock systemClock = this.v;
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, iG1, systemClock, exoPlayerImplInternal.f14671k);
    }

    @Override // androidx.media3.common.Player
    public final ExoPlaybackException e() {
        y1();
        return this.q0.f14758f;
    }

    @Override // androidx.media3.common.Player
    public final void e0(TextureView textureView) {
        y1();
        if (textureView == null) {
            b1();
            return;
        }
        o1();
        this.Y = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.g("Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.w);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            s1(null);
            m1(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            s1(surface);
            this.U = surface;
            m1(textureView.getWidth(), textureView.getHeight());
        }
    }

    public final long e1(PlaybackInfo playbackInfo) {
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.f14755b;
        long j2 = playbackInfo.f14756c;
        Timeline timeline = playbackInfo.f14754a;
        if (!mediaPeriodId.b()) {
            return Util.f0(f1(playbackInfo));
        }
        Object obj = playbackInfo.f14755b.f15516a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        if (j2 == -9223372036854775807L) {
            return Util.f0(timeline.m(g1(playbackInfo), this.f13705a, 0L).l);
        }
        return Util.f0(j2) + Util.f0(period.f13962e);
    }

    @Override // androidx.media3.common.Player
    public final void f() {
        y1();
        PlaybackInfo playbackInfo = this.q0;
        if (playbackInfo.f14757e != 1) {
            return;
        }
        PlaybackInfo playbackInfoF = playbackInfo.f(null);
        PlaybackInfo playbackInfoJ1 = j1(playbackInfoF, playbackInfoF.f14754a.p() ? 4 : 2);
        this.J++;
        this.l.f14669i.b(29).a();
        w1(playbackInfoJ1, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final int f0() {
        y1();
        return 0;
    }

    public final long f1(PlaybackInfo playbackInfo) {
        if (playbackInfo.f14754a.p()) {
            return Util.R(this.s0);
        }
        long jL = playbackInfo.p ? playbackInfo.l() : playbackInfo.s;
        if (playbackInfo.f14755b.b()) {
            return jL;
        }
        Timeline timeline = playbackInfo.f14754a;
        Object obj = playbackInfo.f14755b.f15516a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        return jL + period.f13962e;
    }

    @Override // androidx.media3.common.Player
    public final void g(float f2) {
        y1();
        final float fI = Util.i(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        float f3 = this.c0;
        if (f3 == fI) {
            return;
        }
        if (fI != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f3 = fI;
        }
        this.d0 = f3;
        this.c0 = fI;
        this.l.f14669i.g(32, Float.valueOf(fI)).a();
        this.m.f(22, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.h
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                int i2 = ExoPlayerImpl.t0;
                ((Player.Listener) obj).h0(fI);
            }
        });
    }

    public final int g1(PlaybackInfo playbackInfo) {
        return playbackInfo.f14754a.p() ? this.r0 : playbackInfo.f14754a.g(playbackInfo.f14755b.f15516a, this.o).f13961c;
    }

    @Override // androidx.media3.common.Player
    public final long getCurrentPosition() {
        y1();
        return Util.f0(f1(this.q0));
    }

    @Override // androidx.media3.common.Player
    public final long getDuration() {
        y1();
        if (!j()) {
            return m0();
        }
        PlaybackInfo playbackInfo = this.q0;
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.f14755b;
        Timeline timeline = playbackInfo.f14754a;
        Object obj = mediaPeriodId.f15516a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        return Util.f0(period.a(mediaPeriodId.f15517b, mediaPeriodId.f15518c));
    }

    @Override // androidx.media3.common.Player
    public final int h() {
        y1();
        return this.q0.f14757e;
    }

    public final Pair h1(Timeline timeline, Timeline timeline2, int i2, long j2) {
        if (timeline.p() || timeline2.p()) {
            boolean z = !timeline.p() && timeline2.p();
            return l1(timeline2, z ? -1 : i2, z ? -9223372036854775807L : j2);
        }
        Pair pairI = timeline.i(this.f13705a, this.o, i2, Util.R(j2));
        Object obj = pairI.first;
        if (timeline2.b(obj) != -1) {
            return pairI;
        }
        int iA0 = ExoPlayerImplInternal.a0(this.f13705a, this.o, this.H, this.I, obj, timeline, timeline2);
        if (iA0 == -1) {
            return l1(timeline2, -1, -9223372036854775807L);
        }
        Timeline.Window window = this.f13705a;
        timeline2.m(iA0, window, 0L);
        return l1(timeline2, iA0, Util.f0(window.l));
    }

    @Override // androidx.media3.common.Player
    public final int i() {
        y1();
        return this.H;
    }

    @Override // androidx.media3.common.Player
    public final Player.Commands i0() {
        y1();
        return this.Q;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final boolean isScrubbingModeEnabled() {
        y1();
        return this.M;
    }

    @Override // androidx.media3.common.Player
    public final boolean j() {
        y1();
        return this.q0.f14755b.b();
    }

    @Override // androidx.media3.common.Player
    public final void j0(final boolean z) {
        y1();
        if (this.I != z) {
            this.I = z;
            this.l.f14669i.i(12, z ? 1 : 0, 0).a();
            ListenerSet.Event event = new ListenerSet.Event() { // from class: androidx.media3.exoplayer.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i2 = ExoPlayerImpl.t0;
                    ((Player.Listener) obj).N(z);
                }
            };
            ListenerSet listenerSet = this.m;
            listenerSet.c(9, event);
            u1();
            listenerSet.b();
        }
    }

    @Override // androidx.media3.common.Player
    public final long k0() {
        y1();
        return this.o0;
    }

    public final PlaybackInfo k1(PlaybackInfo playbackInfo, Timeline timeline, Pair pair) {
        Preconditions.g(timeline.p() || pair != null);
        Timeline timeline2 = playbackInfo.f14754a;
        long jE1 = e1(playbackInfo);
        PlaybackInfo playbackInfoJ = playbackInfo.j(timeline);
        if (timeline.p()) {
            MediaSource.MediaPeriodId mediaPeriodId = PlaybackInfo.u;
            long jR = Util.R(this.s0);
            PlaybackInfo playbackInfoC = playbackInfoJ.d(mediaPeriodId, jR, jR, jR, 0L, TrackGroupArray.d, this.f14644b, ImmutableList.x()).c(mediaPeriodId);
            playbackInfoC.q = playbackInfoC.s;
            return playbackInfoC;
        }
        Object obj = playbackInfoJ.f14755b.f15516a;
        String str = Util.f14242a;
        boolean zEquals = obj.equals(pair.first);
        MediaSource.MediaPeriodId mediaPeriodId2 = !zEquals ? new MediaSource.MediaPeriodId(pair.first) : playbackInfoJ.f14755b;
        long jLongValue = ((Long) pair.second).longValue();
        long jR2 = Util.R(jE1);
        if (!timeline2.p()) {
            jR2 -= timeline2.g(obj, this.o).f13962e;
            if (zEquals && jR2 - jLongValue == 1 && jR2 == timeline2.g(obj, this.o).d) {
                jR2--;
            }
        }
        if (!zEquals || jLongValue < jR2) {
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodId2;
            Preconditions.q(!mediaPeriodId3.b());
            PlaybackInfo playbackInfoC2 = playbackInfoJ.d(mediaPeriodId3, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? TrackGroupArray.d : playbackInfoJ.f14759h, !zEquals ? this.f14644b : playbackInfoJ.f14760i, !zEquals ? ImmutableList.x() : playbackInfoJ.f14761j).c(mediaPeriodId3);
            playbackInfoC2.q = jLongValue;
            return playbackInfoC2;
        }
        if (jLongValue != jR2) {
            MediaSource.MediaPeriodId mediaPeriodId4 = mediaPeriodId2;
            Preconditions.q(!mediaPeriodId4.b());
            long jMax = Math.max(0L, playbackInfoJ.r - (jLongValue - jR2));
            long j2 = playbackInfoJ.q;
            if (playbackInfoJ.f14762k.equals(playbackInfoJ.f14755b)) {
                j2 = jLongValue + jMax;
            }
            PlaybackInfo playbackInfoD = playbackInfoJ.d(mediaPeriodId4, jLongValue, jLongValue, jLongValue, jMax, playbackInfoJ.f14759h, playbackInfoJ.f14760i, playbackInfoJ.f14761j);
            playbackInfoD.q = j2;
            return playbackInfoD;
        }
        int iB = timeline.b(playbackInfoJ.f14762k.f15516a);
        if (iB != -1 && timeline.f(iB, this.o, false).f13961c == timeline.g(mediaPeriodId2.f15516a, this.o).f13961c) {
            return playbackInfoJ;
        }
        timeline.g(mediaPeriodId2.f15516a, this.o);
        boolean zB = mediaPeriodId2.b();
        Timeline.Period period = this.o;
        long jA = zB ? period.a(mediaPeriodId2.f15517b, mediaPeriodId2.f15518c) : period.d;
        MediaSource.MediaPeriodId mediaPeriodId5 = mediaPeriodId2;
        PlaybackInfo playbackInfoC3 = playbackInfoJ.d(mediaPeriodId5, playbackInfoJ.s, playbackInfoJ.s, playbackInfoJ.d, jA - playbackInfoJ.s, playbackInfoJ.f14759h, playbackInfoJ.f14760i, playbackInfoJ.f14761j).c(mediaPeriodId5);
        playbackInfoC3.q = jA;
        return playbackInfoC3;
    }

    public final Pair l1(Timeline timeline, int i2, long j2) {
        if (timeline.p()) {
            this.r0 = i2;
            if (j2 == -9223372036854775807L) {
                j2 = 0;
            }
            this.s0 = j2;
            return null;
        }
        if (i2 == -1 || i2 >= timeline.o()) {
            i2 = timeline.a(this.I);
            j2 = Util.f0(timeline.m(i2, this.f13705a, 0L).l);
        }
        return timeline.i(this.f13705a, this.o, i2, Util.R(j2));
    }

    @Override // androidx.media3.common.Player
    public final boolean m() {
        y1();
        return this.q0.g;
    }

    public final void m1(final int i2, final int i3) {
        Size size = this.a0;
        if (i2 == size.f14198a && i3 == size.f14199b) {
            return;
        }
        this.a0 = new Size(i2, i3);
        this.m.f(24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.g
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                int i4 = ExoPlayerImpl.t0;
                ((Player.Listener) obj).X(i2, i3);
            }
        });
        p1(2, 14, new Size(i2, i3));
    }

    @Override // androidx.media3.common.Player
    public final Tracks n() {
        y1();
        return this.q0.f14760i.d;
    }

    @Override // androidx.media3.common.Player
    public final int n0() {
        y1();
        if (!this.q0.f14754a.p()) {
            PlaybackInfo playbackInfo = this.q0;
            return playbackInfo.f14754a.b(playbackInfo.f14755b.f15516a);
        }
        int i2 = this.r0;
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    public final PlaybackInfo n1(PlaybackInfo playbackInfo, int i2, int i3) {
        ArrayList arrayList;
        int iG1 = g1(playbackInfo);
        long jE1 = e1(playbackInfo);
        Timeline timeline = playbackInfo.f14754a;
        this.J++;
        int i4 = i3 - 1;
        while (true) {
            arrayList = this.p;
            if (i4 < i2) {
                break;
            }
            arrayList.remove(i4);
            i4--;
        }
        this.P = this.P.a(i2, i3);
        PlaylistTimeline playlistTimeline = new PlaylistTimeline(arrayList, this.P);
        PlaybackInfo playbackInfoK1 = k1(playbackInfo, playlistTimeline, h1(timeline, playlistTimeline, iG1, jE1));
        int i5 = playbackInfoK1.f14757e;
        if (i5 != 1 && i5 != 4 && iG1 >= i2 && iG1 < i3) {
            if (ExoPlayerImplInternal.a0(this.f13705a, this.o, this.H, this.I, playbackInfo.f14755b.f15516a, timeline, playlistTimeline) == -1) {
                playbackInfoK1 = j1(playbackInfoK1, 4);
            }
        }
        this.l.f14669i.f(20, i2, i3, this.P).a();
        return playbackInfoK1;
    }

    @Override // androidx.media3.common.Player
    public final CueGroup o() {
        y1();
        return this.f0;
    }

    @Override // androidx.media3.common.Player
    public final void o0(TextureView textureView) {
        y1();
        if (textureView == null || textureView != this.Y) {
            return;
        }
        b1();
    }

    public final void o1() {
        SphericalGLSurfaceView sphericalGLSurfaceView = this.W;
        ComponentListener componentListener = this.w;
        if (sphericalGLSurfaceView != null) {
            PlayerMessage playerMessageD1 = d1(this.x);
            Preconditions.q(!playerMessageD1.f14772i);
            playerMessageD1.f14769e = 10000;
            Preconditions.q(!playerMessageD1.f14772i);
            playerMessageD1.f14770f = null;
            playerMessageD1.b();
            this.W.f16033b.remove(componentListener);
            this.W = null;
        }
        TextureView textureView = this.Y;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != componentListener) {
                Log.g("SurfaceTextureListener already unset or replaced.");
            } else {
                this.Y.setSurfaceTextureListener(null);
            }
            this.Y = null;
        }
        SurfaceHolder surfaceHolder = this.V;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(componentListener);
            this.V = null;
        }
    }

    @Override // androidx.media3.common.Player
    public final Timeline p() {
        y1();
        return this.q0.f14754a;
    }

    @Override // androidx.media3.common.Player
    public final void p0(AudioAttributes audioAttributes, boolean z) {
        y1();
        if (this.j0) {
            return;
        }
        boolean zEquals = Objects.equals(this.b0, audioAttributes);
        ListenerSet listenerSet = this.m;
        if (!zEquals) {
            this.b0 = audioAttributes;
            p1(1, 3, audioAttributes);
            listenerSet.c(20, new b(audioAttributes, 1));
        }
        this.l.f14669i.f(31, z ? 1 : 0, 0, this.b0).a();
        listenerSet.b();
    }

    public final void p1(int i2, int i3, Object obj) {
        for (Renderer renderer : this.g) {
            if (i2 == -1 || renderer.f() == i2) {
                PlayerMessage playerMessageD1 = d1(renderer);
                Preconditions.q(!playerMessageD1.f14772i);
                playerMessageD1.f14769e = i3;
                Preconditions.q(!playerMessageD1.f14772i);
                playerMessageD1.f14770f = obj;
                playerMessageD1.b();
            }
        }
        for (Renderer renderer2 : this.f14648h) {
            if (renderer2 != null && (i2 == -1 || renderer2.f() == i2)) {
                PlayerMessage playerMessageD2 = d1(renderer2);
                Preconditions.q(!playerMessageD2.f14772i);
                playerMessageD2.f14769e = i3;
                Preconditions.q(!playerMessageD2.f14772i);
                playerMessageD2.f14770f = obj;
                playerMessageD2.b();
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final float q0() {
        y1();
        return this.c0;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0090  */
    /* JADX WARN: Code duplicated, block: B:22:0x0092  */
    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:25:0x009b  */
    /* JADX WARN: Code duplicated, block: B:27:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00da  */
    public final void q1(List list, int i2, long j2, boolean z) {
        long j3;
        int i3;
        int i4;
        PlaybackInfo playbackInfoJ1;
        boolean z2;
        int iA = i2;
        int iG1 = g1(this.q0);
        long currentPosition = getCurrentPosition();
        this.J++;
        ArrayList arrayList = this.p;
        arrayList.clear();
        ArrayList arrayList2 = new ArrayList();
        for (int i5 = 0; i5 < list.size(); i5++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder((MediaSource) list.get(i5), this.q);
            arrayList2.add(mediaSourceHolder);
            arrayList.add(i5, new MediaSourceHolderSnapshot(mediaSourceHolder.f14751b, mediaSourceHolder.f14750a));
        }
        this.P = this.P.h(arrayList2.size());
        PlaylistTimeline playlistTimeline = new PlaylistTimeline(arrayList, this.P);
        boolean zP = playlistTimeline.p();
        int i6 = playlistTimeline.f14773i;
        if (!zP && iA >= i6) {
            throw new IllegalSeekPositionException(playlistTimeline, iA, j2);
        }
        if (!z) {
            if (iA == -1) {
                i3 = iG1;
                j3 = currentPosition;
            } else {
                j3 = j2;
            }
            PlaybackInfo playbackInfoK1 = k1(this.q0, playlistTimeline, l1(playlistTimeline, i3, j3));
            i4 = playbackInfoK1.f14757e;
            if (i4 == 1) {
                i4 = 1;
            } else if (!playlistTimeline.p()) {
                i4 = 4;
            } else if (i3 != -1) {
                if (i3 >= i6) {
                    i4 = 4;
                } else {
                    i4 = 2;
                }
            }
            playbackInfoJ1 = j1(playbackInfoK1, i4);
            this.l.f14669i.g(17, new ExoPlayerImplInternal.MediaSourceListUpdateMessage(arrayList2, this.P, i3, Util.R(j3))).a();
            if (!this.q0.f14755b.f15516a.equals(playbackInfoJ1.f14755b.f15516a) || this.q0.f14754a.p()) {
                z2 = false;
            } else {
                z2 = true;
            }
            w1(playbackInfoJ1, 0, z2, 4, f1(playbackInfoJ1), -1, false);
        }
        iA = playlistTimeline.a(this.I);
        j3 = -9223372036854775807L;
        i3 = iA;
        PlaybackInfo playbackInfoK2 = k1(this.q0, playlistTimeline, l1(playlistTimeline, i3, j3));
        i4 = playbackInfoK2.f14757e;
        if (i4 == 1) {
            i4 = 1;
        } else if (!playlistTimeline.p()) {
            i4 = 4;
        } else if (i3 != -1) {
            if (i3 >= i6) {
                i4 = 4;
            } else {
                i4 = 2;
            }
        }
        playbackInfoJ1 = j1(playbackInfoK2, i4);
        this.l.f14669i.g(17, new ExoPlayerImplInternal.MediaSourceListUpdateMessage(arrayList2, this.P, i3, Util.R(j3))).a();
        if (this.q0.f14755b.f15516a.equals(playbackInfoJ1.f14755b.f15516a)) {
            z2 = false;
        } else {
            z2 = false;
        }
        w1(playbackInfoJ1, 0, z2, 4, f1(playbackInfoJ1), -1, false);
    }

    @Override // androidx.media3.common.Player
    public final boolean r() {
        y1();
        return this.q0.l;
    }

    @Override // androidx.media3.common.Player
    public final AudioAttributes r0() {
        y1();
        return this.b0;
    }

    public final void r1(SurfaceHolder surfaceHolder) {
        this.X = false;
        this.V = surfaceHolder;
        surfaceHolder.addCallback(this.w);
        Surface surface = this.V.getSurface();
        if (surface == null || !surface.isValid()) {
            m1(0, 0);
        } else {
            Rect surfaceFrame = this.V.getSurfaceFrame();
            m1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // androidx.media3.common.Player
    public final void release() {
        String str;
        boolean zC;
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [AndroidXMedia3/1.10.1] [");
        sb.append(Util.f14242a);
        sb.append("] [");
        HashSet hashSet = MediaLibraryInfo.f13877a;
        synchronized (MediaLibraryInfo.class) {
            str = MediaLibraryInfo.f13878b;
        }
        sb.append(str);
        sb.append("]");
        Log.f(sb.toString());
        y1();
        this.y.a(false);
        this.z.b(false);
        this.A.a(false);
        VirtualDeviceIdChangeListener virtualDeviceIdChangeListener = this.E;
        if (virtualDeviceIdChangeListener != null && Build.VERSION.SDK_INT >= 34) {
            VirtualDeviceIdChangeListener.a(virtualDeviceIdChangeListener);
        }
        StuckPlayerDetector stuckPlayerDetector = this.D;
        stuckPlayerDetector.f14204f.c();
        stuckPlayerDetector.f14200a.V(stuckPlayerDetector.f14201b);
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        if (exoPlayerImplInternal.M || !exoPlayerImplInternal.f14671k.getThread().isAlive()) {
            zC = true;
        } else {
            exoPlayerImplInternal.M = true;
            ConditionVariable conditionVariable = new ConditionVariable(exoPlayerImplInternal.r);
            exoPlayerImplInternal.f14669i.g(7, conditionVariable).a();
            zC = conditionVariable.c(exoPlayerImplInternal.w);
        }
        if (!zC) {
            this.m.f(10, new d());
        }
        this.m.d();
        this.f14650j.c();
        this.u.a(this.s);
        PlaybackInfo playbackInfo = this.q0;
        if (playbackInfo.p) {
            this.q0 = playbackInfo.a();
        }
        PlaybackInfo playbackInfoJ1 = j1(this.q0, 1);
        this.q0 = playbackInfoJ1;
        PlaybackInfo playbackInfoC = playbackInfoJ1.c(playbackInfoJ1.f14755b);
        this.q0 = playbackInfoC;
        playbackInfoC.q = playbackInfoC.s;
        this.q0.r = 0L;
        this.s.release();
        o1();
        Surface surface = this.U;
        if (surface != null) {
            surface.release();
            this.U = null;
        }
        this.f0 = CueGroup.d;
        this.j0 = true;
    }

    @Override // androidx.media3.common.Player
    public final VideoSize s() {
        y1();
        return this.l0;
    }

    @Override // androidx.media3.common.Player
    public final DeviceInfo s0() {
        y1();
        return this.k0;
    }

    public final void s1(Object obj) {
        Object obj2 = this.T;
        boolean zC = true;
        boolean z = (obj2 == null || obj2 == obj) ? false : true;
        long j2 = z ? this.B : -9223372036854775807L;
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        if (!exoPlayerImplInternal.M && exoPlayerImplInternal.f14671k.getThread().isAlive()) {
            ConditionVariable conditionVariable = new ConditionVariable(exoPlayerImplInternal.r);
            exoPlayerImplInternal.f14669i.g(30, new Pair(obj, conditionVariable)).a();
            if (j2 != -9223372036854775807L) {
                zC = conditionVariable.c(j2);
            }
        }
        if (z) {
            Object obj3 = this.T;
            Surface surface = this.U;
            if (obj3 == surface) {
                surface.release();
                this.U = null;
            }
        }
        this.T = obj;
        if (zC) {
            return;
        }
        t1(new ExoPlaybackException(2, new ExoTimeoutException(3), 1003));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setImageOutput(ImageOutput imageOutput) {
        y1();
        p1(4, 15, imageOutput);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setScrubbingModeEnabled(boolean z) {
        TrackSelectionParameters trackSelectionParametersB;
        y1();
        if (z == this.M) {
            return;
        }
        this.M = z;
        ScrubbingModeParameters scrubbingModeParameters = this.O;
        if (!scrubbingModeParameters.f14785a.isEmpty()) {
            TrackSelector trackSelector = this.f14649i;
            trackSelector.getClass();
            if (trackSelector instanceof DefaultTrackSelector) {
                TrackSelectionParameters trackSelectionParametersB2 = trackSelector.b();
                if (z) {
                    this.N = trackSelectionParametersB2.I;
                    ImmutableSet immutableSet = scrubbingModeParameters.f14785a;
                    TrackSelectionParameters.Builder builderA = trackSelectionParametersB2.a();
                    UnmodifiableIterator it = immutableSet.iterator();
                    while (it.hasNext()) {
                        builderA.m(((Integer) it.next()).intValue(), true);
                    }
                    trackSelectionParametersB = builderA.b();
                } else {
                    trackSelectionParametersB = trackSelectionParametersB2.a().g(this.N).b();
                    this.N = null;
                }
                if (!trackSelectionParametersB.equals(trackSelectionParametersB2)) {
                    trackSelector.h(trackSelectionParametersB);
                }
            }
        }
        this.l.f14669i.g(36, Boolean.valueOf(z)).a();
        PlaybackInfo playbackInfo = this.q0;
        v1(playbackInfo.m, playbackInfo.l);
    }

    @Override // androidx.media3.common.Player
    public final void stop() {
        y1();
        t1(null);
        this.f0 = new CueGroup(ImmutableList.x(), this.q0.s);
    }

    @Override // androidx.media3.common.Player
    public final void t0(int i2, int i3) {
        y1();
    }

    public final void t1(ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfo = this.q0;
        PlaybackInfo playbackInfoC = playbackInfo.c(playbackInfo.f14755b);
        playbackInfoC.q = playbackInfoC.s;
        playbackInfoC.r = 0L;
        PlaybackInfo playbackInfoJ1 = j1(playbackInfoC, 1);
        if (exoPlaybackException != null) {
            playbackInfoJ1 = playbackInfoJ1.f(exoPlaybackException);
        }
        this.J++;
        this.l.f14669i.b(6).a();
        w1(playbackInfoJ1, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final long u() {
        y1();
        return e1(this.q0);
    }

    public final void u1() {
        Player.Commands commands = this.Q;
        String str = Util.f14242a;
        Player player = this.f14647f;
        boolean zJ = player.j();
        boolean zU0 = player.U0();
        boolean zU1 = player.u0();
        boolean zU = player.U();
        boolean zV0 = player.V0();
        boolean zS0 = player.S0();
        boolean zP = player.p().p();
        Player.Commands.Builder builder = new Player.Commands.Builder();
        FlagSet flagSet = this.f14645c.f13924a;
        FlagSet.Builder builder2 = builder.f13926a;
        builder2.getClass();
        boolean z = false;
        for (int i2 = 0; i2 < flagSet.f13752a.size(); i2++) {
            builder2.a(flagSet.b(i2));
        }
        boolean z2 = !zJ;
        builder.b(4, z2);
        builder.b(5, zU0 && !zJ);
        builder.b(6, zU1 && !zJ);
        builder.b(7, !zP && (zU1 || !zV0 || zU0) && !zJ);
        builder.b(8, zU && !zJ);
        builder.b(9, !zP && (zU || (zV0 && zS0)) && !zJ);
        builder.b(10, z2);
        builder.b(11, zU0 && !zJ);
        if (zU0 && !zJ) {
            z = true;
        }
        builder.b(12, z);
        Player.Commands commandsC = builder.c();
        this.Q = commandsC;
        if (commandsC.equals(commands)) {
            return;
        }
        this.m.c(13, new e(this, 3));
    }

    @Override // androidx.media3.common.Player
    public final int v() {
        y1();
        int iG1 = g1(this.q0);
        if (iG1 == -1) {
            return 0;
        }
        return iG1;
    }

    @Override // androidx.media3.common.Player
    public final int v0() {
        y1();
        if (j()) {
            return this.q0.f14755b.f15518c;
        }
        return -1;
    }

    public final void v1(int i2, boolean z) {
        int i3;
        if (this.M) {
            i3 = 4;
        } else {
            i3 = (this.q0.n != 1 || z) ? 0 : 1;
        }
        PlaybackInfo playbackInfoA = this.q0;
        if (playbackInfoA.l == z && playbackInfoA.n == i3 && playbackInfoA.m == i2) {
            return;
        }
        this.J++;
        if (playbackInfoA.p) {
            playbackInfoA = playbackInfoA.a();
        }
        PlaybackInfo playbackInfoE = playbackInfoA.e(i2, i3, z);
        this.l.f14669i.i(1, z ? 1 : 0, i2 | (i3 << 4)).a();
        w1(playbackInfoE, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final boolean w() {
        y1();
        return this.I;
    }

    public final void w1(final PlaybackInfo playbackInfo, final int i2, boolean z, final int i3, long j2, int i4, boolean z2) {
        Pair pair;
        int i5;
        final MediaItem mediaItem;
        final int i6;
        int i7;
        int i8;
        Object obj;
        MediaItem mediaItem2;
        Object obj2;
        long j3;
        long j4;
        long jI1;
        long jI2;
        Object obj3;
        MediaItem mediaItem3;
        Object obj4;
        PlaybackInfo playbackInfo2 = this.q0;
        this.q0 = playbackInfo;
        boolean zEquals = playbackInfo2.f14754a.equals(playbackInfo.f14754a);
        Timeline.Window window = this.f13705a;
        Timeline.Period period = this.o;
        Timeline timeline = playbackInfo2.f14754a;
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo2.f14755b;
        Timeline timeline2 = playbackInfo.f14754a;
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.f14755b;
        final int i9 = 0;
        if (timeline2.p() && timeline.p()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (timeline2.p() != timeline.p()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else if (!timeline.m(timeline.g(mediaPeriodId.f15516a, period).f13961c, window, 0L).f13967a.equals(timeline2.m(timeline2.g(mediaPeriodId2.f15516a, period).f13961c, window, 0L).f13967a)) {
            if (z && i3 == 0) {
                i5 = 1;
            } else if (z && i3 == 1) {
                i5 = 2;
            } else {
                if (zEquals) {
                    r81.b();
                    return;
                }
                i5 = 3;
            }
            pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
        } else if (z && i3 == 0 && mediaPeriodId.d < mediaPeriodId2.d) {
            pair = new Pair(Boolean.TRUE, 0);
        } else {
            pair = (z && i3 == 1 && z2) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        final int iIntValue = ((Integer) pair.second).intValue();
        if (zBooleanValue) {
            mediaItem = playbackInfo.f14754a.p() ? null : playbackInfo.f14754a.m(playbackInfo.f14754a.g(playbackInfo.f14755b.f15516a, this.o).f13961c, this.f13705a, 0L).f13969c;
            this.p0 = MediaMetadata.L;
        } else {
            mediaItem = null;
        }
        if (zBooleanValue || !playbackInfo2.f14761j.equals(playbackInfo.f14761j)) {
            MediaMetadata.Builder builderA = this.p0.a();
            List list = playbackInfo.f14761j;
            for (int i10 = 0; i10 < list.size(); i10++) {
                Metadata metadata = (Metadata) list.get(i10);
                int i11 = 0;
                while (true) {
                    Metadata.Entry[] entryArr = metadata.f13897a;
                    if (i11 < entryArr.length) {
                        entryArr[i11].b(builderA);
                        i11++;
                    }
                }
            }
            this.p0 = new MediaMetadata(builderA);
        }
        MediaMetadata mediaMetadataA1 = a1();
        boolean zEquals2 = mediaMetadataA1.equals(this.R);
        this.R = mediaMetadataA1;
        boolean z3 = playbackInfo2.l != playbackInfo.l;
        boolean z4 = playbackInfo2.f14757e != playbackInfo.f14757e;
        if (z4 || z3) {
            x1();
        }
        boolean z5 = playbackInfo2.g != playbackInfo.g;
        if (!zEquals) {
            this.m.c(0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.a
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj5) {
                    int i12 = i9;
                    int i13 = i2;
                    Object obj6 = playbackInfo;
                    switch (i12) {
                        case 0:
                            int i14 = ExoPlayerImpl.t0;
                            ((Player.Listener) obj5).m0(((PlaybackInfo) obj6).f14754a, i13);
                            break;
                        default:
                            int i15 = ExoPlayerImpl.t0;
                            ((Player.Listener) obj5).L(i13, (MediaItem) obj6);
                            break;
                    }
                }
            });
        }
        if (z) {
            Timeline.Period period2 = new Timeline.Period();
            if (playbackInfo2.f14754a.p()) {
                i7 = i4;
                i8 = i7;
                obj = null;
                mediaItem2 = null;
                obj2 = null;
            } else {
                Object obj5 = playbackInfo2.f14755b.f15516a;
                playbackInfo2.f14754a.g(obj5, period2);
                int i12 = period2.f13961c;
                int iB = playbackInfo2.f14754a.b(obj5);
                obj = playbackInfo2.f14754a.m(i12, this.f13705a, 0L).f13967a;
                mediaItem2 = this.f13705a.f13969c;
                obj2 = obj5;
                i7 = i12;
                i8 = iB;
            }
            MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo2.f14755b;
            if (i3 == 0) {
                boolean zB = mediaPeriodId3.b();
                MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo2.f14755b;
                if (zB) {
                    jI1 = period2.a(mediaPeriodId4.f15517b, mediaPeriodId4.f15518c);
                    jI2 = i1(playbackInfo2);
                } else {
                    if (mediaPeriodId4.f15519e != -1) {
                        jI1 = i1(this.q0);
                    } else {
                        j3 = period2.f13962e;
                        j4 = period2.d;
                        jI1 = j3 + j4;
                    }
                    jI2 = jI1;
                }
            } else if (mediaPeriodId3.b()) {
                jI1 = playbackInfo2.s;
                jI2 = i1(playbackInfo2);
            } else {
                j3 = period2.f13962e;
                j4 = playbackInfo2.s;
                jI1 = j3 + j4;
                jI2 = jI1;
            }
            long jF0 = Util.f0(jI1);
            long jF1 = Util.f0(jI2);
            MediaSource.MediaPeriodId mediaPeriodId5 = playbackInfo2.f14755b;
            final Player.PositionInfo positionInfo = new Player.PositionInfo(obj, i7, mediaItem2, obj2, i8, jF0, jF1, mediaPeriodId5.f15517b, mediaPeriodId5.f15518c);
            Timeline.Window window2 = this.f13705a;
            int iV = v();
            int iN0 = n0();
            if (this.q0.f14754a.p()) {
                obj3 = null;
                mediaItem3 = null;
                obj4 = null;
            } else {
                PlaybackInfo playbackInfo3 = this.q0;
                Object obj6 = playbackInfo3.f14755b.f15516a;
                playbackInfo3.f14754a.g(obj6, this.o);
                iN0 = this.q0.f14754a.b(obj6);
                Object obj7 = this.q0.f14754a.m(iV, window2, 0L).f13967a;
                mediaItem3 = window2.f13969c;
                obj4 = obj6;
                obj3 = obj7;
            }
            int i13 = iN0;
            long jF2 = Util.f0(j2);
            long jF3 = this.q0.f14755b.b() ? Util.f0(i1(this.q0)) : jF2;
            MediaSource.MediaPeriodId mediaPeriodId6 = this.q0.f14755b;
            final Player.PositionInfo positionInfo2 = new Player.PositionInfo(obj3, iV, mediaItem3, obj4, i13, jF2, jF3, mediaPeriodId6.f15517b, mediaPeriodId6.f15518c);
            this.m.c(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    Player.Listener listener = (Player.Listener) obj8;
                    int i14 = ExoPlayerImpl.t0;
                    int i15 = i3;
                    listener.v(i15);
                    listener.d0(i15, positionInfo, positionInfo2);
                }
            });
        } else {
            zBooleanValue = zBooleanValue;
            zEquals2 = zEquals2;
            z4 = z4;
        }
        if (zBooleanValue) {
            final int i14 = 1;
            this.m.c(1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.a
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i15 = i14;
                    int i16 = iIntValue;
                    Object obj9 = mediaItem;
                    switch (i15) {
                        case 0:
                            int i17 = ExoPlayerImpl.t0;
                            ((Player.Listener) obj8).m0(((PlaybackInfo) obj9).f14754a, i16);
                            break;
                        default:
                            int i18 = ExoPlayerImpl.t0;
                            ((Player.Listener) obj8).L(i16, (MediaItem) obj9);
                            break;
                    }
                }
            });
        }
        final int i15 = 7;
        if (playbackInfo2.f14758f != playbackInfo.f14758f) {
            this.m.c(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i16 = i15;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i16) {
                        case 0:
                            int i17 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i18 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i19 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i20 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i21 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i22 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i23 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i24 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i25 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i26 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
            if (playbackInfo.f14758f != null) {
                final int i16 = 8;
                this.m.c(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj8) {
                        int i17 = i16;
                        PlaybackInfo playbackInfo4 = playbackInfo;
                        Player.Listener listener = (Player.Listener) obj8;
                        switch (i17) {
                            case 0:
                                int i18 = ExoPlayerImpl.t0;
                                listener.I(playbackInfo4.g);
                                listener.e0(playbackInfo4.g);
                                break;
                            case 1:
                                int i19 = ExoPlayerImpl.t0;
                                listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                                break;
                            case 2:
                                int i110 = ExoPlayerImpl.t0;
                                listener.K(playbackInfo4.f14757e);
                                break;
                            case 3:
                                int i20 = ExoPlayerImpl.t0;
                                listener.g0(playbackInfo4.m, playbackInfo4.l);
                                break;
                            case 4:
                                int i21 = ExoPlayerImpl.t0;
                                listener.H(playbackInfo4.n);
                                break;
                            case 5:
                                int i22 = ExoPlayerImpl.t0;
                                listener.x0(playbackInfo4.m());
                                break;
                            case 6:
                                int i23 = ExoPlayerImpl.t0;
                                listener.h(playbackInfo4.o);
                                break;
                            case 7:
                                int i24 = ExoPlayerImpl.t0;
                                listener.t0(playbackInfo4.f14758f);
                                break;
                            case 8:
                                int i25 = ExoPlayerImpl.t0;
                                listener.s(playbackInfo4.f14758f);
                                break;
                            default:
                                int i26 = ExoPlayerImpl.t0;
                                listener.q0(playbackInfo4.f14760i.d);
                                break;
                        }
                    }
                });
            }
        }
        TrackSelectorResult trackSelectorResult = playbackInfo2.f14760i;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.f14760i;
        if (trackSelectorResult != trackSelectorResult2) {
            this.f14649i.d(trackSelectorResult2.f15735e);
            final int i17 = 9;
            this.m.c(2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i18 = i17;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i18) {
                        case 0:
                            int i19 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i110 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i111 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i20 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i21 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i22 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i23 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i24 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i25 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i26 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        if (zEquals2) {
            i6 = 0;
        } else {
            i6 = 0;
            this.m.c(14, new b(this.R, i6));
        }
        if (z5) {
            this.m.c(3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i18 = i6;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i18) {
                        case 0:
                            int i19 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i110 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i111 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i20 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i21 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i22 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i23 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i24 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i25 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i26 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        if (z4 || z3) {
            final int i18 = 1;
            this.m.c(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i19 = i18;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i19) {
                        case 0:
                            int i110 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i111 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i112 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i20 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i21 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i22 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i23 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i24 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i25 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i26 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        final int i19 = 4;
        if (z4) {
            final int i20 = 2;
            this.m.c(4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i110 = i20;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i110) {
                        case 0:
                            int i111 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i112 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i113 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i21 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i22 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i23 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i24 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i25 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i26 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i27 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        final int i21 = 5;
        if (z3 || playbackInfo2.m != playbackInfo.m) {
            final int i22 = 3;
            this.m.c(5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i110 = i22;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i110) {
                        case 0:
                            int i111 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i112 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i113 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i23 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i24 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i25 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i26 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i27 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i28 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i29 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        final int i23 = 6;
        if (playbackInfo2.n != playbackInfo.n) {
            this.m.c(6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i110 = i19;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i110) {
                        case 0:
                            int i111 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i112 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i113 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i24 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i25 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i26 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i27 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i28 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i29 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i210 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        if (playbackInfo2.m() != playbackInfo.m()) {
            this.m.c(7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i110 = i21;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i110) {
                        case 0:
                            int i111 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i112 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i113 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i24 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i25 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i26 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i27 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i28 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i29 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i210 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        if (!playbackInfo2.o.equals(playbackInfo.o)) {
            this.m.c(12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj8) {
                    int i110 = i23;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i110) {
                        case 0:
                            int i111 = ExoPlayerImpl.t0;
                            listener.I(playbackInfo4.g);
                            listener.e0(playbackInfo4.g);
                            break;
                        case 1:
                            int i112 = ExoPlayerImpl.t0;
                            listener.s0(playbackInfo4.f14757e, playbackInfo4.l);
                            break;
                        case 2:
                            int i113 = ExoPlayerImpl.t0;
                            listener.K(playbackInfo4.f14757e);
                            break;
                        case 3:
                            int i24 = ExoPlayerImpl.t0;
                            listener.g0(playbackInfo4.m, playbackInfo4.l);
                            break;
                        case 4:
                            int i25 = ExoPlayerImpl.t0;
                            listener.H(playbackInfo4.n);
                            break;
                        case 5:
                            int i26 = ExoPlayerImpl.t0;
                            listener.x0(playbackInfo4.m());
                            break;
                        case 6:
                            int i27 = ExoPlayerImpl.t0;
                            listener.h(playbackInfo4.o);
                            break;
                        case 7:
                            int i28 = ExoPlayerImpl.t0;
                            listener.t0(playbackInfo4.f14758f);
                            break;
                        case 8:
                            int i29 = ExoPlayerImpl.t0;
                            listener.s(playbackInfo4.f14758f);
                            break;
                        default:
                            int i210 = ExoPlayerImpl.t0;
                            listener.q0(playbackInfo4.f14760i.d);
                            break;
                    }
                }
            });
        }
        u1();
        this.m.b();
        if (playbackInfo2.p != playbackInfo.p) {
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                ((ExoPlayer.AudioOffloadListener) it.next()).A();
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final long x() {
        y1();
        if (this.q0.f14754a.p()) {
            return this.s0;
        }
        PlaybackInfo playbackInfo = this.q0;
        if (playbackInfo.f14762k.d != playbackInfo.f14755b.d) {
            return Util.f0(playbackInfo.f14754a.m(v(), this.f13705a, 0L).m);
        }
        long j2 = playbackInfo.q;
        if (this.q0.f14762k.b()) {
            PlaybackInfo playbackInfo2 = this.q0;
            Timeline.Period periodG = playbackInfo2.f14754a.g(playbackInfo2.f14762k.f15516a, this.o);
            long jD = periodG.d(this.q0.f14762k.f15517b);
            j2 = jD == Long.MIN_VALUE ? periodG.d : jD;
        }
        PlaybackInfo playbackInfo3 = this.q0;
        Timeline timeline = playbackInfo3.f14754a;
        Object obj = playbackInfo3.f14762k.f15516a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        return Util.f0(j2 + period.f13962e);
    }

    @Override // androidx.media3.common.Player
    public final void x0(List list, int i2, long j2) {
        y1();
        ArrayList arrayListC1 = c1(list);
        y1();
        q1(arrayListC1, i2, j2, false);
    }

    public final void x1() {
        int iH = h();
        WifiLockManager wifiLockManager = this.A;
        WakeLockManager wakeLockManager = this.z;
        boolean z = false;
        if (iH != 1) {
            if (iH == 2 || iH == 3) {
                y1();
                boolean z2 = this.q0.p;
                if (r() && !z2) {
                    z = true;
                }
                wakeLockManager.b(z);
                wifiLockManager.a(r());
                return;
            }
            if (iH != 4) {
                r81.b();
                return;
            }
        }
        wakeLockManager.b(false);
        wifiLockManager.a(false);
    }

    public final void y1() {
        this.d.b();
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.t;
        if (threadCurrentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = Util.f14242a;
            Locale locale = Locale.US;
            String strL = d21.l("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (this.g0) {
                md.k(strL);
            } else {
                Log.h(strL, this.h0 ? null : new IllegalStateException());
                this.h0 = true;
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final long z0() {
        y1();
        return this.n0;
    }
}
