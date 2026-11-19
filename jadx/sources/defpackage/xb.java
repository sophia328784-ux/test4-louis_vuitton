package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.batch.android.v0.l;
import com.perfectcorp.perfectlib.MakeupCam;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xb implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f81082c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xb(Object obj, long j2, int i2) {
        this.f81081b = i2;
        this.d = obj;
        this.f81082c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81081b;
        long j2 = this.f81082c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.o(j2);
                break;
            case 1:
                ((MakeupCam.VideoCallback) obj).onFrameEncoded(j2);
                break;
            default:
                ((l) obj).b(j2);
                break;
        }
    }
}
