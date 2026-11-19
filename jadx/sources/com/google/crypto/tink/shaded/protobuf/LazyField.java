package com.google.crypto.tink.shaded.protobuf;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LazyField extends LazyFieldLite {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MessageLite f34193e;

    public static class LazyEntry<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map.Entry f34194b;

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f34194b.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            LazyField lazyField = (LazyField) this.f34194b.getValue();
            if (lazyField == null) {
                return null;
            }
            return lazyField.a(lazyField.f34193e);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof MessageLite)) {
                md.n("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
                return null;
            }
            LazyField lazyField = (LazyField) this.f34194b.getValue();
            MessageLite messageLite = lazyField.f34198c;
            lazyField.f34196a = null;
            lazyField.d = null;
            lazyField.f34198c = (MessageLite) obj;
            return messageLite;
        }
    }

    public static class LazyIterator<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f34195b;

        public LazyIterator(Iterator<Map.Entry<K, Object>> it) {
            this.f34195b = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f34195b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry entry = (Map.Entry) this.f34195b.next();
            if (!(entry.getValue() instanceof LazyField)) {
                return entry;
            }
            LazyEntry lazyEntry = new LazyEntry();
            lazyEntry.f34194b = entry;
            return lazyEntry;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f34195b.remove();
        }
    }

    public LazyField(MessageLite messageLite, ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        super(extensionRegistryLite, byteString);
        this.f34193e = messageLite;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyFieldLite
    public final boolean equals(Object obj) {
        return a(this.f34193e).equals(obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyFieldLite
    public final int hashCode() {
        return a(this.f34193e).hashCode();
    }

    public final String toString() {
        return a(this.f34193e).toString();
    }
}
