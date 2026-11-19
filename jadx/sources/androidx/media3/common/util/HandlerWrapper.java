package androidx.media3.common.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public interface HandlerWrapper {

    public interface Message {
        void a();
    }

    boolean a(int i2, int i3);

    Message b(int i2);

    void c();

    boolean d(int i2);

    boolean e(Runnable runnable);

    Message f(int i2, int i3, int i4, Object obj);

    Message g(int i2, Object obj);

    Looper h();

    Message i(int i2, int i3, int i4);

    boolean j(Message message);

    boolean k(Runnable runnable);

    boolean l(long j2);

    boolean m(int i2);

    void n(int i2);
}
