package coil3.memory;

import coil3.Image;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/memory/RealStrongMemoryCache;", "Lcoil3/memory/StrongMemoryCache;", "", "initialMaxSize", "Lcoil3/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(JLcoil3/memory/WeakMemoryCache;)V", "InternalValue", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealStrongMemoryCache implements StrongMemoryCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f21521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakMemoryCache f21522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RealStrongMemoryCache$cache$1 f21523c;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil3/memory/RealStrongMemoryCache$InternalValue;", "", "Lcoil3/Image;", "image", "", "", "extras", "", "size", "<init>", "(Lcoil3/Image;Ljava/util/Map;J)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class InternalValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Image f21524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f21525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f21526c;

        public InternalValue(Image image, Map<String, ? extends Object> map, long j2) {
            this.f21524a = image;
            this.f21525b = map;
            this.f21526c = j2;
        }
    }

    public RealStrongMemoryCache(long j2, WeakMemoryCache weakMemoryCache) {
        this.f21521a = j2;
        this.f21522b = weakMemoryCache;
        this.f21523c = new RealStrongMemoryCache$cache$1(this, j2);
    }

    @Override // coil3.memory.StrongMemoryCache
    public final MemoryCache.Value a(MemoryCache.Key key) {
        InternalValue internalValue = (InternalValue) this.f21523c.f21728a.get(key);
        if (internalValue != null) {
            return new MemoryCache.Value(internalValue.f21524a, internalValue.f21525b);
        }
        return null;
    }

    @Override // coil3.memory.StrongMemoryCache
    public final void b(long j2) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.f21523c;
        realStrongMemoryCache$cache$1.f21729b = j2;
        realStrongMemoryCache$cache$1.e(j2);
    }

    @Override // coil3.memory.StrongMemoryCache
    public final boolean c(MemoryCache.Key key) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.f21523c;
        Object objRemove = realStrongMemoryCache$cache$1.f21728a.remove(key);
        if (objRemove != null) {
            realStrongMemoryCache$cache$1.f21730c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, objRemove);
            realStrongMemoryCache$cache$1.a(key, objRemove, null);
        }
        return objRemove != null;
    }

    @Override // coil3.memory.StrongMemoryCache
    public final void clear() {
        this.f21523c.e(-1L);
    }

    @Override // coil3.memory.StrongMemoryCache
    /* JADX INFO: renamed from: d, reason: from getter */
    public final long getF21521a() {
        return this.f21521a;
    }

    @Override // coil3.memory.StrongMemoryCache
    public final long e() {
        return this.f21523c.f21729b;
    }

    @Override // coil3.memory.StrongMemoryCache
    public final void f(MemoryCache.Key key, Image image, Map map, long j2) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.f21523c;
        long j3 = realStrongMemoryCache$cache$1.f21729b;
        LinkedHashMap linkedHashMap = realStrongMemoryCache$cache$1.f21728a;
        if (j2 > j3) {
            Object objRemove = linkedHashMap.remove(key);
            if (objRemove != null) {
                realStrongMemoryCache$cache$1.f21730c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, objRemove);
                realStrongMemoryCache$cache$1.a(key, objRemove, null);
            }
            this.f21522b.f(key, image, map, j2);
            return;
        }
        InternalValue internalValue = new InternalValue(image, map, j2);
        Object objPut = linkedHashMap.put(key, internalValue);
        realStrongMemoryCache$cache$1.f21730c = realStrongMemoryCache$cache$1.c(key, internalValue) + realStrongMemoryCache$cache$1.b();
        if (objPut != null) {
            realStrongMemoryCache$cache$1.f21730c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, objPut);
            realStrongMemoryCache$cache$1.a(key, objPut, internalValue);
        }
        realStrongMemoryCache$cache$1.e(realStrongMemoryCache$cache$1.f21729b);
    }

    @Override // coil3.memory.StrongMemoryCache
    public final void g(long j2) {
        this.f21523c.e(j2);
    }

    @Override // coil3.memory.StrongMemoryCache
    public final long getSize() {
        return this.f21523c.b();
    }
}
