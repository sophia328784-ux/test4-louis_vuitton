package com.sightcall.videoplayer.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.widget.Toast;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.videoplayer.R;
import com.sightcall.videoplayer.model.VideoPlayer;
import defpackage.fc;
import defpackage.he0;
import defpackage.ie0;
import defpackage.je0;
import defpackage.ke0;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.ReentrantLock;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Jni;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.util.Dimension;
import net.rtccloud.sdk.util.ScaleType;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoProducerPlayerView extends TextureView implements VideoProducer, MyVideoProducer, TextureView.SurfaceTextureListener, MediaPlayerController {
    private AdvancedAnnotationsWrapper advancedAnnotationsWrapper;
    private VideoPlayerBar bar;
    private Call call;
    private CapabilitiesRepository capabilitiesRepository;
    private final MediaPlayer.OnCompletionListener completionListener;
    private final RectF dst;
    private final MediaPlayer.OnErrorListener errorListener;
    private final MediaPlayer.OnInfoListener infoListener;
    private boolean isPaused;
    private boolean isRendering;
    private boolean isStarted;
    private final ReentrantLock lock;
    private final Matrix matrix;
    private final Dimension measureDim;
    private MediaPlayer mp;
    private MediaPlayerState mpState;
    private Call.Parameters parameters;
    private OnPlayerCallback playerCallback;
    private final MediaPlayer.OnPreparedListener preparedListener;
    private Point previewSize;
    private boolean restored;
    private boolean restoredPaused;
    private int restoredSeekTo;
    private final ScaleType scaleType;
    private SenderHandler senderHandler;
    private Sink.Video sink;
    private boolean snapshotOption;
    private final RectF src;
    private Surface surface;
    private Uri uri;
    private final MediaPlayer.OnVideoSizeChangedListener videoSizeChangedListener;
    private String who;

    public enum MediaPlayerState {
        IDLE,
        PREPARING,
        PREPARED,
        STARTED,
        PAUSED
    }

    public interface OnPlayerCallback {
        void onPlayerPause();

        void onPlayerResume();

        void onPlayerStart();

        void onPlayerStartSeek();

        void onPlayerStop();
    }

    public static class SenderHandler extends Handler {
        public static final int FINISH = 2;
        public static final int SEND = 1;
        private static final int TIMEOUT_PAUSED = 200;
        private Bitmap bmp;
        private final HandlerThread handler;
        private boolean isTeardown;
        private final WeakReference<MyVideoProducerPlayerView> player;
        private long timeout;

        private SenderHandler(HandlerThread handlerThread, MyVideoProducerPlayerView myVideoProducerPlayerView) {
            super(handlerThread.getLooper());
            this.timeout = 30L;
            this.handler = handlerThread;
            this.player = new WeakReference<>(myVideoProducerPlayerView);
        }

        public static SenderHandler create(MyVideoProducerPlayerView myVideoProducerPlayerView) {
            HandlerThread handlerThread = new HandlerThread("VideoPlayerHandlerThread");
            handlerThread.start();
            SenderHandler senderHandler = new SenderHandler(handlerThread, myVideoProducerPlayerView);
            senderHandler.sendEmptyMessage(1);
            return senderHandler;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.isTeardown) {
                return;
            }
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    super.handleMessage(message);
                    return;
                }
                Bitmap bitmap = this.bmp;
                if (bitmap != null) {
                    bitmap.recycle();
                    this.bmp = null;
                }
                this.handler.quit();
                this.player.clear();
                return;
            }
            MyVideoProducerPlayerView myVideoProducerPlayerView = this.player.get();
            if (myVideoProducerPlayerView == null) {
                teardown();
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Sink.Video video = myVideoProducerPlayerView.sink;
            Point point = myVideoProducerPlayerView.previewSize;
            boolean zPush = false;
            try {
                if (myVideoProducerPlayerView.isRendering && video != null && point != null) {
                    int width = myVideoProducerPlayerView.getWidth();
                    int height = myVideoProducerPlayerView.getHeight();
                    float fMin = Math.min(640.0f / Math.max(width, height), 480.0f / Math.min(width, height));
                    int i3 = (int) (width * fMin);
                    int i4 = (int) (height * fMin);
                    Bitmap bitmap2 = this.bmp;
                    if (bitmap2 == null || bitmap2.isRecycled() || this.bmp.getWidth() != i3 || this.bmp.getHeight() != i4) {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
                        this.bmp = bitmapCreateBitmap;
                        this.bmp = myVideoProducerPlayerView.getBitmap(bitmapCreateBitmap);
                    } else {
                        this.bmp = myVideoProducerPlayerView.getBitmap(this.bmp);
                    }
                    zPush = video.push(this.bmp);
                }
            } catch (Exception e2) {
                Logger.INSTANCE.e(e2.getMessage());
            }
            long jMax = myVideoProducerPlayerView.isPaused ? 200L : this.timeout;
            if (zPush) {
                jMax = Math.max(0L, jMax - (SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
            sendEmptyMessageDelayed(1, jMax);
        }

        public void teardown() {
            removeCallbacksAndMessages(null);
            if (this.isTeardown) {
                return;
            }
            sendEmptyMessage(2);
            this.isTeardown = true;
        }

        public void updateTimeout(Call.Parameters parameters) {
            this.timeout = (long) (1000.0f / parameters.videoFramerate());
        }
    }

    public MyVideoProducerPlayerView(Context context) {
        super(context);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.lock = new ReentrantLock();
        this.mpState = MediaPlayerState.IDLE;
        this.measureDim = new Dimension();
        int i2 = 0;
        this.completionListener = new ie0(this, i2);
        this.preparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                Logger logger = Logger.INSTANCE;
                logger.d("onPrepared()");
                MyVideoProducerPlayerView.this.mpState = MediaPlayerState.PREPARED;
                if (!MyVideoProducerPlayerView.this.isStarted || !MyVideoProducerPlayerView.this.isRendering) {
                    MyVideoProducerPlayerView.this.mediaPlayerDestroy();
                    return;
                }
                boolean z = MyVideoProducerPlayerView.this.restored;
                MyVideoProducerPlayerView myVideoProducerPlayerView = MyVideoProducerPlayerView.this;
                if (!z) {
                    myVideoProducerPlayerView.mediaPlayerResume();
                    return;
                }
                logger.d("use restored values (seek:" + myVideoProducerPlayerView.restoredSeekTo + ", paused:" + MyVideoProducerPlayerView.this.restoredPaused + ")");
                MyVideoProducerPlayerView myVideoProducerPlayerView2 = MyVideoProducerPlayerView.this;
                myVideoProducerPlayerView2.seekTo(myVideoProducerPlayerView2.restoredSeekTo);
                boolean z2 = MyVideoProducerPlayerView.this.restoredPaused;
                MyVideoProducerPlayerView myVideoProducerPlayerView3 = MyVideoProducerPlayerView.this;
                if (!z2) {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                } else {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                    MyVideoProducerPlayerView.this.mediaPlayerPause();
                }
            }
        };
        this.errorListener = new je0(this, i2);
        this.infoListener = new ke0();
        this.videoSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.3
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i3, int i4) {
                Logger.INSTANCE.d("onVideoSizeChanged(width:" + i3 + " height:" + i4);
                MyVideoProducerPlayerView.this.previewSize = new Point(i3, i4);
                MyVideoProducerPlayerView.this.postRequestLayout();
            }
        };
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = ViewUtils.whoami(this);
        setSurfaceTextureListener(this);
    }

    private boolean isMediaPlayerReady(MediaPlayer mediaPlayer) {
        MediaPlayerState mediaPlayerState;
        return (mediaPlayer == null || !this.isStarted || !this.isRendering || (mediaPlayerState = this.mpState) == MediaPlayerState.IDLE || mediaPlayerState == MediaPlayerState.PREPARING) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mediaPlayerDestroy$7() {
        this.playerCallback.onPlayerStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mediaPlayerInit$6() {
        this.playerCallback.onPlayerStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mediaPlayerPause$9() {
        this.playerCallback.onPlayerPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mediaPlayerResume$8() {
        this.playerCallback.onPlayerResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(MediaPlayer mediaPlayer) {
        Logger.INSTANCE.d("onCompletion()");
        pause();
        seekTo(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(MediaPlayer mediaPlayer, int i2, int i3) {
        Logger.INSTANCE.d("onError(what:" + i2 + " extra:" + i3);
        onStopProducer();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$4(MediaPlayer mediaPlayer, int i2, int i3) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRendering$0() {
        updateScaling();
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSeek$10() {
        this.playerCallback.onPlayerStartSeek();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRendering$1() {
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mediaPlayerDestroy() {
        Logger.INSTANCE.d("mediaPlayerDestroy()");
        lambda$hideBar$5();
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.teardown();
            this.senderHandler = null;
        }
        MediaPlayer mediaPlayer = this.mp;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mp.reset();
            this.mp.release();
            this.mp = null;
        }
        this.isRendering = false;
        this.isPaused = false;
        this.previewSize = null;
        this.mpState = MediaPlayerState.IDLE;
        DataChannelAction.STOPPED_PLAYER.send();
        post(new he0(this, 5));
    }

    private void mediaPlayerInit() {
        Logger.INSTANCE.d("mediaPlayerInit()");
        try {
            this.mpState = MediaPlayerState.IDLE;
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mp = mediaPlayer;
            mediaPlayer.setVolume(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.mp.setOnCompletionListener(this.completionListener);
            this.mp.setOnPreparedListener(this.preparedListener);
            this.mp.setOnErrorListener(this.errorListener);
            this.mp.setOnInfoListener(this.infoListener);
            this.mp.setOnVideoSizeChangedListener(this.videoSizeChangedListener);
            this.mp.setDataSource(getContext().getApplicationContext(), this.uri);
            this.mp.setSurface(this.surface);
            this.mp.setLooping(false);
            this.mp.prepareAsync();
            this.mpState = MediaPlayerState.PREPARING;
            this.isRendering = true;
            SenderHandler senderHandlerCreate = SenderHandler.create(this);
            this.senderHandler = senderHandlerCreate;
            senderHandlerCreate.updateTimeout(this.parameters);
            DataChannelAction.STARTED_PLAYER.send();
            post(new he0(this, 0));
        } catch (Exception e2) {
            Logger.INSTANCE.e("Error while creating the MediaPlayer", e2);
            this.mpState = MediaPlayerState.IDLE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mediaPlayerPause() {
        Logger.INSTANCE.d("mediaPlayerPause()");
        if (isMediaPlayerReady(this.mp)) {
            this.isPaused = true;
            this.capabilitiesRepository.pauseVideo();
            if (this.mp.isPlaying()) {
                this.mp.pause();
            }
            this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.DrawDrop);
            this.mpState = MediaPlayerState.PAUSED;
            DataChannelAction.PAUSED_PLAYER.send();
            post(new he0(this, 4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mediaPlayerResume() {
        Logger.INSTANCE.d("mediaPlayerResume()");
        if (isMediaPlayerReady(this.mp)) {
            this.isPaused = false;
            this.capabilitiesRepository.resumeVideo();
            if (!this.mp.isPlaying()) {
                try {
                    this.mp.start();
                } catch (RuntimeException unused) {
                    Toast.makeText(getContext(), R.string.universal_call_error_video_file, 0).show();
                    unloadUri();
                    return;
                }
            }
            this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.Pointer);
            this.mpState = MediaPlayerState.STARTED;
            showBar();
            DataChannelAction.RESUMED_PLAYER.send();
            post(new he0(this, 6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postRequestLayout() {
        post(new Runnable() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyVideoProducerPlayerView.this.requestLayout();
            }
        });
    }

    private void restartRendering() {
        Logger.INSTANCE.d("restartRendering()");
        if (this.isStarted && this.isRendering) {
            stopRendering();
            startRendering();
        }
    }

    private void startRendering() {
        Logger.INSTANCE.d("startRendering() " + this.who);
        if (this.surface == null || this.isRendering || this.uri == null) {
            return;
        }
        mediaPlayerInit();
        post(new he0(this, 7));
    }

    private void stopRendering() {
        Logger.INSTANCE.d("stopRendering()");
        if (this.isRendering) {
            mediaPlayerDestroy();
            post(new he0(this, 2));
        }
    }

    private void updateScaling() {
        this.src.right = getWidth();
        this.src.bottom = getHeight();
        Point point = this.previewSize;
        float f2 = point == null ? this.src.right : point.x;
        float f3 = point == null ? this.src.bottom : point.y;
        ScaleType scaleType = this.scaleType;
        RectF rectF = this.dst;
        RectF rectF2 = this.src;
        ViewUtils.applyScalingTo(scaleType, rectF, f2, f3, rectF2.right, rectF2.bottom);
        this.matrix.setRectToRect(this.src, this.dst, Matrix.ScaleToFit.FILL);
        setTransform(this.matrix);
    }

    @Override // com.sightcall.videoplayer.view.MediaPlayerController
    public int getCurrentPosition() {
        if (isMediaPlayerReady(this.mp)) {
            return this.mp.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.sightcall.videoplayer.view.MediaPlayerController
    public int getDuration() {
        if (isMediaPlayerReady(this.mp)) {
            return this.mp.getDuration();
        }
        return 0;
    }

    @Override // com.sightcall.common.MyVideoProducer
    public Point getPreviewSize() {
        return this.previewSize;
    }

    /* JADX INFO: renamed from: hideBar, reason: merged with bridge method [inline-methods] */
    public void lambda$hideBar$5() {
        Logger.INSTANCE.d("hideBar()");
        if (this.bar != null) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                this.bar.hide();
            } else {
                post(new he0(this, 3));
            }
        }
    }

    public void initWithOption(AdvancedAnnotationsWrapper advancedAnnotationsWrapper, CapabilitiesRepository capabilitiesRepository, boolean z) {
        this.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
        this.capabilitiesRepository = capabilitiesRepository;
        this.snapshotOption = z;
    }

    @Override // com.sightcall.common.MyVideoProducer
    public boolean isPaused() {
        return this.isPaused;
    }

    @Override // com.sightcall.videoplayer.view.MediaPlayerController
    public boolean isPlaying() {
        return isMediaPlayerReady(this.mp) && this.mp.isPlaying();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    public void loadUri(Uri uri) {
        Logger.INSTANCE.d("loadUri(" + uri + ")");
        this.uri = uri;
        if (this.isRendering) {
            restartRendering();
        } else {
            startRendering();
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        Logger.INSTANCE.d("onAttachedToWindow()");
        super.onAttachedToWindow();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onBind(Call call, Sink.Video video) {
        Logger.INSTANCE.d("onBind()");
        this.call = call;
        this.sink = video;
        this.parameters = call.parameters();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        Logger.INSTANCE.d("onDetachedFromWindow()");
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        Point point = this.previewSize;
        Dimension dimension = this.measureDim;
        if (point != null) {
            ViewUtils.measureWithPreviewSize(dimension, point, i2, i3);
        } else {
            ViewUtils.measureWithSpecs(dimension, i2, i3);
        }
        Dimension dimension2 = this.measureDim;
        setMeasuredDimension(dimension2.width, dimension2.height);
    }

    @Override // android.view.TextureView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateScaling();
        this.advancedAnnotationsWrapper.layoutOver(this, this);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStartProducer() {
        Logger.INSTANCE.d("onStart()");
        this.isStarted = true;
        this.isPaused = false;
        this.advancedAnnotationsWrapper.setAnchor(this);
        this.advancedAnnotationsWrapper.layoutOver(this, this);
        this.advancedAnnotationsWrapper.resumeAnnotations(this);
        this.capabilitiesRepository.activateVideo();
        startRendering();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStopProducer() {
        Logger.INSTANCE.d("onStop()");
        this.isStarted = false;
        this.isPaused = false;
        this.capabilitiesRepository.stopVideo();
        stopRendering();
        this.restored = false;
        this.restoredPaused = false;
        this.restoredSeekTo = 0;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        Logger.INSTANCE.d(fc.f(i2, i3, "onSurfaceTextureAvailable(", ", ", ")"));
        this.surface = new Surface(surfaceTexture);
        startRendering();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Logger.INSTANCE.d("onSurfaceTextureDestroyed()");
        if (isMediaPlayerReady(this.mp)) {
            this.restored = true;
            this.restoredSeekTo = this.mp.getCurrentPosition();
            this.restoredPaused = !this.mp.isPlaying();
        }
        this.surface = null;
        stopRendering();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        Logger.INSTANCE.d(fc.f(i2, i3, "onSurfaceTextureSizeChanged(", ", ", ")"));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onUnbind() {
        Logger.INSTANCE.d("onUnbind()");
        this.isStarted = false;
        this.isPaused = false;
        this.parameters = new Call.Parameters();
        this.call = null;
        this.sink = null;
        this.previewSize = null;
        postRequestLayout();
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void pause() {
        Logger.INSTANCE.d("pause()");
        mediaPlayerPause();
    }

    public void resetState() {
        this.restored = false;
        this.restoredSeekTo = 0;
        this.restoredPaused = false;
    }

    public void restore(VideoPlayer videoPlayer) {
        if (videoPlayer == null || videoPlayer.getUri() == null) {
            return;
        }
        this.restored = true;
        this.restoredSeekTo = videoPlayer.getSeek();
        this.restoredPaused = videoPlayer.getPaused();
        loadUri(videoPlayer.getUri());
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void resume() {
        Logger.INSTANCE.d("resume()");
        mediaPlayerResume();
    }

    public VideoPlayer saveState() {
        if (this.uri == null) {
            return null;
        }
        VideoPlayer videoPlayer = new VideoPlayer();
        videoPlayer.setUri(this.uri);
        if (isMediaPlayerReady(this.mp)) {
            videoPlayer.setSeek(getCurrentPosition());
            videoPlayer.setPaused(!isPlaying());
            return videoPlayer;
        }
        videoPlayer.setSeek(0);
        videoPlayer.setPaused(false);
        return videoPlayer;
    }

    @Override // com.sightcall.videoplayer.view.MediaPlayerController
    public void seekTo(int i2) {
        Logger.INSTANCE.d("seekTo(" + i2 + ")");
        if (isMediaPlayerReady(this.mp)) {
            this.mp.seekTo(i2);
        }
    }

    public void seekToRelative(int i2) {
        Logger.INSTANCE.d("seekToRelative(" + i2 + ")");
        if (isMediaPlayerReady(this.mp)) {
            MediaPlayer mediaPlayer = this.mp;
            mediaPlayer.seekTo(Math.max(0, Math.min(mediaPlayer.getCurrentPosition() + i2, this.mp.getDuration())));
        }
    }

    public void setOnPlayerCallback(OnPlayerCallback onPlayerCallback) {
        this.playerCallback = onPlayerCallback;
    }

    public void setVideoPlayerBar(VideoPlayerBar videoPlayerBar) {
        this.bar = videoPlayerBar;
        videoPlayerBar.setVisibility(getVisibility());
        this.bar.setMediaPlayerController(this);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        VideoPlayerBar videoPlayerBar = this.bar;
        if (videoPlayerBar != null) {
            videoPlayerBar.setVisibility(i2);
        }
    }

    public void showBar() {
        Logger.INSTANCE.d("showBar()");
        if (!isMediaPlayerReady(this.mp) || this.bar == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.bar.show();
        } else {
            post(new he0(this, 8));
        }
    }

    public Bitmap snapshot() {
        Bitmap bitmap;
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler == null || (bitmap = senderHandler.bmp) == null || bitmap.isRecycled()) {
            return null;
        }
        getParent();
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig(), this.snapshotOption);
        Jni.nConvertBGR2RGB(bitmapCopy);
        return bitmapCopy;
    }

    @Override // com.sightcall.videoplayer.view.MediaPlayerController
    public void startSeek() {
        Logger.INSTANCE.d("startSeek()");
        post(new he0(this, 1));
    }

    public void unloadUri() {
        Logger.INSTANCE.d("unloadUri()");
        if (this.uri == null || !this.isRendering) {
            return;
        }
        this.uri = null;
        stopRendering();
    }

    public MyVideoProducerPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.lock = new ReentrantLock();
        this.mpState = MediaPlayerState.IDLE;
        this.measureDim = new Dimension();
        int i2 = 0;
        this.completionListener = new ie0(this, i2);
        this.preparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                Logger logger = Logger.INSTANCE;
                logger.d("onPrepared()");
                MyVideoProducerPlayerView.this.mpState = MediaPlayerState.PREPARED;
                if (!MyVideoProducerPlayerView.this.isStarted || !MyVideoProducerPlayerView.this.isRendering) {
                    MyVideoProducerPlayerView.this.mediaPlayerDestroy();
                    return;
                }
                boolean z = MyVideoProducerPlayerView.this.restored;
                MyVideoProducerPlayerView myVideoProducerPlayerView = MyVideoProducerPlayerView.this;
                if (!z) {
                    myVideoProducerPlayerView.mediaPlayerResume();
                    return;
                }
                logger.d("use restored values (seek:" + myVideoProducerPlayerView.restoredSeekTo + ", paused:" + MyVideoProducerPlayerView.this.restoredPaused + ")");
                MyVideoProducerPlayerView myVideoProducerPlayerView2 = MyVideoProducerPlayerView.this;
                myVideoProducerPlayerView2.seekTo(myVideoProducerPlayerView2.restoredSeekTo);
                boolean z2 = MyVideoProducerPlayerView.this.restoredPaused;
                MyVideoProducerPlayerView myVideoProducerPlayerView3 = MyVideoProducerPlayerView.this;
                if (!z2) {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                } else {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                    MyVideoProducerPlayerView.this.mediaPlayerPause();
                }
            }
        };
        this.errorListener = new je0(this, i2);
        this.infoListener = new ke0();
        this.videoSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.3
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i3, int i4) {
                Logger.INSTANCE.d("onVideoSizeChanged(width:" + i3 + " height:" + i4);
                MyVideoProducerPlayerView.this.previewSize = new Point(i3, i4);
                MyVideoProducerPlayerView.this.postRequestLayout();
            }
        };
        init();
    }

    public MyVideoProducerPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.lock = new ReentrantLock();
        this.mpState = MediaPlayerState.IDLE;
        this.measureDim = new Dimension();
        int i3 = 0;
        this.completionListener = new ie0(this, i3);
        this.preparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                Logger logger = Logger.INSTANCE;
                logger.d("onPrepared()");
                MyVideoProducerPlayerView.this.mpState = MediaPlayerState.PREPARED;
                if (!MyVideoProducerPlayerView.this.isStarted || !MyVideoProducerPlayerView.this.isRendering) {
                    MyVideoProducerPlayerView.this.mediaPlayerDestroy();
                    return;
                }
                boolean z = MyVideoProducerPlayerView.this.restored;
                MyVideoProducerPlayerView myVideoProducerPlayerView = MyVideoProducerPlayerView.this;
                if (!z) {
                    myVideoProducerPlayerView.mediaPlayerResume();
                    return;
                }
                logger.d("use restored values (seek:" + myVideoProducerPlayerView.restoredSeekTo + ", paused:" + MyVideoProducerPlayerView.this.restoredPaused + ")");
                MyVideoProducerPlayerView myVideoProducerPlayerView2 = MyVideoProducerPlayerView.this;
                myVideoProducerPlayerView2.seekTo(myVideoProducerPlayerView2.restoredSeekTo);
                boolean z2 = MyVideoProducerPlayerView.this.restoredPaused;
                MyVideoProducerPlayerView myVideoProducerPlayerView3 = MyVideoProducerPlayerView.this;
                if (!z2) {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                } else {
                    myVideoProducerPlayerView3.mediaPlayerResume();
                    MyVideoProducerPlayerView.this.mediaPlayerPause();
                }
            }
        };
        this.errorListener = new je0(this, i3);
        this.infoListener = new ke0();
        this.videoSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.sightcall.videoplayer.view.MyVideoProducerPlayerView.3
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i4, int i5) {
                Logger.INSTANCE.d("onVideoSizeChanged(width:" + i4 + " height:" + i5);
                MyVideoProducerPlayerView.this.previewSize = new Point(i4, i5);
                MyVideoProducerPlayerView.this.postRequestLayout();
            }
        };
        init();
    }
}
