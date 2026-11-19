package okhttp3;

import java.util.List;
import kotlin.Metadata;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001B#\u0012\u0010\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0003R\u00020\u00040\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"okhttp3/Dispatcher$promoteAndExecute$Effects", "", "", "Lokhttp3/internal/connection/RealCall$AsyncCall;", "Lokhttp3/internal/connection/RealCall;", "callsToExecute", "Ljava/lang/Runnable;", "idleCallbackToRun", "<init>", "(Ljava/util/List;Ljava/lang/Runnable;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Dispatcher$promoteAndExecute$Effects {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f76904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f76905b;

    public Dispatcher$promoteAndExecute$Effects(List<RealCall.AsyncCall> list, Runnable runnable) {
        list.getClass();
        this.f76904a = list;
        this.f76905b = runnable;
    }
}
