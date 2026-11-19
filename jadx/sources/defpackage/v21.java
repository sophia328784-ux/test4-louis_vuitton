package defpackage;

import androidx.camera.core.imagecapture.TakePictureManagerImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v21 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TakePictureManagerImpl f80481c;

    public /* synthetic */ v21(TakePictureManagerImpl takePictureManagerImpl, int i2) {
        this.f80480b = i2;
        this.f80481c = takePictureManagerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80480b;
        TakePictureManagerImpl takePictureManagerImpl = this.f80481c;
        switch (i2) {
            case 0:
                takePictureManagerImpl.d = null;
                takePictureManagerImpl.d();
                break;
            default:
                takePictureManagerImpl.d();
                break;
        }
    }
}
