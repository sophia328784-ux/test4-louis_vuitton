package androidx.paging;

import defpackage.fc;
import defpackage.no0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.AbstractList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0002B)\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/paging/ItemSnapshotList;", "T", "Lkotlin/collections/AbstractList;", "", "placeholdersBefore", "placeholdersAfter", "", "items", "<init>", "(IILjava/util/List;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ItemSnapshotList<T> extends AbstractList<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18631c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f18632e;

    public ItemSnapshotList(int i2, int i3, List<? extends T> list) {
        list.getClass();
        this.f18631c = i2;
        this.d = i3;
        this.f18632e = list;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF8300e() {
        return this.f18632e.size() + this.f18631c + this.d;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        int i3 = this.f18631c;
        if (i2 >= 0 && i2 < i3) {
            return null;
        }
        List list = this.f18632e;
        if (i2 < list.size() + i3 && i3 <= i2) {
            return list.get(i2 - i3);
        }
        int size = list.size() + i3;
        if (i2 < getF8300e() && size <= i2) {
            return null;
        }
        no0.s(fc.q(i2, "Illegal attempt to access index ", " in ItemSnapshotList of size "), getF8300e());
        return null;
    }
}
