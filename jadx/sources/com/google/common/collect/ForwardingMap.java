package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {
    @Override // java.util.Map
    public final void clear() {
        d().clear();
    }

    public boolean containsKey(Object obj) {
        return d().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Maps.AnonymousClass2 anonymousClass2 = new Maps.AnonymousClass2(entrySet().iterator());
        if (obj == null) {
            while (anonymousClass2.hasNext()) {
                if (anonymousClass2.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (anonymousClass2.hasNext()) {
            if (obj.equals(anonymousClass2.next())) {
                return true;
            }
        }
        return false;
    }

    public abstract Map d();

    public Set entrySet() {
        return d().entrySet();
    }

    public Object get(Object obj) {
        return d().get(obj);
    }

    public boolean isEmpty() {
        return d().isEmpty();
    }

    public Set keySet() {
        return d().keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return d().put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        d().putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return d().remove(obj);
    }

    public int size() {
        return d().size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return d().values();
    }
}
