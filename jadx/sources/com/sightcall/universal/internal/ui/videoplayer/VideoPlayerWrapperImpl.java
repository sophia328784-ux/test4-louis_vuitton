package com.sightcall.universal.internal.ui.videoplayer;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper;
import com.sightcall.videoplayer.model.VideoPlayer;
import com.sightcall.videoplayer.view.MyVideoProducerPlayerView;
import com.sightcall.videoplayer.view.VideoPlayerBar;
import defpackage.ln0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.VideoProducer;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010 \u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u000fH\u0002J\u0010\u0010%\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020&H\u0016J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020,H\u0016J\b\u0010-\u001a\u00020\u0016H\u0016J\b\u0010.\u001a\u00020\u0016H\u0016J\b\u0010/\u001a\u00020\u0016H\u0016J\b\u00100\u001a\u00020\u0016H\u0016J\n\u00101\u001a\u0004\u0018\u00010,H\u0016J\u0010\u00102\u001a\u00020\u00162\u0006\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u00020\u0016H\u0016J\b\u00106\u001a\u00020\u0016H\u0016J\u0010\u00107\u001a\u00020\u00162\u0006\u0010+\u001a\u00020,H\u0016J\b\u00108\u001a\u00020\u0016H\u0016J\n\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010<\u001a\u000204H\u0016J\b\u0010=\u001a\u00020\u0016H\u0016J\b\u0010>\u001a\u00020\u0016H\u0016J\u0010\u0010?\u001a\u00020\u00162\u0006\u0010@\u001a\u00020AH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014¨\u0006B"}, d2 = {"Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapperImpl;", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;", "<init>", "()V", "videoPlayer", "Lcom/sightcall/videoplayer/model/VideoPlayer;", "myVideoProducerPlayerView", "Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;", "videoProducer", "Lcom/sightcall/common/MyVideoProducer;", "getVideoProducer", "()Lcom/sightcall/common/MyVideoProducer;", "videoPlayerBar", "Lcom/sightcall/videoplayer/view/VideoPlayerBar;", "videoPlayerBarView", "Landroid/view/View;", "getVideoPlayerBarView", "()Landroid/view/View;", "isPlayerBarShowings", "", "()Z", "init", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "videoProducerStub", "Landroid/view/ViewStub;", "videoPlayerBarStub", "advancedAnnotationsWrapper", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;", "capabilitiesRepository", "Lcom/sightcall/capabilities/CapabilitiesRepository;", "loadVideoProducer", "loadVideoPlayerBar", "replace", "old", "new", "isMyVideoProducerPlayerView", "Lnet/rtccloud/sdk/VideoProducer;", "setOnPlayerCallback", "onPlayerCallback", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;", "newState", "uri", "Landroid/net/Uri;", "saveState", "restore", "reset", "resetState", "getUri", "setVisibility", "visibility", "", "showBar", "hideBar", "loadUri", "unloadUri", "snapshot", "Landroid/graphics/Bitmap;", "seekToRelative", "relative", "resume", "pause", "setCallback", "visibilityCallback", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VideoPlayerWrapperImpl implements VideoPlayerWrapper {
    private MyVideoProducerPlayerView myVideoProducerPlayerView;
    private VideoPlayer videoPlayer;
    private VideoPlayerBar videoPlayerBar;

    private final void loadVideoPlayerBar(Context context, ViewStub videoPlayerBarStub) {
        VideoPlayerBar videoPlayerBar = new VideoPlayerBar(context);
        this.videoPlayerBar = videoPlayerBar;
        replace(videoPlayerBarStub, videoPlayerBar);
    }

    private final void loadVideoProducer(Context context, ViewStub videoProducerStub) {
        MyVideoProducerPlayerView myVideoProducerPlayerView = new MyVideoProducerPlayerView(context);
        this.myVideoProducerPlayerView = myVideoProducerPlayerView;
        replace(videoProducerStub, myVideoProducerPlayerView);
    }

    private final void replace(ViewStub old, View view) {
        ViewParent parent = old.getParent();
        parent.getClass();
        ViewGroup viewGroup = (ViewGroup) parent;
        int iIndexOfChild = viewGroup.indexOfChild(old);
        viewGroup.removeView(old);
        viewGroup.addView(view, iIndexOfChild);
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public Uri getUri() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            return videoPlayer.getUri();
        }
        return null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public View getVideoPlayerBarView() {
        VideoPlayerBar videoPlayerBar = this.videoPlayerBar;
        if (videoPlayerBar != null) {
            return videoPlayerBar;
        }
        Intrinsics.h("videoPlayerBar");
        throw null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public MyVideoProducer getVideoProducer() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            return myVideoProducerPlayerView;
        }
        Intrinsics.h("myVideoProducerPlayerView");
        throw null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void hideBar() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.lambda$hideBar$5();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void init(Context context, ViewStub videoProducerStub, ViewStub videoPlayerBarStub, AdvancedAnnotationsWrapper advancedAnnotationsWrapper, CapabilitiesRepository capabilitiesRepository) {
        context.getClass();
        videoProducerStub.getClass();
        videoPlayerBarStub.getClass();
        advancedAnnotationsWrapper.getClass();
        capabilitiesRepository.getClass();
        loadVideoProducer(context, videoProducerStub);
        loadVideoPlayerBar(context, videoPlayerBarStub);
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView == null) {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
        if (myVideoProducerPlayerView == null) {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
        myVideoProducerPlayerView.initWithOption(advancedAnnotationsWrapper, capabilitiesRepository, myVideoProducerPlayerView.getParent() instanceof MyVideoProducerWrapper);
        MyVideoProducerPlayerView myVideoProducerPlayerView2 = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView2 == null) {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
        VideoPlayerBar videoPlayerBar = this.videoPlayerBar;
        if (videoPlayerBar != null) {
            myVideoProducerPlayerView2.setVideoPlayerBar(videoPlayerBar);
        } else {
            Intrinsics.h("videoPlayerBar");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public boolean isMyVideoProducerPlayerView(VideoProducer videoProducer) {
        videoProducer.getClass();
        return videoProducer instanceof MyVideoProducerPlayerView;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public boolean isPlayerBarShowings() {
        VideoPlayerBar videoPlayerBar = this.videoPlayerBar;
        if (videoPlayerBar != null) {
            return videoPlayerBar.isShowing();
        }
        Intrinsics.h("videoPlayerBar");
        throw null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void loadUri(Uri uri) {
        uri.getClass();
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.loadUri(uri);
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void newState(Uri uri) {
        uri.getClass();
        VideoPlayer videoPlayer = new VideoPlayer(null, 0, false, 7, null);
        videoPlayer.setUri(uri);
        this.videoPlayer = videoPlayer;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void pause() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.pause();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void reset() {
        this.videoPlayer = null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void resetState() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.resetState();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void restore() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.restore(this.videoPlayer);
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void resume() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.resume();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void saveState() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            this.videoPlayer = myVideoProducerPlayerView.saveState();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void seekToRelative(int relative) {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.seekToRelative(relative);
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void setCallback(VideoPlayerWrapper.VisibilityCallback visibilityCallback) {
        visibilityCallback.getClass();
        VideoPlayerBar videoPlayerBar = this.videoPlayerBar;
        if (videoPlayerBar != null) {
            videoPlayerBar.setCallback(new ln0(visibilityCallback, 24));
        } else {
            Intrinsics.h("videoPlayerBar");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void setOnPlayerCallback(final VideoPlayerWrapper.OnPlayerCallback onPlayerCallback) {
        onPlayerCallback.getClass();
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.setOnPlayerCallback(new MyVideoProducerPlayerView.OnPlayerCallback() { // from class: com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapperImpl.setOnPlayerCallback.1
                @Override // com.sightcall.videoplayer.view.MyVideoProducerPlayerView.OnPlayerCallback
                public void onPlayerPause() {
                    onPlayerCallback.onPlayerPause();
                }

                @Override // com.sightcall.videoplayer.view.MyVideoProducerPlayerView.OnPlayerCallback
                public void onPlayerResume() {
                    onPlayerCallback.onPlayerResume();
                }

                @Override // com.sightcall.videoplayer.view.MyVideoProducerPlayerView.OnPlayerCallback
                public void onPlayerStart() {
                    onPlayerCallback.onPlayerStart();
                }

                @Override // com.sightcall.videoplayer.view.MyVideoProducerPlayerView.OnPlayerCallback
                public void onPlayerStartSeek() {
                    onPlayerCallback.onPlayerStartSeek();
                }

                @Override // com.sightcall.videoplayer.view.MyVideoProducerPlayerView.OnPlayerCallback
                public void onPlayerStop() {
                    onPlayerCallback.onPlayerStop();
                }
            });
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void setVisibility(int visibility) {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.setVisibility(visibility);
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void showBar() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.showBar();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public Bitmap snapshot() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            return myVideoProducerPlayerView.snapshot();
        }
        Intrinsics.h("myVideoProducerPlayerView");
        throw null;
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper
    public void unloadUri() {
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.myVideoProducerPlayerView;
        if (myVideoProducerPlayerView != null) {
            myVideoProducerPlayerView.unloadUri();
        } else {
            Intrinsics.h("myVideoProducerPlayerView");
            throw null;
        }
    }
}
