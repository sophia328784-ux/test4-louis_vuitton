package coil3.memory;

import coil3.Image;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcoil3/memory/RealWeakMemoryCache;", "Lcoil3/memory/WeakMemoryCache;", "<init>", "()V", "InternalValue", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealWeakMemoryCache implements WeakMemoryCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f21527a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21528b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/memory/RealWeakMemoryCache$Companion;", "", "", "CLEAN_UP_INTERVAL", "I", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B;\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcoil3/memory/RealWeakMemoryCache$InternalValue;", "", "Ljava/lang/ref/WeakReference;", "Lcoil3/Image;", "Lcoil3/util/WeakReference;", "image", "", "", "extras", "", "size", "<init>", "(Ljava/lang/ref/WeakReference;Ljava/util/Map;J)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class InternalValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f21529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f21530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f21531c;

        public InternalValue(WeakReference<Image> weakReference, Map<String, ? extends Object> map, long j2) {
            this.f21529a = weakReference;
            this.f21530b = map;
            this.f21531c = j2;
        }
    }

    static {
        new Companion(null);
    }

    @Override // coil3.memory.WeakMemoryCache
    public final MemoryCache.Value a(MemoryCache.Key key) {
        ArrayList arrayList = (ArrayList) this.f21527a.get(key);
        MemoryCache.Value value = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            InternalValue internalValue = (InternalValue) arrayList.get(i2);
            Image image = (Image) internalValue.f21529a.get();
            MemoryCache.Value value2 = image != null ? new MemoryCache.Value(image, internalValue.f21530b) : null;
            if (value2 != null) {
                value = value2;
                break;
            }
        }
        b();
        return value;
    }

    public final void b() {
        WeakReference weakReference;
        int i2 = this.f21528b;
        this.f21528b = i2 + 1;
        if (i2 >= 10) {
            this.f21528b = 0;
            Iterator it = this.f21527a.values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = (ArrayList) it.next();
                if (arrayList.size() <= 1) {
                    InternalValue internalValue = (InternalValue) CollectionsKt.firstOrNull(arrayList);
                    if (((internalValue == null || (weakReference = internalValue.f21529a) == null) ? null : (Image) weakReference.get()) == null) {
                        it.remove();
                    }
                } else {
                    int size = arrayList.size();
                    int i3 = 0;
                    for (int i4 = 0; i4 < size; i4++) {
                        int i5 = i4 - i3;
                        if (((InternalValue) arrayList.get(i5)).f21529a.get() == null) {
                            arrayList.remove(i5);
                            i3++;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
    }

    @Override // coil3.memory.WeakMemoryCache
    public final boolean c(MemoryCache.Key key) {
        return this.f21527a.remove(key) != null;
    }

    @Override // coil3.memory.WeakMemoryCache
    public final void clear() {
        this.f21528b = 0;
        this.f21527a.clear();
    }

    @Override // coil3.memory.WeakMemoryCache
    public final void f(MemoryCache.Key key, Image image, Map map, long j2) {
        LinkedHashMap linkedHashMap = this.f21527a;
        Object arrayList = linkedHashMap.get(key);
        if (arrayList == null) {
            arrayList = new ArrayList();
            linkedHashMap.put(key, arrayList);
        }
        ArrayList arrayList2 = (ArrayList) arrayList;
        InternalValue internalValue = new InternalValue(new WeakReference(image), map, j2);
        if (arrayList2.isEmpty()) {
            arrayList2.add(internalValue);
        } else {
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                InternalValue internalValue2 = (InternalValue) arrayList2.get(i2);
                if (j2 >= internalValue2.f21531c) {
                    if (internalValue2.f21529a.get() == image) {
                        arrayList2.set(i2, internalValue);
                        break;
                    } else {
                        arrayList2.add(i2, internalValue);
                        break;
                    }
                }
            }
        }
        b();
    }
}
