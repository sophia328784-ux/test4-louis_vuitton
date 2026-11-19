package androidx.activity;

import android.content.res.TypedArray;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.ct0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/activity/OnBackPressedCallback;", "", "", "enabled", "<init>", "(Z)V", "OnBackPressedEventHandler", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OnBackPressedCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f671b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f670a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f672c = new CopyOnWriteArrayList();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;", "Landroidx/navigationevent/NavigationEventHandler;", "Landroidx/navigationevent/NavigationEventInfo;", "Landroidx/activity/OnBackPressedCallback;", "onBackPressedCallback", "info", "<init>", "(Landroidx/activity/OnBackPressedCallback;Landroidx/navigationevent/NavigationEventInfo;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OnBackPressedEventHandler extends NavigationEventHandler<NavigationEventInfo> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final OnBackPressedCallback f673h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f674i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnBackPressedEventHandler(OnBackPressedCallback onBackPressedCallback, NavigationEventInfo navigationEventInfo) {
            super(navigationEventInfo, onBackPressedCallback.f671b);
            onBackPressedCallback.getClass();
            navigationEventInfo.getClass();
            this.f673h = onBackPressedCallback;
            this.f674i = true;
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void c() {
            this.f673h.a();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void d() {
            this.f673h.b();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void e(NavigationEvent navigationEvent) {
            this.f673h.c(new BackEventCompat(navigationEvent));
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void f(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.f673h.d(new BackEventCompat(navigationEvent));
        }

        public final void j(boolean z) {
            this.f674i = z;
            i(z && this.f673h.f671b);
        }
    }

    public OnBackPressedCallback(boolean z) {
        this.f671b = z;
    }

    public void a() {
    }

    public abstract void b();

    public void c(BackEventCompat backEventCompat) {
    }

    public void d(BackEventCompat backEventCompat) {
    }

    public final void e() throws Exception {
        boolean zIsTerminated;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f672c;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            AutoCloseable autoCloseable = (AutoCloseable) it.next();
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else {
                if (!(autoCloseable instanceof TypedArray)) {
                    ct0.c();
                    return;
                }
                ((TypedArray) autoCloseable).recycle();
            }
        }
        copyOnWriteArrayList.clear();
        ArrayList arrayList = this.f670a;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((OnBackPressedEventHandler) it2.next()).h();
        }
        arrayList.clear();
    }

    public final void f(boolean z) {
        this.f671b = z;
        for (OnBackPressedEventHandler onBackPressedEventHandler : this.f670a) {
            onBackPressedEventHandler.i(onBackPressedEventHandler.f674i && z);
        }
    }
}
