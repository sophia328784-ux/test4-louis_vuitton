package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.MainDispatchersKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class DefaultExecutorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Delay f74653a;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Delay delay;
        String strC = SystemPropsKt.c("kotlinx.coroutines.main.delay");
        if (strC != null ? Boolean.parseBoolean(strC) : false) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
            delay = (MainDispatchersKt.a(mainCoroutineDispatcher) || !(mainCoroutineDispatcher instanceof Delay)) ? DefaultExecutor.INSTANCE : (Delay) mainCoroutineDispatcher;
        } else {
            delay = DefaultExecutor.INSTANCE;
        }
        f74653a = delay;
    }
}
