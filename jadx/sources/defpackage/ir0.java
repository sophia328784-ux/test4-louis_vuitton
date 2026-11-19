package defpackage;

import android.net.Uri;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.video.Recorder;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ir0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f71195b;

    public /* synthetic */ ir0(Object obj, int i2) {
        this.f71194a = i2;
        this.f71195b = obj;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        int i2 = this.f71194a;
        Object obj2 = this.f71195b;
        switch (i2) {
            case 0:
                ((Recorder) obj2).M = (Uri) obj;
                break;
            case 1:
                SurfaceRequest.TransformationInfo transformationInfo = (SurfaceRequest.TransformationInfo) obj;
                for (Map.Entry entry : ((Map) obj2).entrySet()) {
                    int iB = transformationInfo.b() - ((OutConfig) entry.getKey()).c();
                    if (((OutConfig) entry.getKey()).g()) {
                        iB = -iB;
                    }
                    int iK = TransformUtils.k(iB);
                    SurfaceEdge surfaceEdge = (SurfaceEdge) entry.getValue();
                    surfaceEdge.getClass();
                    Threads.c(new e21(surfaceEdge, iK, -1));
                }
                break;
            default:
                ((CallbackToFutureAdapter.Completer) obj2).b((SurfaceRequest.Result) obj);
                break;
        }
    }
}
