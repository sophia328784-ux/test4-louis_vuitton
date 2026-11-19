package androidx.media3.session;

import androidx.media3.common.util.ConditionVariable;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17628b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17629c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17631f;
    public final /* synthetic */ Object g;

    public /* synthetic */ d(ConnectedControllersManager connectedControllersManager, ConnectedControllersManager.AsyncCommand asyncCommand, AtomicBoolean atomicBoolean, ConnectedControllersManager.ConnectedControllerRecord connectedControllerRecord, AtomicBoolean atomicBoolean2) {
        this.f17629c = connectedControllersManager;
        this.d = asyncCommand;
        this.f17630e = atomicBoolean;
        this.g = connectedControllerRecord;
        this.f17631f = atomicBoolean2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17628b;
        Object obj = this.g;
        Object obj2 = this.f17631f;
        Object obj3 = this.f17630e;
        Object obj4 = this.d;
        Object obj5 = this.f17629c;
        switch (i2) {
            case 0:
                ((ConnectedControllersManager.AsyncCommand) obj4).run().addListener(new e((ConnectedControllersManager) obj5, (AtomicBoolean) obj3, (ConnectedControllersManager.ConnectedControllerRecord) obj, (AtomicBoolean) obj2), MoreExecutors.b());
                break;
            default:
                ((AtomicReference) obj4).set(((MediaLibraryServiceLegacyStub) obj5).m.C((MediaSession.ControllerInfo) obj3, (MediaLibraryService$LibraryParams) obj2));
                ((ConditionVariable) obj).d();
                break;
        }
    }

    public /* synthetic */ d(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, AtomicReference atomicReference, MediaSession.ControllerInfo controllerInfo, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, ConditionVariable conditionVariable) {
        this.f17629c = mediaLibraryServiceLegacyStub;
        this.d = atomicReference;
        this.f17630e = controllerInfo;
        this.f17631f = mediaLibraryService$LibraryParams;
        this.g = conditionVariable;
    }
}
