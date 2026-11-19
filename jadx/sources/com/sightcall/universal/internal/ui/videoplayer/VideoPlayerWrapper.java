package com.sightcall.universal.internal.ui.videoplayer;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewStub;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.MyVideoProducer;
import kotlin.Metadata;
import net.rtccloud.sdk.VideoProducer;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u000256J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH&J\b\u0010 \u001a\u00020\u000eH&J\b\u0010!\u001a\u00020\u000eH&J\b\u0010\"\u001a\u00020\u000eH&J\n\u0010#\u001a\u0004\u0018\u00010\u001fH&J\b\u0010$\u001a\u00020\u000eH&J\u0010\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020'H&J\b\u0010(\u001a\u00020\u000eH&J\b\u0010)\u001a\u00020\u000eH&J\u0010\u0010*\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH&J\b\u0010+\u001a\u00020\u000eH&J\n\u0010,\u001a\u0004\u0018\u00010-H&J\u0010\u0010.\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020'H&J\b\u00100\u001a\u00020\u000eH&J\b\u00101\u001a\u00020\u000eH&J\u0010\u00102\u001a\u00020\u000e2\u0006\u00103\u001a\u000204H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\f¨\u00067À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;", "", "videoProducer", "Lcom/sightcall/common/MyVideoProducer;", "getVideoProducer", "()Lcom/sightcall/common/MyVideoProducer;", "videoPlayerBarView", "Landroid/view/View;", "getVideoPlayerBarView", "()Landroid/view/View;", "isPlayerBarShowings", "", "()Z", "init", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "videoProducerStub", "Landroid/view/ViewStub;", "videoPlayerBarStub", "advancedAnnotationsWrapper", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;", "capabilitiesRepository", "Lcom/sightcall/capabilities/CapabilitiesRepository;", "isMyVideoProducerPlayerView", "Lnet/rtccloud/sdk/VideoProducer;", "setOnPlayerCallback", "onPlayerCallback", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;", "newState", "uri", "Landroid/net/Uri;", "saveState", "restore", "reset", "getUri", "resetState", "setVisibility", "visibility", "", "showBar", "hideBar", "loadUri", "unloadUri", "snapshot", "Landroid/graphics/Bitmap;", "seekToRelative", "relative", "resume", "pause", "setCallback", "visibilityCallback", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;", "OnPlayerCallback", "VisibilityCallback", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface VideoPlayerWrapper {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;", "", "onPlayerStart", "", "onPlayerStop", "onPlayerPause", "onPlayerResume", "onPlayerStartSeek", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnPlayerCallback {
        void onPlayerPause();

        void onPlayerResume();

        void onPlayerStart();

        void onPlayerStartSeek();

        void onPlayerStop();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;", "", "onPlayerBarShown", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface VisibilityCallback {
        void onPlayerBarShown();
    }

    Uri getUri();

    View getVideoPlayerBarView();

    MyVideoProducer getVideoProducer();

    void hideBar();

    void init(Context context, ViewStub videoProducerStub, ViewStub videoPlayerBarStub, AdvancedAnnotationsWrapper advancedAnnotationsWrapper, CapabilitiesRepository capabilitiesRepository);

    boolean isMyVideoProducerPlayerView(VideoProducer videoProducer);

    boolean isPlayerBarShowings();

    void loadUri(Uri uri);

    void newState(Uri uri);

    void pause();

    void reset();

    void resetState();

    void restore();

    void resume();

    void saveState();

    void seekToRelative(int relative);

    void setCallback(VisibilityCallback visibilityCallback);

    void setOnPlayerCallback(OnPlayerCallback onPlayerCallback);

    void setVisibility(int visibility);

    void showBar();

    Bitmap snapshot();

    void unloadUri();
}
