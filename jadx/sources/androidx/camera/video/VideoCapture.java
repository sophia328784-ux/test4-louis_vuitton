package androidx.camera.video;

import android.graphics.Rect;
import android.media.MediaCodec;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.impl.VideoCaptureConfig;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.HdrRepeatingRequestFailureQuirk;
import androidx.camera.video.internal.compat.quirk.SizeCannotEncodeVideoQuirk;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.SwappedVideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.b21;
import defpackage.bm;
import defpackage.cj;
import defpackage.e21;
import defpackage.f20;
import defpackage.f31;
import defpackage.m51;
import defpackage.md;
import defpackage.no0;
import defpackage.oy0;
import defpackage.w21;
import defpackage.xm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public final class VideoCapture<T extends VideoOutput> extends UseCase {
    public static final Defaults F = new Defaults();
    public boolean A;
    public SourceStreamRequirementObserver B;
    public SessionConfig.CloseableErrorListener C;
    public final Map D;
    public final Observable.Observer E;
    public DeferrableSurface q;
    public SurfaceEdge r;
    public StreamInfo s;
    public SessionConfig.Builder t;
    public ListenableFuture u;
    public SurfaceRequest v;
    public VideoOutput.SourceState w;
    public SurfaceProcessorNode x;
    public Rect y;
    public int z;

    public static final class Defaults implements ConfigProvider<VideoCaptureConfig<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VideoCaptureConfig f2838a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Range f2839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Range f2840c;

        static {
            StreamUseCase streamUseCase = StreamUseCase.VIDEO_RECORD;
            m51 m51Var = new m51();
            f2839b = new Range(30, 30);
            f2840c = new Range(120, 120);
            DynamicRange dynamicRange = DynamicRange.d;
            Builder builder = new Builder(m51Var);
            Config.Option option = UseCaseConfig.y;
            MutableOptionsBundle mutableOptionsBundle = builder.f2837a;
            mutableOptionsBundle.o(option, 5);
            mutableOptionsBundle.o(UseCaseConfig.I, streamUseCase);
            mutableOptionsBundle.o(VideoCaptureConfig.O, VideoEncoderInfoImpl.f3078c);
            mutableOptionsBundle.o(ImageInputConfig.f2305j, dynamicRange);
            f2838a = new VideoCaptureConfig(OptionsBundle.c0(mutableOptionsBundle));
        }
    }

    public static class SourceStreamRequirementObserver implements Observable.Observer<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CameraControlInternal f2841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2842b;

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void a(Object obj) {
            Preconditions.f("SourceStreamRequirementObserver can be updated from main thread only", Threads.b());
            boolean zEquals = Boolean.TRUE.equals((Boolean) obj);
            if (this.f2842b == zEquals) {
                return;
            }
            this.f2842b = zEquals;
            CameraControlInternal cameraControlInternal = this.f2841a;
            if (cameraControlInternal == null) {
                Logger.c(3, "VideoCapture");
            } else if (zEquals) {
                cameraControlInternal.f();
            } else {
                cameraControlInternal.a();
            }
        }

        public final void b() {
            Preconditions.f("SourceStreamRequirementObserver can be closed from main thread only", Threads.b());
            Logger.c(3, "VideoCapture");
            CameraControlInternal cameraControlInternal = this.f2841a;
            if (cameraControlInternal == null) {
                Logger.c(3, "VideoCapture");
                return;
            }
            if (this.f2842b) {
                this.f2842b = false;
                if (cameraControlInternal != null) {
                    cameraControlInternal.a();
                } else {
                    Logger.c(3, "VideoCapture");
                }
            }
            this.f2841a = null;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void onError(Throwable th) {
            Logger.c(5, "VideoCapture");
        }
    }

    public VideoCapture(VideoCaptureConfig videoCaptureConfig) {
        super(videoCaptureConfig);
        this.s = StreamInfo.f2826a;
        this.t = new SessionConfig.Builder();
        this.u = null;
        this.w = VideoOutput.SourceState.INACTIVE;
        this.A = false;
        this.D = Collections.EMPTY_MAP;
        this.E = new Observable.Observer<StreamInfo>() { // from class: androidx.camera.video.VideoCapture.1
            @Override // androidx.camera.core.impl.Observable.Observer
            public final void a(Object obj) {
                StreamInfo streamInfo = (StreamInfo) obj;
                if (streamInfo == null) {
                    md.n("StreamInfo can't be null");
                    return;
                }
                VideoCapture videoCapture = VideoCapture.this;
                if (videoCapture.w == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                Objects.toString(videoCapture.s);
                streamInfo.toString();
                Logger.c(3, "VideoCapture");
                StreamInfo streamInfo2 = videoCapture.s;
                videoCapture.s = streamInfo;
                StreamSpec streamSpec = videoCapture.f1996i;
                streamSpec.getClass();
                int i2 = ((AutoValue_StreamInfo) streamInfo2).d;
                AutoValue_StreamInfo autoValue_StreamInfo = (AutoValue_StreamInfo) streamInfo;
                int i3 = autoValue_StreamInfo.d;
                Set set = StreamInfo.f2827b;
                if ((!set.contains(Integer.valueOf(i2)) && !set.contains(Integer.valueOf(i3)) && i2 != i3) || (videoCapture.A && ((AutoValue_StreamInfo) streamInfo2).f2747f != null && autoValue_StreamInfo.f2747f == null)) {
                    videoCapture.M();
                    return;
                }
                AutoValue_StreamInfo autoValue_StreamInfo2 = (AutoValue_StreamInfo) streamInfo2;
                int i4 = autoValue_StreamInfo2.d;
                if ((i4 != -1 && i3 == -1) || (i4 == -1 && i3 != -1)) {
                    videoCapture.G(videoCapture.t, streamInfo, streamSpec);
                    Object[] objArr = {videoCapture.t.k()};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList.add(obj2);
                    videoCapture.D(Collections.unmodifiableList(arrayList));
                    videoCapture.q();
                    return;
                }
                if (autoValue_StreamInfo2.f2746e != autoValue_StreamInfo.f2746e) {
                    videoCapture.G(videoCapture.t, streamInfo, streamSpec);
                    Object[] objArr2 = {videoCapture.t.k()};
                    ArrayList arrayList2 = new ArrayList(1);
                    Object obj3 = objArr2[0];
                    Objects.requireNonNull(obj3);
                    arrayList2.add(obj3);
                    videoCapture.D(Collections.unmodifiableList(arrayList2));
                    Iterator it = videoCapture.f1991b.iterator();
                    while (it.hasNext()) {
                        ((UseCase.StateChangeCallback) it.next()).e(videoCapture);
                    }
                }
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public final void onError(Throwable th) {
                Logger.c(5, "VideoCapture");
            }
        };
    }

    public static void E(HashSet hashSet, int i2, int i3, Size size, VideoEncoderInfo videoEncoderInfo) {
        if (i2 > size.getWidth() || i3 > size.getHeight()) {
            return;
        }
        try {
            hashSet.add(new Size(i2, ((Integer) videoEncoderInfo.h(i2).clamp(Integer.valueOf(i3))).intValue()));
        } catch (IllegalArgumentException unused) {
            Logger.c(5, "VideoCapture");
        }
        try {
            hashSet.add(new Size(((Integer) videoEncoderInfo.b(i3).clamp(Integer.valueOf(i2))).intValue(), i3));
        } catch (IllegalArgumentException unused2) {
            Logger.c(5, "VideoCapture");
        }
    }

    public static int F(boolean z, int i2, int i3, Range range) {
        int i4 = i2 % i3;
        if (i4 != 0) {
            i2 = z ? i2 - i4 : i2 + (i3 - i4);
        }
        return ((Integer) range.clamp(Integer.valueOf(i2))).intValue();
    }

    public static VideoEncoderInfo N(VideoEncoderInfo.Finder finder, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, MediaSpec mediaSpec, DynamicRange dynamicRange) {
        VideoEncoderInfo videoEncoderInfoFind = finder.find(VideoConfigUtil.c(mediaSpec, dynamicRange, videoValidatedEncoderProfilesProxy).a());
        if (videoEncoderInfoFind != null) {
            return VideoEncoderInfoWrapper.k(videoEncoderInfoFind, videoValidatedEncoderProfilesProxy != null ? videoValidatedEncoderProfilesProxy.g().k() : null);
        }
        Logger.c(5, "VideoCapture");
        return null;
    }

    @Override // androidx.camera.core.UseCase
    public final void B(Rect rect) {
        this.f1998k = rect;
        O();
    }

    public final void G(SessionConfig.Builder builder, StreamInfo streamInfo, StreamSpec streamSpec) {
        DeferrableSurface deferrableSurface;
        boolean z = ((AutoValue_StreamInfo) streamInfo).d == -1;
        final boolean z2 = ((AutoValue_StreamInfo) streamInfo).f2746e == StreamInfo.StreamState.ACTIVE;
        if (z && z2) {
            md.k("Unexpected stream state, stream is error but active");
            return;
        }
        builder.l();
        DynamicRange dynamicRangeB = streamSpec.b();
        if (!z && (deferrableSurface = this.q) != null) {
            if (z2) {
                builder.i(deferrableSurface, dynamicRangeB, -1);
            } else {
                builder.f(deferrableSurface, dynamicRangeB);
            }
        }
        ListenableFuture listenableFuture = this.u;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.c(3, "VideoCapture");
        }
        final ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new i(this, builder));
        this.u = listenableFutureA;
        Futures.a(listenableFutureA, new FutureCallback<Void>() { // from class: androidx.camera.video.VideoCapture.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                if (th instanceof CancellationException) {
                    return;
                }
                Logger.b("VideoCapture");
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                VideoOutput.SourceState sourceState;
                VideoCapture videoCapture = VideoCapture.this;
                if (listenableFutureA != videoCapture.u || (sourceState = videoCapture.w) == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                VideoOutput.SourceState sourceState2 = z2 ? VideoOutput.SourceState.ACTIVE_STREAMING : VideoOutput.SourceState.ACTIVE_NON_STREAMING;
                if (sourceState2 != sourceState) {
                    videoCapture.w = sourceState2;
                    videoCapture.K().d(sourceState2);
                }
            }
        }, CameraXExecutors.c());
    }

    public final void H() {
        Threads.a();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.C;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
            this.C = null;
        }
        DeferrableSurface deferrableSurface = this.q;
        if (deferrableSurface != null) {
            deferrableSurface.a();
            this.q = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.x;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.b();
            this.x = null;
        }
        SurfaceEdge surfaceEdge = this.r;
        if (surfaceEdge != null) {
            surfaceEdge.c();
            this.r = null;
        }
        this.y = null;
        this.v = null;
        this.s = StreamInfo.f2826a;
        this.z = 0;
        this.A = false;
    }

    public final SessionConfig.Builder I(VideoCaptureConfig videoCaptureConfig, StreamSpec streamSpec) {
        Object obj;
        CameraInternal cameraInternal;
        DynamicRange dynamicRange;
        int i2;
        Rect rect;
        Size size;
        SurfaceProcessorNode surfaceProcessorNode;
        boolean z;
        VideoCaptureConfig videoCaptureConfig2;
        VideoCapture<T> videoCapture = this;
        Threads.a();
        CameraInternal cameraInternalC = videoCapture.c();
        cameraInternalC.getClass();
        Size sizeF = streamSpec.f();
        f31 f31Var = new f31(videoCapture, 5);
        Range rangeC = streamSpec.c();
        if (Objects.equals(rangeC, StreamSpec.f2348a)) {
            rangeC = streamSpec.g() == 1 ? Defaults.f2840c : Defaults.f2839b;
        }
        Range range = rangeC;
        ListenableFuture listenableFutureA = videoCapture.K().b().a();
        if (listenableFutureA.isDone()) {
            try {
                obj = listenableFutureA.get();
            } catch (InterruptedException | ExecutionException e2) {
                bm.i(e2);
                return null;
            }
        } else {
            obj = null;
        }
        MediaSpec mediaSpec = (MediaSpec) obj;
        Objects.requireNonNull(mediaSpec);
        int iG = streamSpec.g();
        VideoCapabilities videoCapabilitiesE = videoCapture.K().e(cameraInternalC.b(), iG);
        DynamicRange dynamicRangeB = streamSpec.b();
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyB = videoCapabilitiesE.b(sizeF, dynamicRangeB);
        VideoEncoderInfo.Finder finder = (VideoEncoderInfo.Finder) videoCaptureConfig.a(VideoCaptureConfig.O);
        Objects.requireNonNull(finder);
        VideoEncoderInfo videoEncoderInfoN = N(finder, videoValidatedEncoderProfilesProxyB, mediaSpec, dynamicRangeB);
        videoCapture.z = videoCapture.J(cameraInternalC);
        Rect rect2 = videoCapture.f1998k;
        if (rect2 == null) {
            rect2 = new Rect(0, 0, sizeF.getWidth(), sizeF.getHeight());
        }
        if (videoEncoderInfoN == null || videoEncoderInfoN.e(rect2.width(), rect2.height())) {
            cameraInternal = cameraInternalC;
            dynamicRange = dynamicRangeB;
        } else {
            String.format("Adjust cropRect %s by width/height alignment %d/%d and supported widths %s / supported heights %s", TransformUtils.h(rect2), Integer.valueOf(videoEncoderInfoN.f()), Integer.valueOf(videoEncoderInfoN.c()), videoEncoderInfoN.i(), videoEncoderInfoN.j());
            Logger.c(3, "VideoCapture");
            VideoEncoderInfo swappedVideoEncoderInfo = (!(videoEncoderInfoN.i().contains(Integer.valueOf(rect2.width())) && videoEncoderInfoN.j().contains(Integer.valueOf(rect2.height()))) && videoEncoderInfoN.a() && videoEncoderInfoN.j().contains(Integer.valueOf(rect2.width())) && videoEncoderInfoN.i().contains(Integer.valueOf(rect2.height()))) ? new SwappedVideoEncoderInfo(videoEncoderInfoN) : videoEncoderInfoN;
            int iF = swappedVideoEncoderInfo.f();
            int iC = swappedVideoEncoderInfo.c();
            Range rangeI = swappedVideoEncoderInfo.i();
            Range rangeJ = swappedVideoEncoderInfo.j();
            cameraInternal = cameraInternalC;
            int iF2 = F(true, rect2.width(), iF, rangeI);
            dynamicRange = dynamicRangeB;
            int iF3 = F(false, rect2.width(), iF, rangeI);
            int iF4 = F(true, rect2.height(), iC, rangeJ);
            int iF5 = F(false, rect2.height(), iC, rangeJ);
            HashSet hashSet = new HashSet();
            E(hashSet, iF2, iF4, sizeF, swappedVideoEncoderInfo);
            E(hashSet, iF2, iF5, sizeF, swappedVideoEncoderInfo);
            E(hashSet, iF3, iF4, sizeF, swappedVideoEncoderInfo);
            E(hashSet, iF3, iF5, sizeF, swappedVideoEncoderInfo);
            if (hashSet.isEmpty()) {
                Logger.c(5, "VideoCapture");
            } else {
                ArrayList arrayList = new ArrayList(hashSet);
                arrayList.toString();
                Logger.c(3, "VideoCapture");
                Collections.sort(arrayList, new xm(rect2, 5));
                arrayList.toString();
                Logger.c(3, "VideoCapture");
                Size size2 = (Size) arrayList.get(0);
                int width = size2.getWidth();
                int height = size2.getHeight();
                if (width == rect2.width() && height == rect2.height()) {
                    Logger.c(3, "VideoCapture");
                } else {
                    Preconditions.f(null, width % 2 == 0 && height % 2 == 0 && width <= sizeF.getWidth() && height <= sizeF.getHeight());
                    Rect rect3 = new Rect(rect2);
                    if (width != rect2.width()) {
                        int iMax = Math.max(0, rect2.centerX() - (width / 2));
                        rect3.left = iMax;
                        int i3 = iMax + width;
                        rect3.right = i3;
                        if (i3 > sizeF.getWidth()) {
                            int width2 = sizeF.getWidth();
                            rect3.right = width2;
                            rect3.left = width2 - width;
                        }
                    }
                    if (height != rect2.height()) {
                        int iMax2 = Math.max(0, rect2.centerY() - (height / 2));
                        rect3.top = iMax2;
                        int i4 = iMax2 + height;
                        rect3.bottom = i4;
                        if (i4 > sizeF.getHeight()) {
                            int height2 = sizeF.getHeight();
                            rect3.bottom = height2;
                            rect3.top = height2 - height;
                        }
                    }
                    TransformUtils.h(rect2);
                    TransformUtils.h(rect3);
                    Logger.c(3, "VideoCapture");
                    rect2 = rect3;
                }
            }
        }
        int i5 = videoCapture.z;
        if (videoCapture.P()) {
            SurfaceRequest.TransformationInfo transformationInfo = ((AutoValue_StreamInfo) videoCapture.s).f2747f;
            transformationInfo.getClass();
            Size sizeI = TransformUtils.i(TransformUtils.g(transformationInfo.a()), i5);
            i2 = 0;
            rect = new Rect(0, 0, sizeI.getWidth(), sizeI.getHeight());
        } else {
            i2 = 0;
            rect = rect2;
        }
        videoCapture.y = rect;
        if (!videoCapture.P() || rect.equals(rect2)) {
            size = sizeF;
        } else {
            float fHeight = rect.height() / rect2.height();
            size = new Size((int) Math.ceil(sizeF.getWidth() * fHeight), (int) Math.ceil(sizeF.getHeight() * fHeight));
        }
        if (videoCapture.P()) {
            videoCapture.A = true;
        }
        Rect rect4 = videoCapture.y;
        int i6 = videoCapture.z;
        CameraInternal cameraInternal2 = cameraInternal;
        DynamicRange dynamicRange2 = dynamicRange;
        boolean zL = videoCapture.L(cameraInternal2, videoCaptureConfig, iG, rect4, sizeF, dynamicRange2);
        if (((SizeCannotEncodeVideoQuirk) DeviceQuirks.f2947a.b(SizeCannotEncodeVideoQuirk.class)) != null) {
            if (!zL) {
                i6 = i2;
            }
            Size sizeI2 = TransformUtils.i(TransformUtils.g(rect4), i6);
            if ((("motorola".equalsIgnoreCase(Build.BRAND) && "moto c".equalsIgnoreCase(Build.MODEL)) ? new HashSet(Collections.singletonList(new Size(Sink.Video.MAX_DIMENSION_LOW, Sink.Video.MAX_DIMENSION_HIGH))) : Collections.EMPTY_SET).contains(sizeI2)) {
                int iC2 = videoEncoderInfoN != null ? videoEncoderInfoN.c() / 2 : 8;
                Rect rect5 = new Rect(rect4);
                if (rect4.width() == sizeI2.getHeight()) {
                    rect5.left += iC2;
                    rect5.right -= iC2;
                } else {
                    rect5.top += iC2;
                    rect5.bottom -= iC2;
                }
                rect4 = rect5;
            }
        }
        videoCapture.y = rect4;
        if (videoCapture.L(cameraInternal2, videoCaptureConfig, iG, rect4, sizeF, dynamicRange2)) {
            Logger.c(3, "VideoCapture");
            CameraInternal cameraInternalC2 = videoCapture.c();
            Objects.requireNonNull(cameraInternalC2);
            surfaceProcessorNode = new SurfaceProcessorNode(cameraInternalC2, new DefaultSurfaceProcessor(dynamicRange2));
        } else {
            surfaceProcessorNode = null;
        }
        videoCapture.x = surfaceProcessorNode;
        boolean z2 = (cameraInternal2.p() && videoCapture.x == null) ? false : true;
        Timebase timebaseR = (videoCapture.x == null && cameraInternal2.p()) ? Timebase.UPTIME : cameraInternal2.k().r();
        Objects.toString(cameraInternal2.k().r());
        Objects.toString(timebaseR);
        Logger.c(3, "VideoCapture");
        StreamSpec.Builder builderI = streamSpec.i();
        builderI.f(size);
        builderI.c(range);
        StreamSpec streamSpecA = builderI.a();
        Preconditions.f(null, videoCapture.r == null);
        SurfaceEdge surfaceEdge = new SurfaceEdge(2, 34, streamSpecA, videoCapture.l, cameraInternal2.p(), videoCapture.y, videoCapture.z, ((ImageOutputConfig) videoCapture.f1995h).b0(), cameraInternal2.p() && videoCapture.n(cameraInternal2));
        videoCapture.r = surfaceEdge;
        surfaceEdge.a(f31Var);
        SurfaceProcessorNode surfaceProcessorNode2 = videoCapture.x;
        SurfaceEdge surfaceEdge2 = videoCapture.r;
        if (surfaceProcessorNode2 != null) {
            int i7 = surfaceEdge2.f2554f;
            int i8 = surfaceEdge2.f2550a;
            Rect rect6 = surfaceEdge2.d;
            OutConfig outConfigH = OutConfig.h(i7, i8, rect6, TransformUtils.i(TransformUtils.g(rect6), surfaceEdge2.f2556i), surfaceEdge2.f2556i, surfaceEdge2.f2553e);
            SurfaceEdge surfaceEdge3 = videoCapture.x.c(SurfaceProcessorNode.In.c(videoCapture.r, Collections.singletonList(outConfigH))).get(outConfigH);
            Objects.requireNonNull(surfaceEdge3);
            z = z2;
            videoCapture = this;
            videoCaptureConfig2 = videoCaptureConfig;
            surfaceEdge3.a(new oy0(2, this, surfaceEdge3, cameraInternal2, videoCaptureConfig, timebaseR, z));
            videoCapture.v = surfaceEdge3.d(cameraInternal2, true);
            SurfaceEdge surfaceEdge4 = videoCapture.r;
            surfaceEdge4.getClass();
            Threads.a();
            surfaceEdge4.b();
            Preconditions.f("Consumer can only be linked once.", !surfaceEdge4.f2557j);
            surfaceEdge4.f2557j = true;
            SurfaceEdge.SettableSurface settableSurface = surfaceEdge4.l;
            videoCapture.q = settableSurface;
            Futures.h(settableSurface.f2290e).addListener(new w21(videoCapture, settableSurface, 11), CameraXExecutors.c());
        } else {
            z = z2;
            videoCaptureConfig2 = videoCaptureConfig;
            SurfaceRequest surfaceRequestD = surfaceEdge2.d(cameraInternal2, true);
            videoCapture.v = surfaceRequestD;
            videoCapture.q = surfaceRequestD.m;
        }
        VideoOutput videoOutput = (VideoOutput) videoCaptureConfig2.a(VideoCaptureConfig.N);
        Objects.requireNonNull(videoOutput);
        videoOutput.g(videoCapture.v, timebaseR, z);
        videoCapture.O();
        videoCapture.q.f2294j = MediaCodec.class;
        SessionConfig.Builder builderM = SessionConfig.Builder.m(videoCaptureConfig2, streamSpec.f());
        builderM.v(iG);
        videoCapture.a(builderM, streamSpec);
        builderM.x(videoCaptureConfig2.w());
        SessionConfig.CloseableErrorListener closeableErrorListener = videoCapture.C;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new f20(videoCapture, 3));
        videoCapture.C = closeableErrorListener2;
        builderM.p(closeableErrorListener2);
        if (streamSpec.d() != null) {
            builderM.e(streamSpec.d());
        }
        return builderM;
    }

    public final int J(CameraInternal cameraInternal) {
        boolean zN = n(cameraInternal);
        int iH = h(cameraInternal, zN);
        if (!P()) {
            return iH;
        }
        SurfaceRequest.TransformationInfo transformationInfo = ((AutoValue_StreamInfo) this.s).f2747f;
        Objects.requireNonNull(transformationInfo);
        int iB = transformationInfo.b();
        if (zN != transformationInfo.f()) {
            iB = -iB;
        }
        return TransformUtils.k(iH - iB);
    }

    public final VideoOutput K() {
        VideoOutput videoOutput = (VideoOutput) ((VideoCaptureConfig) this.f1995h).a(VideoCaptureConfig.N);
        Objects.requireNonNull(videoOutput);
        return videoOutput;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:19:0x004e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0078  */
    public final boolean L(CameraInternal cameraInternal, VideoCaptureConfig videoCaptureConfig, int i2, Rect rect, Size size, DynamicRange dynamicRange) {
        if (i2 != 1) {
            if (cameraInternal.p()) {
                Boolean bool = (Boolean) videoCaptureConfig.f(VideoCaptureConfig.P, Boolean.FALSE);
                Objects.requireNonNull(bool);
                if (!bool.booleanValue()) {
                    if (cameraInternal.p() || (!SurfaceProcessingQuirk.e(DeviceQuirks.f2947a) && !SurfaceProcessingQuirk.e(cameraInternal.k().j()))) {
                        HdrRepeatingRequestFailureQuirk hdrRepeatingRequestFailureQuirk = (HdrRepeatingRequestFailureQuirk) DeviceQuirks.f2947a.b(HdrRepeatingRequestFailureQuirk.class);
                        if (!cameraInternal.p() && hdrRepeatingRequestFailureQuirk != null) {
                            boolean z = dynamicRange != DynamicRange.d;
                            if (!"samsung".equalsIgnoreCase(Build.BRAND) || !"pa3q".equalsIgnoreCase(Build.DEVICE) || !z) {
                                if (size.getWidth() == rect.width()) {
                                }
                            }
                        } else if (size.getWidth() == rect.width() || size.getHeight() != rect.height() || ((cameraInternal.p() && n(cameraInternal)) || P())) {
                        }
                    }
                }
            } else if (cameraInternal.p()) {
                HdrRepeatingRequestFailureQuirk hdrRepeatingRequestFailureQuirk2 = (HdrRepeatingRequestFailureQuirk) DeviceQuirks.f2947a.b(HdrRepeatingRequestFailureQuirk.class);
                if (!cameraInternal.p()) {
                    if (size.getWidth() == rect.width()) {
                    }
                } else if (size.getWidth() == rect.width()) {
                }
            } else {
                HdrRepeatingRequestFailureQuirk hdrRepeatingRequestFailureQuirk3 = (HdrRepeatingRequestFailureQuirk) DeviceQuirks.f2947a.b(HdrRepeatingRequestFailureQuirk.class);
                if (!cameraInternal.p()) {
                    if (size.getWidth() == rect.width()) {
                    }
                } else if (size.getWidth() == rect.width()) {
                }
            }
            return true;
        }
        return false;
    }

    public final void M() {
        if (c() == null) {
            return;
        }
        H();
        VideoCaptureConfig videoCaptureConfig = (VideoCaptureConfig) this.f1995h;
        StreamSpec streamSpec = this.f1996i;
        streamSpec.getClass();
        SessionConfig.Builder builderI = I(videoCaptureConfig, streamSpec);
        this.t = builderI;
        G(builderI, this.s, this.f1996i);
        Object[] objArr = {this.t.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        q();
    }

    public final void O() {
        CameraInternal cameraInternalC = c();
        SurfaceEdge surfaceEdge = this.r;
        if (cameraInternalC == null || surfaceEdge == null) {
            return;
        }
        int iJ = J(cameraInternalC);
        this.z = iJ;
        Threads.c(new e21(surfaceEdge, iJ, ((ImageOutputConfig) this.f1995h).b0()));
    }

    public final boolean P() {
        return ((AutoValue_StreamInfo) this.s).f2747f != null;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig f(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        F.getClass();
        VideoCaptureConfig videoCaptureConfig = Defaults.f2838a;
        Config configA = useCaseConfigFactory.a(videoCaptureConfig.S(), 1);
        if (z) {
            configA = Config.U(configA, videoCaptureConfig);
        }
        if (configA == null) {
            return null;
        }
        return new VideoCaptureConfig(OptionsBundle.c0(((Builder) m(configA)).f2837a));
    }

    @Override // androidx.camera.core.UseCase
    public final Set j(CameraInfoInternal cameraInfoInternal) {
        return K().e(cameraInfoInternal, 0).a();
    }

    @Override // androidx.camera.core.UseCase
    public final HashSet k() {
        HashSet hashSet = new HashSet();
        hashSet.add(2);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder m(Config config) {
        return new Builder(MutableOptionsBundle.e0(config));
    }

    public final String toString() {
        return "VideoCapture:".concat(g());
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00fb  */
    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig u(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        Object obj;
        QualitySelector qualitySelector;
        Quality quality;
        MediaSpec mediaSpec;
        ArrayList<Quality> arrayList;
        LinkedHashMap linkedHashMap;
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyB;
        MediaSpec mediaSpec2;
        VideoEncoderInfo videoEncoderInfoN;
        Iterator it;
        Map.Entry entry;
        DynamicRange dynamicRange;
        ListenableFuture listenableFutureA = K().b().a();
        if (listenableFutureA.isDone()) {
            try {
                obj = listenableFutureA.get();
            } catch (InterruptedException | ExecutionException e2) {
                bm.i(e2);
                return null;
            }
        } else {
            obj = null;
        }
        MediaSpec mediaSpec3 = (MediaSpec) obj;
        if (mediaSpec3 == null) {
            md.n("MediaSpec can't be null");
            return null;
        }
        AutoValue_VideoSpec autoValue_VideoSpec = (AutoValue_VideoSpec) ((AutoValue_MediaSpec) mediaSpec3).f2729a;
        QualitySelector qualitySelector2 = autoValue_VideoSpec.f2748c;
        VideoCaptureConfig videoCaptureConfig = (VideoCaptureConfig) builder.d();
        if (videoCaptureConfig.b(ImageOutputConfig.t)) {
            Preconditions.b(qualitySelector2 == VideoSpec.f2856b, "Custom ordered resolutions and QualitySelector can't both be set");
        } else {
            DynamicRange dynamicRangeI = videoCaptureConfig.I();
            int iT = videoCaptureConfig.T();
            Range rangeY = videoCaptureConfig.y(StreamSpec.f2348a);
            Objects.requireNonNull(rangeY);
            VideoCapabilities videoCapabilitiesE = K().e(cameraInfoInternal, iT);
            dynamicRangeI.toString();
            rangeY.toString();
            Logger.c(3, "VideoCapture");
            ArrayList arrayListC = videoCapabilitiesE.c(dynamicRangeI);
            Objects.toString(arrayListC);
            Logger.c(3, "VideoCapture");
            if (arrayListC.isEmpty() && iT == 1) {
                md.n("No supported quality on the device for high-speed capture.");
                return null;
            }
            if (arrayListC.isEmpty()) {
                Logger.c(5, "VideoCapture");
            } else {
                qualitySelector2.getClass();
                if (arrayListC.isEmpty()) {
                    Logger.c(5, "QualitySelector");
                    arrayList = new ArrayList();
                    mediaSpec = mediaSpec3;
                    qualitySelector = qualitySelector2;
                } else {
                    arrayListC.toString();
                    Logger.c(3, "QualitySelector");
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    for (Quality quality2 : qualitySelector2.f2776a) {
                        if (quality2 == Quality.f2770f) {
                            linkedHashSet.addAll(arrayListC);
                            break;
                        }
                        if (quality2 == Quality.f2769e) {
                            ArrayList arrayList2 = new ArrayList(arrayListC);
                            Collections.reverse(arrayList2);
                            linkedHashSet.addAll(arrayList2);
                            break;
                        }
                        if (arrayListC.contains(quality2)) {
                            linkedHashSet.add(quality2);
                        } else {
                            Objects.toString(quality2);
                            Logger.c(5, "QualitySelector");
                        }
                    }
                    FallbackStrategy fallbackStrategy = qualitySelector2.f2777b;
                    if (arrayListC.isEmpty() || linkedHashSet.containsAll(arrayListC)) {
                        mediaSpec = mediaSpec3;
                        qualitySelector = qualitySelector2;
                    } else {
                        Objects.toString(fallbackStrategy);
                        Logger.c(3, "QualitySelector");
                        if (fallbackStrategy == FallbackStrategy.f2757a) {
                            mediaSpec = mediaSpec3;
                            qualitySelector = qualitySelector2;
                        } else {
                            Preconditions.f("Currently only support type RuleStrategy", Objects.nonNull(fallbackStrategy));
                            FallbackStrategy.RuleStrategy ruleStrategy = (FallbackStrategy.RuleStrategy) fallbackStrategy;
                            qualitySelector = qualitySelector2;
                            ArrayList arrayList3 = new ArrayList(Quality.f2772i);
                            if (((AutoValue_FallbackStrategy_RuleStrategy) ruleStrategy).f2721b == Quality.f2770f) {
                                quality = (Quality) arrayList3.get(0);
                            } else {
                                quality = ((AutoValue_FallbackStrategy_RuleStrategy) ruleStrategy).f2721b;
                                if (quality == Quality.f2769e) {
                                    quality = (Quality) cj.c(1, arrayList3);
                                }
                            }
                            int iIndexOf = arrayList3.indexOf(quality);
                            Quality quality3 = quality;
                            Preconditions.f(null, iIndexOf != -1);
                            ArrayList arrayList4 = new ArrayList();
                            int i2 = iIndexOf - 1;
                            while (i2 >= 0) {
                                int i3 = i2;
                                Quality quality4 = (Quality) arrayList3.get(i2);
                                if (arrayListC.contains(quality4)) {
                                    arrayList4.add(quality4);
                                }
                                i2 = i3 - 1;
                            }
                            ArrayList arrayList5 = new ArrayList();
                            mediaSpec = mediaSpec3;
                            for (int i4 = iIndexOf + 1; i4 < arrayList3.size(); i4++) {
                                Quality quality5 = (Quality) arrayList3.get(i4);
                                if (arrayListC.contains(quality5)) {
                                    arrayList5.add(quality5);
                                }
                            }
                            arrayList3.toString();
                            Objects.toString(quality3);
                            arrayList4.toString();
                            arrayList5.toString();
                            Logger.c(3, "QualitySelector");
                            int i5 = ((AutoValue_FallbackStrategy_RuleStrategy) ruleStrategy).f2722c;
                            if (i5 != 0) {
                                if (i5 == 1) {
                                    linkedHashSet.addAll(arrayList4);
                                    linkedHashSet.addAll(arrayList5);
                                } else if (i5 == 2) {
                                    linkedHashSet.addAll(arrayList4);
                                } else {
                                    if (i5 != 3) {
                                        no0.t(fallbackStrategy, "Unhandled fallback strategy: ");
                                        return null;
                                    }
                                    linkedHashSet.addAll(arrayList5);
                                    linkedHashSet.addAll(arrayList4);
                                }
                            }
                        }
                    }
                    arrayList = new ArrayList(linkedHashSet);
                }
                arrayList.toString();
                qualitySelector.toString();
                Logger.c(3, "VideoCapture");
                if (arrayList.isEmpty()) {
                    md.n("Unable to find selected quality");
                    return null;
                }
                VideoEncoderInfo.Finder finder = (VideoEncoderInfo.Finder) videoCaptureConfig.a(VideoCaptureConfig.O);
                Objects.requireNonNull(finder);
                int i6 = autoValue_VideoSpec.f2750f;
                HashMap map = new HashMap();
                for (Quality quality6 : videoCapabilitiesE.c(dynamicRangeI)) {
                    VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyD = videoCapabilitiesE.d(quality6, dynamicRangeI);
                    Objects.requireNonNull(videoValidatedEncoderProfilesProxyD);
                    map.put(quality6, videoValidatedEncoderProfilesProxyD.g().k());
                }
                QualityRatioToResolutionsTable qualityRatioToResolutionsTable = new QualityRatioToResolutionsTable(iT == 1 ? StreamSpec.f2348a.equals(rangeY) ? cameraInfoInternal.v() : cameraInfoInternal.p(rangeY) : cameraInfoInternal.k(this.f1995h.m()), map);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Quality quality7 : arrayList) {
                    List list = (List) qualityRatioToResolutionsTable.f2775a.get(new AutoValue_QualityRatioToResolutionsTable_QualityRatio(quality7, i6));
                    linkedHashMap2.put(quality7, list != null ? new ArrayList(list) : new ArrayList(0));
                }
                if (linkedHashMap2.isEmpty()) {
                    linkedHashMap = new LinkedHashMap();
                } else {
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    Iterator it2 = linkedHashMap2.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry2 = (Map.Entry) it2.next();
                        ArrayList arrayList6 = new ArrayList((Collection) entry2.getValue());
                        Iterator it3 = arrayList6.iterator();
                        while (it3.hasNext()) {
                            Size size = (Size) it3.next();
                            if (!map.containsValue(size) && (videoValidatedEncoderProfilesProxyB = videoCapabilitiesE.b(size, dynamicRangeI)) != null) {
                                if (dynamicRangeI.b()) {
                                    mediaSpec2 = mediaSpec;
                                    videoEncoderInfoN = N(finder, videoValidatedEncoderProfilesProxyB, mediaSpec2, dynamicRangeI);
                                } else {
                                    mediaSpec2 = mediaSpec;
                                    int i7 = Integer.MIN_VALUE;
                                    VideoEncoderInfo videoEncoderInfo = null;
                                    for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : videoValidatedEncoderProfilesProxyB.b()) {
                                        HashMap map2 = map;
                                        if (DynamicRangeUtil.a(videoProfileProxy, dynamicRangeI)) {
                                            int iG = videoProfileProxy.g();
                                            it = it2;
                                            HashMap map3 = DynamicRangeUtil.d;
                                            entry = entry2;
                                            Preconditions.a(map3.containsKey(Integer.valueOf(iG)));
                                            Integer num = (Integer) map3.get(Integer.valueOf(iG));
                                            Objects.requireNonNull(num);
                                            int iIntValue = num.intValue();
                                            int iB = videoProfileProxy.b();
                                            HashMap map4 = DynamicRangeUtil.f3105c;
                                            dynamicRange = dynamicRangeI;
                                            Preconditions.a(map4.containsKey(Integer.valueOf(iB)));
                                            Integer num2 = (Integer) map4.get(Integer.valueOf(iB));
                                            Objects.requireNonNull(num2);
                                            VideoEncoderInfo videoEncoderInfoN2 = N(finder, videoValidatedEncoderProfilesProxyB, mediaSpec2, new DynamicRange(iIntValue, num2.intValue()));
                                            if (videoEncoderInfoN2 != null) {
                                                int iIntValue2 = ((Integer) videoEncoderInfoN2.i().getUpper()).intValue();
                                                int iIntValue3 = ((Integer) videoEncoderInfoN2.j().getUpper()).intValue();
                                                Size size2 = SizeUtil.f2515a;
                                                int i8 = iIntValue2 * iIntValue3;
                                                if (i8 > i7) {
                                                    videoEncoderInfo = videoEncoderInfoN2;
                                                    i7 = i8;
                                                }
                                            }
                                        } else {
                                            it = it2;
                                            entry = entry2;
                                            dynamicRange = dynamicRangeI;
                                        }
                                        it2 = it;
                                        dynamicRangeI = dynamicRange;
                                        map = map2;
                                        entry2 = entry;
                                    }
                                    videoEncoderInfoN = videoEncoderInfo;
                                }
                                HashMap map5 = map;
                                Iterator it4 = it2;
                                Map.Entry entry3 = entry2;
                                DynamicRange dynamicRange2 = dynamicRangeI;
                                if (videoEncoderInfoN != null && !videoEncoderInfoN.e(size.getWidth(), size.getHeight())) {
                                    it3.remove();
                                }
                                it2 = it4;
                                mediaSpec = mediaSpec2;
                                dynamicRangeI = dynamicRange2;
                                map = map5;
                                entry2 = entry3;
                            }
                        }
                        HashMap map6 = map;
                        Iterator it5 = it2;
                        Map.Entry entry4 = entry2;
                        DynamicRange dynamicRange3 = dynamicRangeI;
                        MediaSpec mediaSpec4 = mediaSpec;
                        if (!arrayList6.isEmpty()) {
                            linkedHashMap3.put((Quality) entry4.getKey(), arrayList6);
                        }
                        it2 = it5;
                        mediaSpec = mediaSpec4;
                        dynamicRangeI = dynamicRange3;
                        map = map6;
                    }
                    linkedHashMap = linkedHashMap3;
                }
                ArrayList arrayList7 = new ArrayList();
                Iterator it6 = linkedHashMap.values().iterator();
                while (it6.hasNext()) {
                    arrayList7.addAll((List) it6.next());
                }
                arrayList7.toString();
                Logger.c(3, "VideoCapture");
                builder.a().o(ImageOutputConfig.t, arrayList7);
            }
        }
        return builder.d();
    }

    @Override // androidx.camera.core.UseCase
    public final void v() {
        this.f1990a = true;
        e();
        Logger.c(3, "VideoCapture");
        StreamSpec streamSpec = this.f1996i;
        if (streamSpec == null || this.v != null) {
            return;
        }
        Observable observableC = K().c();
        Object obj = StreamInfo.f2826a;
        ListenableFuture listenableFutureA = observableC.a();
        if (listenableFutureA.isDone()) {
            try {
                obj = listenableFutureA.get();
            } catch (InterruptedException | ExecutionException e2) {
                bm.i(e2);
                return;
            }
        }
        this.s = (StreamInfo) obj;
        SessionConfig.Builder builderI = I((VideoCaptureConfig) this.f1995h, streamSpec);
        this.t = builderI;
        G(builderI, this.s, streamSpec);
        Object[] objArr = {this.t.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj2 = objArr[0];
        Objects.requireNonNull(obj2);
        arrayList.add(obj2);
        D(Collections.unmodifiableList(arrayList));
        p();
        K().c().b(CameraXExecutors.c(), this.E);
        SourceStreamRequirementObserver sourceStreamRequirementObserver = this.B;
        if (sourceStreamRequirementObserver != null) {
            sourceStreamRequirementObserver.b();
        }
        CameraControlInternal cameraControlInternalD = d();
        SourceStreamRequirementObserver sourceStreamRequirementObserver2 = new SourceStreamRequirementObserver();
        sourceStreamRequirementObserver2.f2842b = false;
        sourceStreamRequirementObserver2.f2841a = cameraControlInternalD;
        this.B = sourceStreamRequirementObserver2;
        K().f().b(CameraXExecutors.c(), this.B);
        VideoOutput.SourceState sourceState = VideoOutput.SourceState.ACTIVE_NON_STREAMING;
        if (sourceState != this.w) {
            this.w = sourceState;
            K().d(sourceState);
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void w() {
        Logger.c(3, "VideoCapture");
        Preconditions.f("VideoCapture can only be detached on the main thread.", Threads.b());
        if (this.B != null) {
            K().f().d(this.B);
            this.B.b();
            this.B = null;
        }
        VideoOutput.SourceState sourceState = VideoOutput.SourceState.INACTIVE;
        if (sourceState != this.w) {
            this.w = sourceState;
            K().d(sourceState);
        }
        K().c().d(this.E);
        ListenableFuture listenableFuture = this.u;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.c(3, "VideoCapture");
        }
        H();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec x(Config config) {
        this.t.e(config);
        Object[] objArr = {this.t.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        StreamSpec streamSpec = this.f1996i;
        Objects.requireNonNull(streamSpec);
        StreamSpec.Builder builderI = streamSpec.i();
        builderI.d(config);
        return builderI.a();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec y(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Objects.toString(streamSpec);
        Objects.toString(streamSpec2);
        Logger.c(3, "VideoCapture");
        ArrayList arrayListP = ((VideoCaptureConfig) this.f1995h).P();
        if (arrayListP != null && !arrayListP.contains(streamSpec.f())) {
            Objects.toString(streamSpec.f());
            arrayListP.toString();
            Logger.c(5, "VideoCapture");
        }
        return streamSpec;
    }

    public static final class Builder<T extends VideoOutput> implements UseCaseConfig.Builder<VideoCapture<T>, VideoCaptureConfig<T>, Builder<T>>, ImageOutputConfig.Builder<Builder<T>>, ImageInputConfig.Builder<Builder<T>>, ThreadConfig.Builder<Builder<T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f2837a;

        public Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.f2837a = mutableOptionsBundle;
            if (!mutableOptionsBundle.M.containsKey(VideoCaptureConfig.N)) {
                md.n("VideoOutput is required");
                throw null;
            }
            Config.Option option = TargetConfig.L;
            Class cls = (Class) mutableOptionsBundle.f(option, null);
            if (cls != null && !cls.equals(VideoCapture.class)) {
                b21.s("Invalid target class configuration for ", this, ": ", cls);
                throw null;
            }
            mutableOptionsBundle.o(UseCaseConfig.E, UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE);
            mutableOptionsBundle.o(option, VideoCapture.class);
            Config.Option option2 = TargetConfig.K;
            if (mutableOptionsBundle.f(option2, null) == null) {
                mutableOptionsBundle.o(option2, VideoCapture.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public final MutableConfig a() {
            return this.f2837a;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object b(int i2) {
            this.f2837a.o(ImageOutputConfig.l, Integer.valueOf(i2));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object c(Size size) {
            throw new UnsupportedOperationException("setTargetResolution is not supported.");
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public final UseCaseConfig d() {
            return new VideoCaptureConfig(OptionsBundle.c0(this.f2837a));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(T t) {
            MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
            mutableOptionsBundleD0.o(VideoCaptureConfig.N, t);
            this(mutableOptionsBundleD0);
        }
    }
}
