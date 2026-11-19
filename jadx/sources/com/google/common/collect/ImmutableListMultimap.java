package com.google.common.collect;

import defpackage.pq0;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements ListMultimap<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient ImmutableListMultimap f33591h;

    public static final class Builder<K, V> extends ImmutableMultimap.Builder<K, V> {
    }

    public static ImmutableListMultimap n() {
        return EmptyImmutableListMultimap.f33579i;
    }

    public static ImmutableListMultimap o(String str) {
        Builder builder = new Builder();
        CollectPreconditions.a("charset", str);
        Map mapF = builder.f33607a;
        if (mapF == null) {
            mapF = CompactHashMap.f();
            builder.f33607a = mapF;
        }
        ImmutableCollection.Builder builderR = (ImmutableCollection.Builder) mapF.get("charset");
        if (builderR == null) {
            builderR = ImmutableList.r(4);
            Map mapF2 = builder.f33607a;
            if (mapF2 == null) {
                mapF2 = CompactHashMap.f();
                builder.f33607a = mapF2;
            }
            mapF2.put("charset", builderR);
        }
        builderR.a(str);
        Map map = builder.f33607a;
        if (map == null) {
            return EmptyImmutableListMultimap.f33579i;
        }
        Collection collectionEntrySet = ((CompactHashMap) map).entrySet();
        if (((AbstractCollection) collectionEntrySet).isEmpty()) {
            return EmptyImmutableListMultimap.f33579i;
        }
        CompactHashMap.EntrySetView<Map.Entry> entrySetView = (CompactHashMap.EntrySetView) collectionEntrySet;
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder(CompactHashMap.this.size());
        int i2 = 0;
        for (Map.Entry entry : entrySetView) {
            Object key = entry.getKey();
            ImmutableList immutableListJ = ((ImmutableList.Builder) entry.getValue()).j();
            builder2.d(key, immutableListJ);
            i2 += ((RegularImmutableList) immutableListJ).f33699e;
        }
        return new ImmutableListMultimap(builder2.a(true), i2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(pq0.k(i2, "Invalid key count "));
        }
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i5 = objectInputStream.readInt();
            if (i5 <= 0) {
                throw new InvalidObjectException(pq0.k(i5, "Invalid value count "));
            }
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            for (int i6 = 0; i6 < i5; i6++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                builder2.d(object2);
            }
            builder.d(object, builder2.j());
            i3 += i5;
        }
        try {
            this.f33591h = new ImmutableListMultimap(builder.a(true), i3);
        } catch (IllegalArgumentException e2) {
            throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
        }
    }

    private Object readResolve() {
        ImmutableListMultimap immutableListMultimap = this.f33591h;
        Objects.requireNonNull(immutableListMultimap);
        return immutableListMultimap;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.b(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final Collection a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final ImmutableList get(Object obj) {
        ImmutableList immutableList = (ImmutableList) this.f33602f.get(obj);
        if (immutableList != null) {
            return immutableList;
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        return RegularImmutableList.f33698f;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final List a(Object obj) {
        throw new UnsupportedOperationException();
    }
}
