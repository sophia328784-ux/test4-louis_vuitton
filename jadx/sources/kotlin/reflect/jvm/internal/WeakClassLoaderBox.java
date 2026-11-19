package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;", "", "Ljava/lang/ClassLoader;", "classLoader", "<init>", "(Ljava/lang/ClassLoader;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class WeakClassLoaderBox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f72190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f72191b;

    public WeakClassLoaderBox(ClassLoader classLoader) {
        classLoader.getClass();
        this.f72190a = new WeakReference(classLoader);
        this.f72191b = System.identityHashCode(classLoader);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WeakClassLoaderBox) && this.f72190a.get() == ((WeakClassLoaderBox) obj).f72190a.get();
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF72191b() {
        return this.f72191b;
    }

    public final String toString() {
        String string;
        ClassLoader classLoader = (ClassLoader) this.f72190a.get();
        return (classLoader == null || (string = classLoader.toString()) == null) ? "<null>" : string;
    }
}
