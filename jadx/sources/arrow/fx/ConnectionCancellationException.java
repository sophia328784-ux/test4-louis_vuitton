package arrow.fx;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002¨\u0006\u0003"}, d2 = {"Larrow/fx/ConnectionCancellationException;", "Ljava/util/concurrent/CancellationException;", "Larrow/fx/internal/JavaCancellationException;", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public final class ConnectionCancellationException extends CancellationException {
    static {
        new ConnectionCancellationException("User cancellation");
    }
}
