package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.r81;
import java.io.UnsupportedEncodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class LazyStringArrayList extends AbstractList<String> implements RandomAccess, LazyStringList {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnmodifiableLazyStringList f73744c = new UnmodifiableLazyStringList(new LazyStringArrayList());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f73745b;

    public LazyStringArrayList(LazyStringList lazyStringList) {
        this.f73745b = new ArrayList(lazyStringList.size());
        addAll(lazyStringList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final void E0(ByteString byteString) {
        this.f73745b.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final ByteString H(int i2) {
        ByteString literalByteString;
        ArrayList arrayList = this.f73745b;
        Object obj = arrayList.get(i2);
        if (obj instanceof ByteString) {
            literalByteString = (ByteString) obj;
        } else if (obj instanceof String) {
            literalByteString = ByteString.f((String) obj);
        } else {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            literalByteString = new LiteralByteString(bArr2);
        }
        if (literalByteString != obj) {
            arrayList.set(i2, literalByteString);
        }
        return literalByteString;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        this.f73745b.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        if (collection instanceof LazyStringList) {
            collection = ((LazyStringList) collection).k0();
        }
        boolean zAddAll = this.f73745b.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f73745b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        ArrayList arrayList = this.f73745b;
        Object obj = arrayList.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String strU = byteString.u();
            if (byteString.o()) {
                arrayList.set(i2, strU);
            }
            return strU;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = Internal.f73742a;
        try {
            String str = new String(bArr, "UTF-8");
            if (Utf8.c(0, bArr.length, bArr) == 0) {
                arrayList.set(i2, str);
            }
            return str;
        } catch (UnsupportedEncodingException e2) {
            r81.g("UTF-8 not supported?", e2);
            return null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final List k0() {
        return Collections.unmodifiableList(this.f73745b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final UnmodifiableLazyStringList q0() {
        return new UnmodifiableLazyStringList(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        Object objRemove = this.f73745b.remove(i2);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (objRemove instanceof ByteString) {
            return ((ByteString) objRemove).u();
        }
        byte[] bArr = (byte[]) objRemove;
        byte[] bArr2 = Internal.f73742a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            r81.g("UTF-8 not supported?", e2);
            return null;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        Object obj2 = this.f73745b.set(i2, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof ByteString) {
            return ((ByteString) obj2).u();
        }
        byte[] bArr = (byte[]) obj2;
        byte[] bArr2 = Internal.f73742a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            r81.g("UTF-8 not supported?", e2);
            return null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f73745b.size();
    }

    public LazyStringArrayList() {
        this.f73745b = new ArrayList();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f73745b.size(), collection);
    }
}
