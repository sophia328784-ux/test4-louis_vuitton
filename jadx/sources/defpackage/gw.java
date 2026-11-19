package defpackage;

import androidx.camera.core.Logger;
import androidx.camera.video.internal.encoder.EncoderImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gw implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EncoderImpl f69499c;

    public /* synthetic */ gw(EncoderImpl encoderImpl, int i2) {
        this.f69498b = i2;
        this.f69499c = encoderImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69498b;
        int i3 = 1;
        EncoderImpl encoderImpl = this.f69499c;
        switch (i2) {
            case 0:
                encoderImpl.f3039i.execute(new gw(encoderImpl, i3));
                break;
            case 1:
                if (encoderImpl.z) {
                    Logger.c(5, encoderImpl.f3033a);
                    encoderImpl.A = null;
                    encoderImpl.p();
                    encoderImpl.z = false;
                }
                break;
            case 2:
                int iOrdinal = encoderImpl.w.ordinal();
                if (iOrdinal == 1) {
                    encoderImpl.m();
                } else if (iOrdinal == 6 || iOrdinal == 8) {
                    md.k("Encoder is released");
                }
                break;
            default:
                encoderImpl.E = true;
                if (encoderImpl.D) {
                    if (!encoderImpl.t) {
                        Logger.c(3, encoderImpl.f3033a);
                        encoderImpl.f3037f.stop();
                    }
                    encoderImpl.n();
                }
                break;
        }
    }
}
