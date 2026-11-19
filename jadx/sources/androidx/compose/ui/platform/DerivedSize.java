package androidx.compose.ui.platform;

import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/DerivedSize;", "", "Landroidx/compose/ui/unit/IntSize;", "pxSize", "Landroidx/compose/ui/unit/DpSize;", "dpSize", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DerivedSize {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f10063c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10065b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/platform/DerivedSize$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        IntSize.f11020b.getClass();
        DpSize.f11009b.getClass();
        new DerivedSize(0L, 0L, null);
    }

    public DerivedSize(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10064a = j2;
        this.f10065b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DerivedSize) {
            DerivedSize derivedSize = (DerivedSize) obj;
            return IntSize.b(this.f10064a, derivedSize.f10064a) && this.f10065b == derivedSize.f10065b;
        }
        return false;
    }

    public final int hashCode() {
        IntSize.Companion companion = IntSize.f11020b;
        int iHashCode = Long.hashCode(this.f10064a) * 31;
        DpSize.Companion companion2 = DpSize.f11009b;
        return Long.hashCode(this.f10065b) + iHashCode;
    }
}
