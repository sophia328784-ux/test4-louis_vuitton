package com.squareup.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/squareup/wire/internal/MutableOnWriteList;", "T", "Lkotlin/collections/AbstractMutableList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Ljava/io/Serializable;", "Lcom/squareup/wire/internal/Serializable;", "", "immutableList", "<init>", "(Ljava/util/List;)V", "", "writeReplace", "()Ljava/lang/Object;", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MutableOnWriteList<T> extends AbstractMutableList<T> implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f43483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f43484c;

    public MutableOnWriteList(List<? extends T> list) {
        list.getClass();
        this.f43483b = list;
        this.f43484c = list;
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new ArrayList(this.f43484c);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        List list = this.f43484c;
        List list2 = this.f43483b;
        if (list == list2) {
            this.f43484c = new ArrayList(list2);
        }
        List list3 = this.f43484c;
        list3.getClass();
        ((ArrayList) list3).add(i2, obj);
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f */
    public final int getF71797c() {
        return this.f43484c.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f43484c.get(i2);
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object h(int i2) {
        List list = this.f43484c;
        List list2 = this.f43483b;
        if (list == list2) {
            this.f43484c = new ArrayList(list2);
        }
        List list3 = this.f43484c;
        list3.getClass();
        return ((ArrayList) list3).remove(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        List list = this.f43484c;
        List list2 = this.f43483b;
        if (list == list2) {
            this.f43484c = new ArrayList(list2);
        }
        List list3 = this.f43484c;
        list3.getClass();
        return ((ArrayList) list3).set(i2, obj);
    }
}
