package androidx.work;

import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class WorkerParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f20288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Data f20289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f20290c;
    public final CoroutineContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TaskExecutor f20291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressUpdater f20292f;
    public final ForegroundUpdater g;

    public static class RuntimeExtras {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f20293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f20294b;

        public RuntimeExtras() {
            List list = Collections.EMPTY_LIST;
            this.f20293a = list;
            this.f20294b = list;
        }
    }

    public WorkerParameters(UUID uuid, Data data, Collection<String> collection, RuntimeExtras runtimeExtras, int i2, int i3, Executor executor, CoroutineContext coroutineContext, TaskExecutor taskExecutor, WorkerFactory workerFactory, ProgressUpdater progressUpdater, ForegroundUpdater foregroundUpdater) {
        this.f20288a = uuid;
        this.f20289b = data;
        new HashSet(collection);
        this.f20290c = executor;
        this.d = coroutineContext;
        this.f20291e = taskExecutor;
        this.f20292f = progressUpdater;
        this.g = foregroundUpdater;
    }
}
