package defpackage;

import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yw implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Factory.Builder f81453c;
    public final /* synthetic */ RequestTask.Builder d;

    public /* synthetic */ yw(Factory.Builder builder, RequestTask.Builder builder2, int i2) {
        this.f81452b = i2;
        this.f81453c = builder;
        this.d = builder2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f81452b;
        RequestTask.Builder builder = this.d;
        Factory.Builder builder2 = this.f81453c;
        switch (i2) {
            case 0:
                NetworkTaskManager.TaskPriority taskPriority = builder2.f42049a;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                builder.f39353c = taskPriority;
                return builder.a(NetworkTaskManagerHolder.a(), Factory.f42048b);
            default:
                NetworkTaskManager.TaskPriority taskPriority2 = builder2.f42049a;
                Objects.requireNonNull(taskPriority2, "priority can't be null");
                builder.f39353c = taskPriority2;
                NetworkTaskManager networkTaskManagerA = NetworkTaskManagerHolder.a();
                d dVar = Factory.f42048b;
                Log.g(3, "RequestTask", "[start] start");
                t tVar = new t(builder.a(networkTaskManagerA, dVar), new ct0(1));
                Log.g(3, "RequestTask", "[start] end");
                return tVar;
        }
    }
}
