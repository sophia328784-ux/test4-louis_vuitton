package coil3;

import android.graphics.Bitmap;
import android.os.Looper;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.OneShotDisposable;
import coil3.request.ViewTargetDisposable;
import coil3.request.ViewTargetRequestManager;
import coil3.request.ViewTargetRequestManagerKt;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.util.Utils_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class RealImageLoader_androidKt {
    public static final Disposable a(ImageRequest imageRequest, Deferred deferred) {
        Target target = imageRequest.f21614c;
        if (!(target instanceof ViewTarget)) {
            return new OneShotDisposable(deferred);
        }
        ViewTargetRequestManager viewTargetRequestManagerA = ViewTargetRequestManagerKt.a(((ViewTarget) target).a());
        synchronized (viewTargetRequestManagerA) {
            ViewTargetDisposable viewTargetDisposable = viewTargetRequestManagerA.f21680c;
            if (viewTargetDisposable != null) {
                Bitmap.Config[] configArr = Utils_androidKt.f21737a;
                if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper()) && viewTargetRequestManagerA.f21682f) {
                    viewTargetRequestManagerA.f21682f = false;
                    viewTargetDisposable.f21674b = deferred;
                    return viewTargetDisposable;
                }
            }
            Job job = viewTargetRequestManagerA.d;
            if (job != null) {
                job.cancel(null);
            }
            viewTargetRequestManagerA.d = null;
            ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(viewTargetRequestManagerA.f21679b, deferred);
            viewTargetRequestManagerA.f21680c = viewTargetDisposable2;
            return viewTargetDisposable2;
        }
    }
}
