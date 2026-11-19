package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.nc;
import defpackage.x1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15114b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15115c;

    public /* synthetic */ f(ExoPlayerImpl exoPlayerImpl) {
        this.f15115c = exoPlayerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i2 = this.f15114b;
        Object obj2 = this.f15115c;
        switch (i2) {
            case 0:
                ExoPlayerImpl exoPlayerImpl = (ExoPlayerImpl) obj2;
                BackgroundThreadStateHandler backgroundThreadStateHandler = exoPlayerImpl.C;
                Context context = exoPlayerImpl.f14646e;
                String str = Util.f14242a;
                int iGenerateAudioSessionId = AudioManagerCompat.a(context).generateAudioSessionId();
                if (iGenerateAudioSessionId == -1) {
                    iGenerateAudioSessionId = 0;
                }
                backgroundThreadStateHandler.getClass();
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper == backgroundThreadStateHandler.f14136b.h()) {
                    obj = backgroundThreadStateHandler.d;
                } else {
                    Preconditions.q(looperMyLooper == backgroundThreadStateHandler.f14135a.h());
                    obj = backgroundThreadStateHandler.f14138e;
                }
                if (((Integer) obj).intValue() != iGenerateAudioSessionId) {
                    Integer numValueOf = Integer.valueOf(iGenerateAudioSessionId);
                    backgroundThreadStateHandler.f14138e = numValueOf;
                    nc ncVar = new nc(backgroundThreadStateHandler, numValueOf, 0);
                    HandlerWrapper handlerWrapper = backgroundThreadStateHandler.f14136b;
                    if (handlerWrapper.h().getThread().isAlive()) {
                        handlerWrapper.k(ncVar);
                    }
                    exoPlayerImpl.p1(1, 10, Integer.valueOf(iGenerateAudioSessionId));
                    exoPlayerImpl.p1(2, 10, Integer.valueOf(iGenerateAudioSessionId));
                    return;
                }
                return;
            default:
                PlayerMessage playerMessage = (PlayerMessage) obj2;
                int i3 = ExoPlayerImplInternal.l1;
                try {
                    synchronized (playerMessage) {
                    }
                    try {
                        playerMessage.f14766a.q(playerMessage.f14769e, playerMessage.f14770f);
                        return;
                    } finally {
                        playerMessage.a(true);
                    }
                } catch (ExoPlaybackException e2) {
                    Log.e("Unexpected error delivering message on external thread.", e2);
                    x1.m(e2);
                    return;
                }
        }
    }
}
