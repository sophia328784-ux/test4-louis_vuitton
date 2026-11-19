package defpackage;

import android.graphics.Bitmap;
import androidx.media3.ui.PlayerView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class oo0 implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f77512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f77513b;

    public /* synthetic */ oo0(Object obj, int i2) {
        this.f77512a = i2;
        this.f77513b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws InvocationTargetException {
        Thread threadCurrentThread;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        int i2 = this.f77512a;
        Object obj2 = this.f77513b;
        switch (i2) {
            case 0:
                PlayerView playerView = (PlayerView) obj2;
                int i3 = PlayerView.K;
                if (!method.getName().equals("onImageAvailable")) {
                    return null;
                }
                playerView.p.post(new aa0(playerView, (Bitmap) objArr[1], 15));
                return null;
            default:
                try {
                    return method.invoke(obj2, objArr);
                } catch (InvocationTargetException e2) {
                    e = e2;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    threadCurrentThread = Thread.currentThread();
                    uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(threadCurrentThread, e);
                    }
                    throw e;
                } catch (Throwable th) {
                    e = th;
                    threadCurrentThread = Thread.currentThread();
                    uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(threadCurrentThread, e);
                    }
                    throw e;
                }
        }
    }
}
