package okio.internal;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import kotlin.Metadata;
import okio.AsyncTimeout;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokio/internal/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "Ljava/net/Socket;", "socket", "<init>", "(Ljava/net/Socket;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SocketAsyncTimeout extends AsyncTimeout {
    public final Socket o;

    public SocketAsyncTimeout(Socket socket) {
        socket.getClass();
        this.o = socket;
    }

    @Override // okio.AsyncTimeout
    public final IOException k(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    public final void l() {
        Socket socket = this.o;
        try {
            socket.close();
        } catch (AssertionError e2) {
            if (!_JavaIoKt.a(e2)) {
                throw e2;
            }
            _JavaIoKt.f77492a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        } catch (Exception e3) {
            _JavaIoKt.f77492a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
        }
    }
}
