package defpackage;

import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Observer;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zi implements Observer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81640c;

    public /* synthetic */ zi(CameraPresenceProvider cameraPresenceProvider, String str) {
        this.f81639b = 0;
        this.f81640c = cameraPresenceProvider;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        HashMap map;
        int i2 = this.f81639b;
        Object obj2 = this.f81640c;
        switch (i2) {
            case 0:
                CameraPresenceProvider cameraPresenceProvider = (CameraPresenceProvider) obj2;
                CameraState cameraState = (CameraState) obj;
                if (!cameraPresenceProvider.f2237h.get()) {
                    Logger.c(3, "CameraPresencePrvdr");
                    return;
                }
                if ((cameraState != null ? cameraState.c() : null) == null) {
                    if ((cameraState != null ? cameraState.d() : null) != CameraState.Type.CLOSED) {
                        return;
                    }
                }
                Objects.toString(cameraState.d());
                Logger.c(5, "CameraPresencePrvdr");
                Observable observable = cameraPresenceProvider.f2235e;
                if (observable != null) {
                    observable.a();
                    return;
                }
                return;
            case 1:
                ((ProducerScope) obj2).b(obj);
                return;
            case 2:
                ((MutableState) obj2).setValue(obj);
                return;
            case 3:
                LiveDataObservable liveDataObservable = (LiveDataObservable) obj2;
                LiveDataObservable.Result result = (LiveDataObservable.Result) obj;
                synchronized (liveDataObservable.f2309b) {
                    map = new HashMap(liveDataObservable.f2309b);
                    break;
                }
                for (Map.Entry entry : map.entrySet()) {
                    ((Executor) entry.getValue()).execute(new jr(entry, result, 29));
                }
                return;
            default:
                ((tb0) obj2).invoke(obj);
                return;
        }
    }

    public /* synthetic */ zi(Object obj, int i2) {
        this.f81639b = i2;
        this.f81640c = obj;
    }
}
