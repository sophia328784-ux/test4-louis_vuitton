package com.google.crypto.tink.shaded.protobuf;

import defpackage.ct0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public class LazyStringArrayList extends AbstractProtobufList<String> implements LazyStringList, RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f34199c;

    static {
        new LazyStringArrayList().f34135b = false;
    }

    public LazyStringArrayList(LazyStringList lazyStringList) {
        this.f34199c = new ArrayList(lazyStringList.size());
        addAll(lazyStringList);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final void A1(ByteString byteString) {
        f();
        this.f34199c.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final Object L1(int i2) {
        return this.f34199c.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        f();
        this.f34199c.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        f();
        if (collection instanceof LazyStringList) {
            collection = ((LazyStringList) collection).k0();
        }
        boolean zAddAll = this.f34199c.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
    public final Internal.ProtobufList c(int i2) {
        ArrayList arrayList = this.f34199c;
        if (i2 < arrayList.size()) {
            ct0.c();
            return null;
        }
        ArrayList arrayList2 = new ArrayList(i2);
        arrayList2.addAll(arrayList);
        return new LazyStringArrayList(arrayList2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        f();
        this.f34199c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        String str;
        ArrayList arrayList = this.f34199c;
        Object obj = arrayList.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof ByteString)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, Internal.f34190a);
            if (Utf8.f34271a.c(0, bArr.length, bArr)) {
                arrayList.set(i2, str2);
            }
            return str2;
        }
        ByteString byteString = (ByteString) obj;
        Charset charset = Internal.f34190a;
        if (byteString.size() == 0) {
            str = "";
        } else {
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            str = new String(literalByteString.f34148e, literalByteString.n(), literalByteString.size(), charset);
        }
        ByteString.LiteralByteString literalByteString2 = (ByteString.LiteralByteString) byteString;
        int iN = literalByteString2.n();
        byte[] bArr2 = literalByteString2.f34148e;
        if (Utf8.f34271a.c(iN, literalByteString2.size() + iN, bArr2)) {
            arrayList.set(i2, str);
        }
        return str;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final List k0() {
        return Collections.unmodifiableList(this.f34199c);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
    public final boolean m0() {
        return this.f34135b;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final LazyStringList q0() {
        return this.f34135b ? new UnmodifiableLazyStringList(this) : this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        Object objRemove = this.f34199c.remove(i2);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof ByteString)) {
            return new String((byte[]) objRemove, Internal.f34190a);
        }
        ByteString byteString = (ByteString) objRemove;
        Charset charset = Internal.f34190a;
        if (byteString.size() == 0) {
            return "";
        }
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        return new String(literalByteString.f34148e, literalByteString.n(), literalByteString.size(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        Object obj2 = this.f34199c.set(i2, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof ByteString)) {
            return new String((byte[]) obj2, Internal.f34190a);
        }
        ByteString byteString = (ByteString) obj2;
        Charset charset = Internal.f34190a;
        if (byteString.size() == 0) {
            return "";
        }
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        return new String(literalByteString.f34148e, literalByteString.n(), literalByteString.size(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34199c.size();
    }

    public LazyStringArrayList(int i2) {
        this(new ArrayList(i2));
    }

    public LazyStringArrayList() {
        this(10);
    }

    public LazyStringArrayList(List<String> list) {
        this(new ArrayList(list));
    }

    public LazyStringArrayList(ArrayList arrayList) {
        this.f34199c = arrayList;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f34199c.size(), collection);
    }
}
