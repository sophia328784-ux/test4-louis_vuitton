package com.vuitton.android.data.audioplayer;

import android.content.ComponentName;
import android.content.Context;
import androidx.media3.session.MediaController;
import androidx.media3.session.SessionToken;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.service.audioplayer.AudioPlayerController;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function5;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;", "Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioPlayerControllerImpl implements AudioPlayerController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ListenableFuture f43559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function5 f43560b;

    public AudioPlayerControllerImpl(Context context) {
        context.getClass();
        ListenableFuture listenableFutureA = new MediaController.Builder(context, new SessionToken(context, new ComponentName(context, (Class<?>) AudioPlayerService.class))).a();
        this.f43559a = listenableFutureA;
        ((AbstractFuture) listenableFutureA).addListener(new z1(this, 9), MoreExecutors.b());
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void a(AudioPlayerItem audioPlayerItem) {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.R(AudioPlayerControllerImplKt.a(audioPlayerItem));
        }
        MediaController mediaControllerF2 = f();
        if (mediaControllerF2 != null) {
            mediaControllerF2.f();
            mediaControllerF2.pause();
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void b(int i2, ArrayList arrayList) {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(AudioPlayerControllerImplKt.a((AudioPlayerItem) it.next()));
            }
            mediaControllerF.x0(arrayList2, i2, -9223372036854775807L);
        }
        MediaController mediaControllerF2 = f();
        if (mediaControllerF2 != null) {
            mediaControllerF2.f();
            mediaControllerF2.pause();
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void c() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.P(true);
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void d(Function5 function5) {
        this.f43560b = function5;
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void destroy() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.stop();
        }
        MediaController mediaControllerF2 = f();
        if (mediaControllerF2 != null) {
            mediaControllerF2.release();
        }
        this.f43560b = null;
        MediaController.X0(this.f43559a);
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void e(PlayerSpeed playerSpeed) {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.t(playerSpeed.getValue());
        }
    }

    public final MediaController f() {
        Object failure;
        ListenableFuture listenableFuture = this.f43559a;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = (!((AbstractFuture) listenableFuture).isDone() || ((AbstractFuture) listenableFuture).isCancelled()) ? null : (MediaController) ((AbstractFuture) listenableFuture).get();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (MediaController) (failure instanceof Result.Failure ? null : failure);
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final long getCurrentPosition() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            return mediaControllerF.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void pause() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.pause();
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void resume() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.c();
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void seekTo(long j2) {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.seekTo(j2);
        }
    }

    @Override // com.vuitton.android.domain.service.audioplayer.AudioPlayerController
    public final void stop() {
        MediaController mediaControllerF = f();
        if (mediaControllerF != null) {
            mediaControllerF.stop();
        }
        MediaController mediaControllerF2 = f();
        if (mediaControllerF2 != null) {
            mediaControllerF2.D();
        }
    }
}
