package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bc implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f20818c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f20819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20820f;

    public /* synthetic */ bc(int i2, long j2, long j3, Object obj, String str) {
        this.f20817b = i2;
        this.f20820f = obj;
        this.f20818c = str;
        this.d = j2;
        this.f20819e = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f20817b;
        Object obj = this.f20820f;
        switch (i2) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.u(this.d, this.f20819e, this.f20818c);
                break;
            default:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj).f15989b;
                String str2 = Util.f14242a;
                videoRendererEventListener.F(this.d, this.f20819e, this.f20818c);
                break;
        }
    }
}
