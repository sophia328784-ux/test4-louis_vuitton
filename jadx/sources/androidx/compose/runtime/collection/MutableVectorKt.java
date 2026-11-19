package androidx.compose.runtime.collection;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0007\u0010\u0005\u001a\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\u0005¨\u0006\f"}, d2 = {"", "index", "size", "", "c", "(II)V", "toIndex", "e", "fromIndex", NBSSpanMetricUnit.Day, "(I)V", "f", "runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MutableVectorKt {
    public static final void a(int i2, List list) {
        int size = list.size();
        if (i2 < 0 || i2 >= size) {
            c(i2, size);
        }
    }

    public static final void b(int i2, int i3, List list) {
        if (i2 > i3) {
            f(i2, i3);
        }
        if (i2 < 0) {
            d(i2);
        }
        if (i3 > list.size()) {
            e(i3, list.size());
        }
    }

    private static final void c(int i2, int i3) {
        throw new IndexOutOfBoundsException(fc.f(i2, i3, "Index ", " is out of bounds. The list has ", " elements."));
    }

    private static final void d(int i2) {
        throw new IndexOutOfBoundsException(n00.m(i2, "fromIndex (", ") is less than 0."));
    }

    private static final void e(int i2, int i3) {
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is more than than the list size (" + i3 + ')');
    }

    private static final void f(int i2, int i3) {
        throw new IllegalArgumentException(fc.f(i2, i3, "Indices are out of order. fromIndex (", ") is greater than toIndex (", ")."));
    }
}
