package com.sightcall.universal.internal.ui.videoplayer;

import com.sightcall.universal.internal.model.State;
import com.sightcall.videoplayer.view.MyVideoProducerPlayerView;
import defpackage.md;
import kotlin.Metadata;
import net.rtccloud.sdk.VideoProducer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0002¨\u0006\u0005"}, d2 = {"isMyVideoProducerPlayerView", "", "Lnet/rtccloud/sdk/VideoProducer;", "toPlayer", "Lcom/sightcall/universal/internal/model/State$Player;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class VideoProducerExtensionsKt {
    public static final boolean isMyVideoProducerPlayerView(VideoProducer videoProducer) {
        return videoProducer instanceof MyVideoProducerPlayerView;
    }

    public static final State.Player toPlayer(VideoProducer videoProducer) {
        if (!isMyVideoProducerPlayerView(videoProducer)) {
            md.n("Can only be used with a MyVideoProducerPlayerView use isMyVideoProducerPlayerView to check instance");
            return null;
        }
        videoProducer.getClass();
        MyVideoProducerPlayerView myVideoProducerPlayerView = (MyVideoProducerPlayerView) videoProducer;
        return new State.Player(myVideoProducerPlayerView.isStarted(), myVideoProducerPlayerView.isPaused(), myVideoProducerPlayerView.getDuration());
    }
}
