package androidx.work;

import android.content.Context;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/work/WorkerFactory;", "", "<init>", "()V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WorkerFactory {
    public abstract ListenableWorker a(Context context, String str, WorkerParameters workerParameters);

    public final ListenableWorker b(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        ListenableWorker listenableWorkerA = a(context, str, workerParameters);
        if (listenableWorkerA == null) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
                clsAsSubclass.getClass();
                try {
                    Object objNewInstance = clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                    objNewInstance.getClass();
                    listenableWorkerA = (ListenableWorker) objNewInstance;
                } catch (Throwable th) {
                    Logger loggerA = Logger.a();
                    int i2 = WorkerFactoryKt.f20287a;
                    loggerA.getClass();
                    throw th;
                }
            } catch (Throwable th2) {
                Logger loggerA2 = Logger.a();
                int i3 = WorkerFactoryKt.f20287a;
                loggerA2.getClass();
                throw th2;
            }
        }
        if (!listenableWorkerA.d) {
            return listenableWorkerA;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
