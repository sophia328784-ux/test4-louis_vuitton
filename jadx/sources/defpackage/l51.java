package defpackage;

import androidx.media3.common.util.Util;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l51 implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = Util.f14242a;
        return new Thread(runnable, "ExoPlayer:AudioTrackReleaseThread");
    }
}
