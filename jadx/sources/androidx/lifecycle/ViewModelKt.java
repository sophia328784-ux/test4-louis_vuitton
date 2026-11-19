package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-viewmodel"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ViewModelKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SynchronizedObject f13523a = new SynchronizedObject();

    public static final CloseableCoroutineScope a(ViewModel viewModel) {
        CloseableCoroutineScope closeableCoroutineScope;
        CoroutineContext coroutineContextR;
        viewModel.getClass();
        synchronized (f13523a) {
            closeableCoroutineScope = (CloseableCoroutineScope) viewModel.getCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (closeableCoroutineScope == null) {
                try {
                    try {
                        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                        coroutineContextR = MainDispatcherLoader.f75131a.r();
                    } catch (NotImplementedError unused) {
                        coroutineContextR = EmptyCoroutineContext.f71840b;
                    }
                } catch (IllegalStateException unused2) {
                    coroutineContextR = EmptyCoroutineContext.f71840b;
                }
                CloseableCoroutineScope closeableCoroutineScope2 = new CloseableCoroutineScope(coroutineContextR.plus(SupervisorKt.b()));
                viewModel.addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", closeableCoroutineScope2);
                closeableCoroutineScope = closeableCoroutineScope2;
            }
        }
        return closeableCoroutineScope;
    }
}
