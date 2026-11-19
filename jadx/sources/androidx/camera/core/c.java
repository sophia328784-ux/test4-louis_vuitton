package androidx.camera.core;

import android.util.Range;
import android.view.Surface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2018c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(Object obj, Object obj2, int i2) {
        this.f2017b = i2;
        this.f2018c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f2017b;
        Object obj = this.d;
        Object obj2 = this.f2018c;
        switch (i2) {
            case 0:
                Range range = SurfaceRequest.q;
                ((Consumer) obj2).accept(new AutoValue_SurfaceRequest_Result(2, (Surface) obj));
                break;
            case 1:
                Range range2 = SurfaceRequest.q;
                ((Consumer) obj2).accept(new AutoValue_SurfaceRequest_Result(3, (Surface) obj));
                break;
            case 2:
                Range range3 = SurfaceRequest.q;
                ((Consumer) obj2).accept(new AutoValue_SurfaceRequest_Result(4, (Surface) obj));
                break;
            default:
                ((ImageReaderProxy.OnImageAvailableListener) obj).d((AndroidImageReaderProxy) obj2);
                break;
        }
    }
}
