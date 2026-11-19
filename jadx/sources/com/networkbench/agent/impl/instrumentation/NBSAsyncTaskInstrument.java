package com.networkbench.agent.impl.instrumentation;

import android.os.AsyncTask;
import com.networkbench.agent.impl.asyncaction.l;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class NBSAsyncTaskInstrument {
    private static final e log = f.a();
    private static l handlerController = new l();

    public static final AsyncTask<Object, Object, Object> execute(AsyncTask asyncTask, Object... objArr) {
        try {
            handlerController.a(asyncTask);
            return asyncTask.execute(objArr);
        } catch (Throwable th) {
            try {
                log.a("error AsyncTask execute ", th);
                return asyncTask.execute(objArr);
            } catch (Throwable unused) {
                return asyncTask.execute(objArr);
            }
        }
    }

    public static final AsyncTask<Object, Object, Object> executeOnExecutor(AsyncTask asyncTask, Executor executor, Object... objArr) {
        try {
            handlerController.a(asyncTask);
            return asyncTask.executeOnExecutor(executor, objArr);
        } catch (Throwable th) {
            try {
                log.a("error AsyncTask executeOnExecutor ", th);
                return asyncTask.executeOnExecutor(executor, objArr);
            } catch (Throwable unused) {
                return asyncTask.executeOnExecutor(executor, objArr);
            }
        }
    }
}
