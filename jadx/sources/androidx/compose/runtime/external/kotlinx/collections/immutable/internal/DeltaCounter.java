package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import com.batch.android.s.b;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;", "", "", b.a.f24018f, "<init>", "(I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DeltaCounter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8366a;

    public /* synthetic */ DeltaCounter(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeltaCounter) && this.f8366a == ((DeltaCounter) obj).f8366a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8366a);
    }

    public final String toString() {
        return tr.k(new StringBuilder("DeltaCounter(count="), this.f8366a, ')');
    }

    public DeltaCounter(int i2) {
        this.f8366a = i2;
    }

    public DeltaCounter() {
        this(0, 1, null);
    }
}
