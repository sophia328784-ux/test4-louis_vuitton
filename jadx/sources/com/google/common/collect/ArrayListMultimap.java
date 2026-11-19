package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public final class ArrayListMultimap<K, V> extends AbstractListMultimap<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient int f33541h;

    public ArrayListMultimap() {
        super(new CompactHashMap(12));
        CollectPreconditions.b(3, "expectedValuesPerKey");
        this.f33541h = 3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f33541h = 3;
        int i2 = objectInputStream.readInt();
        n(CompactHashMap.f());
        Serialization.a(this, objectInputStream, i2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.b(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection l() {
        return new ArrayList(this.f33541h);
    }

    public final boolean q(String str, ArrayList arrayList) {
        return !arrayList.isEmpty() && get((Object) str).addAll(arrayList);
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
