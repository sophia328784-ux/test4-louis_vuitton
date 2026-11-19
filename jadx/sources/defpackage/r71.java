package defpackage;

import android.media.ImageWriter;
import androidx.camera.core.ImageProxy;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r71 implements ImageWriter.OnImageReleasedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageProxy f79268a;

    @Override // android.media.ImageWriter.OnImageReleasedListener
    public final void onImageReleased(ImageWriter imageWriter) throws Exception {
        this.f79268a.close();
    }
}
