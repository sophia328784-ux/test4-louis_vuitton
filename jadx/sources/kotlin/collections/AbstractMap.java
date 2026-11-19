package kotlin.collections;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapEntries;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.c1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\b'\u0018\u0000 \u0006*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0001\u0007B\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlin/collections/AbstractMap;", "K", "V", "", "<init>", "()V", NBSSpanMetricUnit.Day, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile AbstractMap$keys$1 f71749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile AnonymousClass1 f71750c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/collections/AbstractMap$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public abstract Set c();

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return g(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Set setC = c();
        if (setC.isEmpty()) {
            return false;
        }
        Iterator it = setC.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((Map.Entry) it.next()).getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.collections.AbstractMap$keys$1] */
    public Set d() {
        if (this.f71749b == null) {
            this.f71749b = new AbstractSet<Object>() { // from class: kotlin.collections.AbstractMap$keys$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public final boolean contains(Object obj) {
                    return this.f71751c.containsKey(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: f */
                public final int getF8300e() {
                    return this.f71751c.getF8326f();
                }

                @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    return new AbstractMap$keys$1$iterator$1(((PersistentHashMapEntries) this.f71751c.c()).iterator());
                }
            };
        }
        AbstractMap$keys$1 abstractMap$keys$1 = this.f71749b;
        abstractMap$keys$1.getClass();
        return abstractMap$keys$1;
    }

    /* JADX INFO: renamed from: e */
    public int getF8326f() {
        return ((AbstractCollection) c()).getF8300e();
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        return c();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (getF8326f() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return true;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (entry != null) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                V v = get(key);
                if (Intrinsics.c(value, v) && (v != null || containsKey(key))) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.collections.AbstractMap$values$1] */
    public Collection f() {
        if (this.f71750c == null) {
            this.f71750c = new AbstractCollection<Object>() { // from class: kotlin.collections.AbstractMap.values.1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public final boolean contains(Object obj) {
                    return AbstractMap.this.containsValue(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: f */
                public final int getF8300e() {
                    return AbstractMap.this.getF8326f();
                }

                @Override // java.util.Collection, java.lang.Iterable
                public final Iterator iterator() {
                    return new AbstractMap$values$1$iterator$1(((PersistentHashMapEntries) AbstractMap.this.c()).iterator());
                }
            };
        }
        AnonymousClass1 anonymousClass1 = this.f71750c;
        anonymousClass1.getClass();
        return anonymousClass1;
    }

    public final Map.Entry g(Object obj) {
        Object next;
        Iterator it = c().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.c(((Map.Entry) next).getKey(), obj)) {
                return (Map.Entry) next;
            }
        }
        next = null;
        return (Map.Entry) next;
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        Map.Entry entryG = g(obj);
        if (entryG != null) {
            return entryG.getValue();
        }
        return null;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return c().hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return getF8326f() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        return d();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getF8326f();
    }

    public final String toString() {
        return CollectionsKt.K(c(), ", ", "{", "}", new c1(this, 2), 24);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return f();
    }
}
