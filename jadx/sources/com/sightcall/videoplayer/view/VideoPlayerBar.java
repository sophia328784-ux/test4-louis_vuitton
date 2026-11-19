package com.sightcall.videoplayer.view;

import android.animation.Animator;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatImageView;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.videoplayer.R;
import defpackage.hi;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class VideoPlayerBar extends LinearLayout {
    public static final AccelerateInterpolator ACCELERATE_INTERPOLATOR = new AccelerateInterpolator(1.5f);
    public static final DecelerateInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator(1.5f);
    private MediaPlayerController controller;
    private ProgressHandler handler;
    private boolean isDragging;
    private boolean isShowing;
    private AppCompatImageView playPauseButton;
    private SeekBar seekbar;
    private VisibilityCallback visibilityCallback;

    public static class ProgressHandler extends Handler {
        static final int SHOW_PROGRESS = 1;
        private final WeakReference<VideoPlayerBar> barReference;

        public ProgressHandler(VideoPlayerBar videoPlayerBar) {
            this.barReference = new WeakReference<>(videoPlayerBar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                removeMessages(1);
                VideoPlayerBar videoPlayerBar = this.barReference.get();
                if (videoPlayerBar == null) {
                    return;
                }
                videoPlayerBar.updatePlayPause();
                int iUpdateProgress = videoPlayerBar.updateProgress();
                if (videoPlayerBar.isDragging || !videoPlayerBar.isShowing) {
                    return;
                }
                sendMessageDelayed(obtainMessage(1), 1000 - (videoPlayerBar.controller.isPlaying() ? iUpdateProgress % 1000 : 0));
            }
        }
    }

    public interface VisibilityCallback {
        void onPlayerBarShown();
    }

    public VideoPlayerBar(Context context) {
        super(context);
        init();
    }

    private void doPauseResume() {
        boolean zIsPlaying = this.controller.isPlaying();
        MediaPlayerController mediaPlayerController = this.controller;
        if (zIsPlaying) {
            mediaPlayerController.pause();
        } else {
            mediaPlayerController.resume();
        }
        updatePlayPause();
    }

    private void init() {
        LayoutInflater.from(getContext()).inflate(R.layout.universal_view_video_player_bar, (ViewGroup) this, true);
        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById(R.id.universal_video_player_play_pause);
        this.playPauseButton = appCompatImageView;
        appCompatImageView.setOnClickListener(new hi(this, 8));
        SeekBar seekBar = (SeekBar) findViewById(R.id.universal_video_player_progress);
        this.seekbar = seekBar;
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.sightcall.videoplayer.view.VideoPlayerBar.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i2, boolean z) {
                if (z) {
                    VideoPlayerBar.this.controller.seekTo((int) (((long) (VideoPlayerBar.this.controller.getDuration() * i2)) / 1000));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                VideoPlayerBar.this.isDragging = true;
                VideoPlayerBar.this.show();
                VideoPlayerBar.this.controller.startSeek();
                VideoPlayerBar.this.handler.removeMessages(1);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                VideoPlayerBar.this.isDragging = false;
                VideoPlayerBar.this.updateProgress();
                VideoPlayerBar.this.updatePlayPause();
                VideoPlayerBar.this.show();
                VideoPlayerBar.this.handler.sendEmptyMessage(1);
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar2);
            }
        });
        if (isInEditMode()) {
            return;
        }
        this.handler = new ProgressHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$init$--V, reason: not valid java name */
    public static /* synthetic */ void m76instrumented$0$init$V(VideoPlayerBar videoPlayerBar, View view) {
        Callback.n(view);
        try {
            videoPlayerBar.lambda$init$0(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    private /* synthetic */ void lambda$init$0(View view) {
        doPauseResume();
        show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPause() {
        this.playPauseButton.setActivated(!this.controller.isPlaying());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int updateProgress() {
        MediaPlayerController mediaPlayerController = this.controller;
        if (mediaPlayerController == null || this.isDragging) {
            return 0;
        }
        int currentPosition = mediaPlayerController.getCurrentPosition();
        int duration = this.controller.getDuration();
        if (duration > 0) {
            this.seekbar.setProgress((int) ((((long) currentPosition) * 1000) / ((long) duration)));
            return currentPosition;
        }
        this.seekbar.setProgress(0);
        return currentPosition;
    }

    public void hide() {
        if (!this.isShowing || this.isDragging) {
            return;
        }
        this.handler.removeMessages(1);
        this.isShowing = false;
        animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setInterpolator(ACCELERATE_INTERPOLATOR).setListener(new Animator.AnimatorListener() { // from class: com.sightcall.videoplayer.view.VideoPlayerBar.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                VideoPlayerBar.this.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public boolean isShowing() {
        return this.isShowing;
    }

    public void setCallback(VisibilityCallback visibilityCallback) {
        this.visibilityCallback = visibilityCallback;
    }

    public void setMediaPlayerController(MediaPlayerController mediaPlayerController) {
        this.controller = mediaPlayerController;
    }

    public void show() {
        if (!this.isShowing) {
            updateProgress();
            this.isShowing = true;
        }
        updatePlayPause();
        this.handler.sendEmptyMessage(1);
        animate().setListener(null).alpha(1.0f).setInterpolator(DECELERATE_INTERPOLATOR).start();
        setVisibility(0);
        VisibilityCallback visibilityCallback = this.visibilityCallback;
        if (visibilityCallback != null) {
            visibilityCallback.onPlayerBarShown();
        }
    }

    public VideoPlayerBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public VideoPlayerBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
