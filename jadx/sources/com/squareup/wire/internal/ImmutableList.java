package com.squareup.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00022\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/squareup/wire/internal/ImmutableList;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Ljava/io/Serializable;", "Lcom/squareup/wire/internal/Serializable;", "", "list", "<init>", "(Ljava/util/List;)V", "", "writeReplace", "()Ljava/lang/Object;", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ImmutableList<T> extends AbstractList<T> implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f43481c;

    public ImmutableList(List<? extends T> list) {
        list.getClass();
        this.f43481c = new ArrayList(list);
    }

    private final Object writeReplace() throws ObjectStreamException {
        List listUnmodifiableList = Collections.unmodifiableList(this.f43481c);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF71748e() {
        return this.f43481c.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f43481c.get(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return this.f43481c.toArray(new Object[0]);
    }
}
