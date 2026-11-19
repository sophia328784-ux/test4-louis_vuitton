package androidx.work.impl.utils;

import android.app.Application;
import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ProcessUtils {
    static {
        Logger.b("ProcessUtils");
    }

    public static final boolean a(Context context, Configuration configuration) {
        context.getClass();
        configuration.getClass();
        String processName = Application.getProcessName();
        processName.getClass();
        return processName.equals(context.getApplicationInfo().processName);
    }
}
