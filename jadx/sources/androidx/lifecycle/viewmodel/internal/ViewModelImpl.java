package androidx.lifecycle.viewmodel.internal;

import defpackage.d21;
import defpackage.x1;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006B%\b\u0016\u0012\u001a\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\bj\u0002`\t0\u0007\"\u00060\bj\u0002`\t¢\u0006\u0004\b\u0002\u0010\u000bB-\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u001a\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\bj\u0002`\t0\u0007\"\u00060\bj\u0002`\t¢\u0006\u0004\b\u0002\u0010\f¨\u0006\r"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;", "", "<init>", "()V", "Lkotlinx/coroutines/CoroutineScope;", "viewModelScope", "(Lkotlinx/coroutines/CoroutineScope;)V", "", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "closeables", "([Ljava/lang/AutoCloseable;)V", "(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/AutoCloseable;)V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SynchronizedObject f13611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f13612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f13613c;
    public volatile boolean d;

    public ViewModelImpl(CoroutineScope coroutineScope, AutoCloseable... autoCloseableArr) {
        coroutineScope.getClass();
        autoCloseableArr.getClass();
        this.f13611a = new SynchronizedObject();
        this.f13612b = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f13613c = linkedHashSet;
        b("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", new CloseableCoroutineScope(coroutineScope));
        CollectionsKt.k(linkedHashSet, autoCloseableArr);
    }

    public static void c(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                d21.x(autoCloseable);
            } catch (Exception e2) {
                x1.m(e2);
            }
        }
    }

    public final void a(AutoCloseable autoCloseable) {
        autoCloseable.getClass();
        if (this.d) {
            c(autoCloseable);
            return;
        }
        synchronized (this.f13611a) {
            this.f13613c.add(autoCloseable);
        }
    }

    public final void b(String str, AutoCloseable autoCloseable) {
        AutoCloseable autoCloseable2;
        str.getClass();
        autoCloseable.getClass();
        if (this.d) {
            c(autoCloseable);
            return;
        }
        synchronized (this.f13611a) {
            autoCloseable2 = (AutoCloseable) this.f13612b.put(str, autoCloseable);
        }
        c(autoCloseable2);
    }

    public ViewModelImpl(CoroutineScope coroutineScope) {
        coroutineScope.getClass();
        this.f13611a = new SynchronizedObject();
        this.f13612b = new LinkedHashMap();
        this.f13613c = new LinkedHashSet();
        b("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", new CloseableCoroutineScope(coroutineScope));
    }

    public ViewModelImpl(AutoCloseable... autoCloseableArr) {
        autoCloseableArr.getClass();
        this.f13611a = new SynchronizedObject();
        this.f13612b = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f13613c = linkedHashSet;
        CollectionsKt.k(linkedHashSet, autoCloseableArr);
    }

    public ViewModelImpl() {
        this.f13611a = new SynchronizedObject();
        this.f13612b = new LinkedHashMap();
        this.f13613c = new LinkedHashSet();
    }
}
