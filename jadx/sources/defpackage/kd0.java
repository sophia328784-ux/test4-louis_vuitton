package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import com.batch.android.v0.l;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kd0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f71625c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71626e;

    public /* synthetic */ kd0(VideoRendererEventListener.EventDispatcher eventDispatcher, Object obj, long j2) {
        this.f71624b = 1;
        this.d = eventDispatcher;
        this.f71626e = obj;
        this.f71625c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71624b;
        Object obj = this.f71626e;
        long j2 = this.f71625c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                ExecutorService executorService = (ExecutorService) obj2;
                TimeUnit timeUnit = (TimeUnit) obj;
                executorService.shutdown();
                try {
                    executorService.awaitTermination(j2, timeUnit);
                } catch (InterruptedException unused) {
                    return;
                }
                break;
            case 1:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj2).f15989b;
                String str = Util.f14242a;
                videoRendererEventListener.r(j2, obj);
                break;
            default:
                ((l) obj2).a(j2, (String) obj);
                break;
        }
    }

    public /* synthetic */ kd0(Object obj, long j2, Object obj2, int i2) {
        this.f71624b = i2;
        this.d = obj;
        this.f71625c = j2;
        this.f71626e = obj2;
    }
}
