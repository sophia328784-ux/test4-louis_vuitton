package okhttp3.internal.concurrent;

import defpackage.o60;
import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TaskLoggerKt {
    public static final void a(Logger logger, Task task, TaskQueue taskQueue, String str) {
        logger.fine(taskQueue.f77067b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.getName());
    }

    public static final String b(long j2) {
        String strJ;
        if (j2 <= -999500000) {
            strJ = o60.j((j2 - 500000000) / 1000000000, " s ", new StringBuilder());
        } else if (j2 <= -999500) {
            strJ = o60.j((j2 - 500000) / 1000000, " ms", new StringBuilder());
        } else if (j2 <= 0) {
            strJ = o60.j((j2 - 500) / 1000, " µs", new StringBuilder());
        } else if (j2 < 999500) {
            strJ = o60.j((j2 + 500) / 1000, " µs", new StringBuilder());
        } else if (j2 < 999500000) {
            strJ = o60.j((j2 + 500000) / 1000000, " ms", new StringBuilder());
        } else {
            strJ = o60.j((j2 + 500000000) / 1000000000, " s ", new StringBuilder());
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{strJ}, 1));
    }
}
