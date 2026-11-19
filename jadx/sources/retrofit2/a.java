package retrofit2;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 f79474c;
    public final /* synthetic */ Callback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79475e;

    public /* synthetic */ a(DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 anonymousClass1, Callback callback, Object obj, int i2) {
        this.f79473b = i2;
        this.f79474c = anonymousClass1;
        this.d = callback;
        this.f79475e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79473b;
        Object obj = this.f79475e;
        Callback callback = this.d;
        DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 anonymousClass1 = this.f79474c;
        switch (i2) {
            case 0:
                Response response = (Response) obj;
                DefaultCallAdapterFactory.ExecutorCallbackCall executorCallbackCall = DefaultCallAdapterFactory.ExecutorCallbackCall.this;
                if (!executorCallbackCall.f79342c.isCanceled()) {
                    callback.onResponse(executorCallbackCall, response);
                } else {
                    callback.onFailure(executorCallbackCall, new IOException("Canceled"));
                }
                break;
            default:
                callback.onFailure(DefaultCallAdapterFactory.ExecutorCallbackCall.this, (Throwable) obj);
                break;
        }
    }
}
