package androidx.collection;

import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class ObjectListKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object[] f3348a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutableObjectList f3349b = new MutableObjectList(0);

    public static final void a(int i2, List list) {
        int size = list.size();
        if (i2 < 0 || i2 >= size) {
            az.v(fc.f(i2, size, "Index ", " is out of bounds. The list has ", " elements."));
        }
    }

    public static final void b(int i2, int i3, List list) {
        int size = list.size();
        if (i2 > i3) {
            md.n(fc.f(i2, i3, "Indices are out of order. fromIndex (", ") is greater than toIndex (", ")."));
            return;
        }
        if (i2 < 0) {
            az.v(n00.m(i2, "fromIndex (", ") is less than 0."));
            return;
        }
        if (i3 <= size) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is more than than the list size (" + size + ')');
    }
}
