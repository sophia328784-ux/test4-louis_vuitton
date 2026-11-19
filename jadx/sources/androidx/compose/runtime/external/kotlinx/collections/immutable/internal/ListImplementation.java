package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ListImplementation {
    public static final void a(int i2, int i3) {
        if (i2 < 0 || i2 >= i3) {
            az.v(o60.h(i2, i3, "index: ", ", size: "));
        }
    }

    public static final void b(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            az.v(o60.h(i2, i3, "index: ", ", size: "));
        }
    }

    public static final void c(int i2, int i3, int i4) {
        if (i2 < 0 || i3 > i4) {
            no0.s(fc.p(i2, i3, "fromIndex: ", ", toIndex: ", ", size: "), i4);
        } else {
            if (i2 <= i3) {
                return;
            }
            md.n(o60.h(i2, i3, "fromIndex: ", " > toIndex: "));
        }
    }
}
