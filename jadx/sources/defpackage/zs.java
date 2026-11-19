package defpackage;

import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zs implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CallbackToFutureAdapter.Completer f81706c;

    public /* synthetic */ zs(CallbackToFutureAdapter.Completer completer, int i2) {
        this.f81705b = i2;
        this.f81706c = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81705b;
        CallbackToFutureAdapter.Completer completer = this.f81706c;
        switch (i2) {
            case 0:
                completer.d(new Exception("Failed to snapshot: OpenGLRenderer not ready."));
                break;
            default:
                completer.b(null);
                break;
        }
    }
}
