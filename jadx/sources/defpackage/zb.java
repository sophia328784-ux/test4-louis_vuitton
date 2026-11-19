package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zb implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f81591c;
    public final /* synthetic */ Exception d;

    public /* synthetic */ zb(AudioRendererEventListener.EventDispatcher eventDispatcher, Exception exc, int i2) {
        this.f81590b = i2;
        this.f81591c = eventDispatcher;
        this.d = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81590b;
        Exception exc = this.d;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.f81591c;
        switch (i2) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.E(exc);
                break;
            default:
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher.f14926b;
                String str2 = Util.f14242a;
                audioRendererEventListener2.m(exc);
                break;
        }
    }
}
