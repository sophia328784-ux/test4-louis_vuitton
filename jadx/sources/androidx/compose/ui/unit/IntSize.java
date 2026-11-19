package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/IntSize;", "", "Companion", "packedValue", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class IntSize {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11020b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11021a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntSize$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static boolean a(long j2, Object obj) {
        return (obj instanceof IntSize) && j2 == ((IntSize) obj).f11021a;
    }

    public static final boolean b(long j2, long j3) {
        return j2 == j3;
    }

    public static String c(long j2) {
        return ((int) (j2 >> 32)) + " x " + ((int) (j2 & BodyPartID.bodyIdMax));
    }

    public final boolean equals(Object obj) {
        return a(this.f11021a, obj);
    }

    public final int hashCode() {
        return Long.hashCode(this.f11021a);
    }

    public final String toString() {
        return c(this.f11021a);
    }
}
