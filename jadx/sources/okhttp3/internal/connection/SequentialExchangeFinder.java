package okhttp3.internal.connection;

import defpackage.az;
import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/connection/SequentialExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "Lokhttp3/internal/connection/RoutePlanner;", "routePlanner", "<init>", "(Lokhttp3/internal/connection/RoutePlanner;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SequentialExchangeFinder implements ExchangeFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoutePlanner f77163a;

    public SequentialExchangeFinder(RoutePlanner routePlanner) {
        routePlanner.getClass();
        this.f77163a = routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealConnection a() throws Throwable {
        IOException iOException = null;
        while (true) {
            RoutePlanner routePlanner = this.f77163a;
            if (routePlanner.isCanceled()) {
                az.o("Canceled");
                return null;
            }
            try {
                RoutePlanner.Plan planD = routePlanner.d();
                if (!planD.isReady()) {
                    RoutePlanner.ConnectResult connectResultF = planD.f();
                    if (connectResultF.f77152b == null && connectResultF.f77153c == null) {
                        connectResultF = planD.getF77111b();
                    }
                    RoutePlanner.Plan plan = connectResultF.f77152b;
                    Throwable th = connectResultF.f77153c;
                    if (th != null) {
                        throw th;
                    }
                    if (plan != null) {
                        routePlanner.c().addFirst(plan);
                    }
                }
                return planD.getF77149b();
            } catch (IOException e2) {
                if (iOException == null) {
                    iOException = e2;
                } else {
                    ExceptionsKt.a(iOException, e2);
                }
                if (!routePlanner.a(null)) {
                    throw iOException;
                }
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    /* JADX INFO: renamed from: b, reason: from getter */
    public final RoutePlanner getF77163a() {
        return this.f77163a;
    }
}
