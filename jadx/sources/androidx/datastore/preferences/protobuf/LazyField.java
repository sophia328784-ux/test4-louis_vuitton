package androidx.datastore.preferences.protobuf;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LazyField extends LazyFieldLite {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MessageLite f12950e;

    public static class LazyEntry<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map.Entry f12951b;

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12951b.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            LazyField lazyField = (LazyField) this.f12951b.getValue();
            if (lazyField == null) {
                return null;
            }
            return lazyField.a(lazyField.f12950e);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof MessageLite)) {
                md.n("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
                return null;
            }
            LazyField lazyField = (LazyField) this.f12951b.getValue();
            MessageLite messageLite = lazyField.f12955c;
            lazyField.f12953a = null;
            lazyField.d = null;
            lazyField.f12955c = (MessageLite) obj;
            return messageLite;
        }
    }

    public static class LazyIterator<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f12952b;

        public LazyIterator(Iterator<Map.Entry<K, Object>> it) {
            this.f12952b = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12952b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry entry = (Map.Entry) this.f12952b.next();
            if (!(entry.getValue() instanceof LazyField)) {
                return entry;
            }
            LazyEntry lazyEntry = new LazyEntry();
            lazyEntry.f12951b = entry;
            return lazyEntry;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f12952b.remove();
        }
    }

    public LazyField(MessageLite messageLite, ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        super(extensionRegistryLite, byteString);
        this.f12950e = messageLite;
    }

    @Override // androidx.datastore.preferences.protobuf.LazyFieldLite
    public final boolean equals(Object obj) {
        return a(this.f12950e).equals(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyFieldLite
    public final int hashCode() {
        return a(this.f12950e).hashCode();
    }

    public final String toString() {
        return a(this.f12950e).toString();
    }
}
