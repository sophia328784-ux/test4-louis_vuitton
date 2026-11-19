package okhttp3.internal.http2;

import kotlin.Metadata;
import okhttp3.internal.http2.flowcontrol.WindowCounter;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lokhttp3/internal/http2/FlowControlListener;", "", "None", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FlowControlListener {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/FlowControlListener$None;", "Lokhttp3/internal/http2/FlowControlListener;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class None implements FlowControlListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f77202a = new None();

        @Override // okhttp3.internal.http2.FlowControlListener
        public final void a(WindowCounter windowCounter) {
            windowCounter.getClass();
        }

        @Override // okhttp3.internal.http2.FlowControlListener
        public final void b(WindowCounter windowCounter) {
            windowCounter.getClass();
        }
    }

    void a(WindowCounter windowCounter);

    void b(WindowCounter windowCounter);
}
