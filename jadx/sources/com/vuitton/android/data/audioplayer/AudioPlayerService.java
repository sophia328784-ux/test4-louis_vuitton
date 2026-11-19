package com.vuitton.android.data.audioplayer;

import android.content.Intent;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.session.MediaSession;
import androidx.media3.session.MediaSessionService;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/audioplayer/AudioPlayerService;", "Landroidx/media3/session/MediaSessionService;", "<init>", "()V", "MediaSessionCallback", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioPlayerService extends MediaSessionService {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaSession f43562k;
    public ExoPlayer l;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;", "Landroidx/media3/session/MediaSession$Callback;", "<init>", "(Lcom/vuitton/android/data/audioplayer/AudioPlayerService;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class MediaSessionCallback implements MediaSession.Callback {
        public MediaSessionCallback() {
        }

        @Override // androidx.media3.session.MediaSession.Callback
        public final ListenableFuture a(MediaSession mediaSession, MediaSession.ControllerInfo controllerInfo, List list) {
            mediaSession.getClass();
            controllerInfo.getClass();
            list.getClass();
            List<MediaItem> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (MediaItem mediaItem : list2) {
                MediaItem.Builder builderA = mediaItem.a();
                builderA.b(mediaItem.f13787a);
                arrayList.add(builderA.a());
            }
            return Futures.g(new ArrayList(arrayList));
        }

        @Override // androidx.media3.session.MediaSession.Callback
        public final int d(MediaSession mediaSession, MediaSession.ControllerInfo controllerInfo, int i2) {
            mediaSession.getClass();
            controllerInfo.getClass();
            AudioPlayerService audioPlayerService = AudioPlayerService.this;
            switch (i2) {
                case 6:
                case 7:
                    Player player = audioPlayerService.l;
                    if (player == null) {
                        Intrinsics.h("exoPlayer");
                        throw null;
                    }
                    ((BasePlayer) player).F();
                    Player player2 = audioPlayerService.l;
                    if (player2 != null) {
                        ((BasePlayer) player2).P(false);
                        return -6;
                    }
                    Intrinsics.h("exoPlayer");
                    throw null;
                case 8:
                case 9:
                    Player player3 = audioPlayerService.l;
                    if (player3 == null) {
                        Intrinsics.h("exoPlayer");
                        throw null;
                    }
                    ((BasePlayer) player3).S();
                    Player player4 = audioPlayerService.l;
                    if (player4 != null) {
                        ((BasePlayer) player4).P(false);
                        return -6;
                    }
                    Intrinsics.h("exoPlayer");
                    throw null;
                default:
                    return 0;
            }
        }
    }

    @Override // androidx.media3.session.MediaSessionService
    public final MediaSession g(MediaSession.ControllerInfo controllerInfo) {
        return this.f43562k;
    }

    @Override // androidx.media3.session.MediaSessionService, androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        builder.f13700c = 1;
        AudioAttributes audioAttributesA = builder.a();
        ExoPlayer exoPlayerA = new ExoPlayer.Builder(this).a();
        exoPlayerA.p0(audioAttributesA, true);
        exoPlayerA.T0();
        this.l = exoPlayerA;
        ExoPlayer exoPlayer = this.l;
        if (exoPlayer == null) {
            Intrinsics.h("exoPlayer");
            throw null;
        }
        MediaSession.Builder builder2 = new MediaSession.Builder(this, exoPlayer);
        builder2.b(new MediaSessionCallback());
        this.f43562k = builder2.a();
    }

    @Override // androidx.media3.session.MediaSessionService, androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        MediaSession mediaSession = this.f43562k;
        if (mediaSession != null) {
            mediaSession.a().pause();
            mediaSession.a().release();
            mediaSession.b();
            this.f43562k = null;
        }
        super.onDestroy();
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public final void onTaskRemoved(Intent intent) {
        MediaSession mediaSession = this.f43562k;
        if (mediaSession != null) {
            if (mediaSession.a().r()) {
                mediaSession.a().stop();
            }
            stopSelf();
        }
    }
}
