package okhttp3.internal.http;

import java.io.IOException;
import kotlin.Metadata;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.connection.RealCall;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lokhttp3/internal/http/ExchangeCodec;", "", "Carrier", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ExchangeCodec {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/http/ExchangeCodec$Carrier;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Carrier {
        void c();

        void cancel();

        void e(RealCall realCall, IOException iOException);

        /* JADX INFO: renamed from: getRoute */
        Route getD();
    }

    void a();

    Source b(Response response);

    long c(Response response);

    void cancel();

    Sink d(Request request, long j2);

    void e(Request request);

    boolean f();

    Response.Builder g(boolean z);

    void h();

    Socket i();

    Carrier j();
}
