package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.common.base.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class SystemHandlerWrapper implements HandlerWrapper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f14233b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f14234a;

    public static final class SystemMessage implements HandlerWrapper.Message {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Message f14235a;

        @Override // androidx.media3.common.util.HandlerWrapper.Message
        public final void a() {
            Message message = this.f14235a;
            message.getClass();
            message.sendToTarget();
            b();
        }

        public final void b() {
            this.f14235a = null;
            ArrayList arrayList = SystemHandlerWrapper.f14233b;
            synchronized (arrayList) {
                try {
                    if (arrayList.size() < 50) {
                        arrayList.add(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public SystemHandlerWrapper(Handler handler) {
        this.f14234a = handler;
    }

    public static SystemMessage o() {
        SystemMessage systemMessage;
        ArrayList arrayList = f14233b;
        synchronized (arrayList) {
            try {
                systemMessage = arrayList.isEmpty() ? new SystemMessage() : (SystemMessage) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return systemMessage;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean a(int i2, int i3) {
        return this.f14234a.sendEmptyMessageDelayed(i2, i3);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message b(int i2) {
        SystemMessage systemMessageO = o();
        systemMessageO.f14235a = this.f14234a.obtainMessage(i2);
        return systemMessageO;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final void c() {
        this.f14234a.removeCallbacksAndMessages(null);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean d(int i2) {
        return this.f14234a.hasMessages(i2);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean e(Runnable runnable) {
        return this.f14234a.postDelayed(runnable, 1000L);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message f(int i2, int i3, int i4, Object obj) {
        SystemMessage systemMessageO = o();
        systemMessageO.f14235a = this.f14234a.obtainMessage(i2, i3, i4, obj);
        return systemMessageO;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message g(int i2, Object obj) {
        SystemMessage systemMessageO = o();
        systemMessageO.f14235a = this.f14234a.obtainMessage(i2, obj);
        return systemMessageO;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final Looper h() {
        return this.f14234a.getLooper();
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message i(int i2, int i3, int i4) {
        SystemMessage systemMessageO = o();
        systemMessageO.f14235a = this.f14234a.obtainMessage(i2, i3, i4);
        return systemMessageO;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean j(HandlerWrapper.Message message) {
        SystemMessage systemMessage = (SystemMessage) message;
        Message message2 = systemMessage.f14235a;
        message2.getClass();
        boolean zSendMessageAtFrontOfQueue = this.f14234a.sendMessageAtFrontOfQueue(message2);
        systemMessage.b();
        return zSendMessageAtFrontOfQueue;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean k(Runnable runnable) {
        return this.f14234a.post(runnable);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean l(long j2) {
        return this.f14234a.sendEmptyMessageAtTime(2, j2);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean m(int i2) {
        return this.f14234a.sendEmptyMessage(i2);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final void n(int i2) {
        Preconditions.g(i2 != 0);
        this.f14234a.removeMessages(i2);
    }
}
