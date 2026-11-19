package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.Choreographer;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/platform/AndroidUiDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidUiDispatcher extends CoroutineDispatcher {
    public static final Companion l = new Companion(null);
    public static final Lazy m = LazyKt.b(AndroidUiDispatcher$Companion$Main$2.f9967c);
    public static final AndroidUiDispatcher$Companion$currentThread$1 n = new AndroidUiDispatcher$Companion$currentThread$1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Choreographer f9959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f9960c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9963h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9964i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AndroidUiFrameClock f9966k;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque f9961e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f9962f = new ArrayList();
    public ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AndroidUiDispatcher$dispatchCallback$1 f9965j = new AndroidUiDispatcher$dispatchCallback$1(this);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;", "", "Ljava/lang/ThreadLocal;", "Lkotlin/coroutines/CoroutineContext;", "currentThread", "Ljava/lang/ThreadLocal;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AndroidUiDispatcher(Choreographer choreographer, Handler handler, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9959b = choreographer;
        this.f9960c = handler;
        this.f9966k = new AndroidUiFrameClock(choreographer, this);
    }

    public static final void r(AndroidUiDispatcher androidUiDispatcher) {
        Runnable runnable;
        boolean z;
        do {
            synchronized (androidUiDispatcher.d) {
                ArrayDeque arrayDeque = androidUiDispatcher.f9961e;
                runnable = (Runnable) (arrayDeque.isEmpty() ? null : arrayDeque.removeFirst());
            }
            while (runnable != null) {
                runnable.run();
                synchronized (androidUiDispatcher.d) {
                    ArrayDeque arrayDeque2 = androidUiDispatcher.f9961e;
                    runnable = (Runnable) (arrayDeque2.isEmpty() ? null : arrayDeque2.removeFirst());
                }
            }
            synchronized (androidUiDispatcher.d) {
                if (androidUiDispatcher.f9961e.isEmpty()) {
                    z = false;
                    androidUiDispatcher.f9963h = false;
                } else {
                    z = true;
                }
            }
        } while (z);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        synchronized (this.d) {
            this.f9961e.addLast(runnable);
            if (!this.f9963h) {
                this.f9963h = true;
                this.f9960c.post(this.f9965j);
                if (!this.f9964i) {
                    this.f9964i = true;
                    this.f9959b.postFrameCallback(this.f9965j);
                }
            }
        }
    }
}
