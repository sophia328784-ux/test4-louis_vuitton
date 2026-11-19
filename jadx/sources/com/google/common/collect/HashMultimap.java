package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class HashMultimap<K, V> extends AbstractSetMultimap<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient int f33582h;

    public HashMultimap() {
        super(new CompactHashMap(12));
        this.f33582h = 2;
        this.f33582h = 2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f33582h = 2;
        int i2 = objectInputStream.readInt();
        n(new CompactHashMap(12));
        Serialization.a(this, objectInputStream, i2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.b(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final Set get(Object obj) {
        Collection collectionL = (Collection) this.f33514f.get(obj);
        if (collectionL == null) {
            collectionL = l();
        }
        return (Set) p(obj, collectionL);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection l() {
        return CompactHashSet.b(this.f33582h);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final /* bridge */ /* synthetic */ Collection values() {
        throw null;
    }
}
