package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "", "packedValue", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class GridItemSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f5271a;

    public final boolean equals(Object obj) {
        if (obj instanceof GridItemSpan) {
            return this.f5271a == ((GridItemSpan) obj).f5271a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f5271a);
    }

    public final String toString() {
        return "GridItemSpan(packedValue=" + this.f5271a + ')';
    }
}
