package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/LifecycleService;", "Landroid/app/Service;", "Landroidx/lifecycle/LifecycleOwner;", "<init>", "()V", "lifecycle-service"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class LifecycleService extends Service implements LifecycleOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServiceLifecycleDispatcher f13458b = new ServiceLifecycleDispatcher(this);

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getF13561b() {
        return this.f13458b.f13518a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        intent.getClass();
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.f13458b;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.f13458b;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.f13458b;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_STOP);
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i2) {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.f13458b;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_START);
        super.onStart(intent, i2);
    }
}
