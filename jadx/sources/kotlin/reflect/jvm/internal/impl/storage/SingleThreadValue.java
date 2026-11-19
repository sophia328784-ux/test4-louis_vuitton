package kotlin.reflect.jvm.internal.impl.storage;

/* JADX INFO: loaded from: classes4.dex */
class SingleThreadValue<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f74153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Thread f74154b = Thread.currentThread();

    public SingleThreadValue(Object obj) {
        this.f74153a = obj;
    }
}
