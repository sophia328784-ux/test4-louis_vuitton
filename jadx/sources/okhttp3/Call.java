package okhttp3;

import kotlin.Metadata;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lokhttp3/Call;", "", "Factory", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Call extends Cloneable {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/Call$Factory;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Factory {
        RealCall a(Request request);
    }

    void cancel();

    Response execute();

    /* JADX INFO: renamed from: isCanceled */
    boolean getS();

    void r(Callback callback);

    /* JADX INFO: renamed from: request */
    Request getF77119c();
}
