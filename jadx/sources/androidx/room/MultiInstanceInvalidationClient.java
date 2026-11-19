package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/room/MultiInstanceInvalidationClient;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "name", "Landroidx/room/InvalidationTracker;", "invalidationTracker", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MultiInstanceInvalidationClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InvalidationTracker f19416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f19417c;
    public final ContextScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f19418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19419f;
    public IMultiInstanceInvalidationService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SharedFlowImpl f19420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MultiInstanceInvalidationClient$observer$1 f19421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MultiInstanceInvalidationClient$invalidationCallback$1 f19422j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MultiInstanceInvalidationClient$serviceConnection$1 f19423k;

    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.room.MultiInstanceInvalidationClient$serviceConnection$1] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.room.MultiInstanceInvalidationClient$observer$1] */
    public MultiInstanceInvalidationClient(Context context, String str, InvalidationTracker invalidationTracker) {
        context.getClass();
        str.getClass();
        invalidationTracker.getClass();
        this.f19415a = str;
        this.f19416b = invalidationTracker;
        this.f19417c = context.getApplicationContext();
        this.d = invalidationTracker.f19399a.j();
        this.f19418e = new AtomicBoolean(true);
        this.f19420h = SharedFlowKt.a(0, 0, BufferOverflow.SUSPEND);
        final String[] strArr = invalidationTracker.d;
        this.f19421i = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.MultiInstanceInvalidationClient$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public final void a(Set set) {
                set.getClass();
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f19434b;
                if (multiInstanceInvalidationClient.f19418e.get()) {
                    return;
                }
                try {
                    IMultiInstanceInvalidationService iMultiInstanceInvalidationService = multiInstanceInvalidationClient.g;
                    if (iMultiInstanceInvalidationService != null) {
                        iMultiInstanceInvalidationService.C0(multiInstanceInvalidationClient.f19419f, (String[]) set.toArray(new String[0]));
                    }
                } catch (RemoteException unused) {
                }
            }
        };
        this.f19422j = new MultiInstanceInvalidationClient$invalidationCallback$1(this);
        this.f19423k = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService;
                componentName.getClass();
                iBinder.getClass();
                int i2 = IMultiInstanceInvalidationService.Stub.f19395a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IMultiInstanceInvalidationService.f19394i);
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMultiInstanceInvalidationService)) {
                    IMultiInstanceInvalidationService.Stub.Proxy proxy = new IMultiInstanceInvalidationService.Stub.Proxy();
                    proxy.f19396a = iBinder;
                    iMultiInstanceInvalidationService = proxy;
                } else {
                    iMultiInstanceInvalidationService = (IMultiInstanceInvalidationService) iInterfaceQueryLocalInterface;
                }
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f19435b;
                multiInstanceInvalidationClient.g = iMultiInstanceInvalidationService;
                try {
                    multiInstanceInvalidationClient.f19419f = iMultiInstanceInvalidationService.m1(multiInstanceInvalidationClient.f19422j, multiInstanceInvalidationClient.f19415a);
                } catch (RemoteException unused) {
                }
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                componentName.getClass();
                this.f19435b.g = null;
            }
        };
    }

    public final void a() {
        if (this.f19418e.compareAndSet(false, true)) {
            this.f19416b.c(this.f19421i);
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.g;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.z2(this.f19422j, this.f19419f);
                }
            } catch (RemoteException unused) {
            }
            this.f19417c.unbindService(this.f19423k);
        }
    }
}
