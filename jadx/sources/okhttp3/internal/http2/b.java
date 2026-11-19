package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77294b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Http2Connection f77295c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f77296e;

    public /* synthetic */ b(Http2Connection http2Connection, int i2, List list) {
        this.f77295c = http2Connection;
        this.d = i2;
        this.f77296e = list;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f77294b) {
            case 0:
                Http2Connection http2Connection = this.f77295c;
                int i2 = this.d;
                List list = this.f77296e;
                ((PushObserver$Companion$PushObserverCancel) http2Connection.m).getClass();
                list.getClass();
                try {
                    http2Connection.z.k(i2, ErrorCode.CANCEL);
                    synchronized (http2Connection) {
                        http2Connection.B.remove(Integer.valueOf(i2));
                    }
                } catch (IOException unused) {
                }
                return Unit.f71739a;
            default:
                Http2Connection http2Connection2 = this.f77295c;
                int i3 = this.d;
                List list2 = this.f77296e;
                ((PushObserver$Companion$PushObserverCancel) http2Connection2.m).getClass();
                list2.getClass();
                try {
                    http2Connection2.z.k(i3, ErrorCode.CANCEL);
                    synchronized (http2Connection2) {
                        http2Connection2.B.remove(Integer.valueOf(i3));
                    }
                } catch (IOException unused2) {
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ b(Http2Connection http2Connection, int i2, List list, boolean z) {
        this.f77295c = http2Connection;
        this.d = i2;
        this.f77296e = list;
    }
}
