package defpackage;

import androidx.camera.video.internal.encoder.EncoderCallback;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iw implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EncoderCallback f71210c;

    public /* synthetic */ iw(EncoderCallback encoderCallback, int i2) {
        this.f71209b = i2;
        this.f71210c = encoderCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71209b;
        EncoderCallback encoderCallback = this.f71210c;
        switch (i2) {
            case 0:
                encoderCallback.getClass();
                break;
            default:
                encoderCallback.a();
                break;
        }
    }
}
