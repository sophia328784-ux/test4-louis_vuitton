package androidx.hilt.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import java.util.Map;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HiltWorkerFactory extends WorkerFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f13397a;

    public HiltWorkerFactory(Map map) {
        this.f13397a = map;
    }

    @Override // androidx.work.WorkerFactory
    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        Provider provider = (Provider) this.f13397a.get(str);
        if (provider == null) {
            return null;
        }
        return ((WorkerAssistedFactory) provider.get()).a(context, workerParameters);
    }
}
