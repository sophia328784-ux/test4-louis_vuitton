package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.impl.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer<WorkManager> {
    static {
        Logger.b("WrkMgrInitializer");
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Logger.a().getClass();
        Configuration configuration = new Configuration(new Configuration.Builder());
        WorkManager.f20280a.getClass();
        context.getClass();
        WorkManagerImpl.e(context, configuration);
        WorkManagerImpl workManagerImplD = WorkManagerImpl.d(context);
        workManagerImplD.getClass();
        return workManagerImplD;
    }
}
