package androidx.compose.ui.unit;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/IntOffset;", "", "Companion", "packedValue", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class IntOffset {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11012b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f11013c = 9223372034707292159L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11014a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntOffset$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static long a(int i2, int i3, int i4, long j2) {
        if ((i4 & 1) != 0) {
            i2 = (int) (j2 >> 32);
        }
        if ((i4 & 2) != 0) {
            i3 = (int) (j2 & BodyPartID.bodyIdMax);
        }
        return (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
    }

    public static final boolean b(long j2, long j3) {
        return j2 == j3;
    }

    public static final long c(long j2, long j3) {
        return (((long) (((int) (j2 >> 32)) - ((int) (j3 >> 32)))) << 32) | (((long) (((int) (j2 & BodyPartID.bodyIdMax)) - ((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
    }

    public static final long d(long j2, long j3) {
        return (((long) (((int) (j2 >> 32)) + ((int) (j3 >> 32)))) << 32) | (((long) (((int) (j2 & BodyPartID.bodyIdMax)) + ((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
    }

    public static String e(long j2) {
        StringBuilder sb = new StringBuilder("(");
        sb.append((int) (j2 >> 32));
        sb.append(", ");
        return tr.k(sb, (int) (j2 & BodyPartID.bodyIdMax), ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntOffset) {
            return this.f11014a == ((IntOffset) obj).f11014a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f11014a);
    }

    public final String toString() {
        return e(this.f11014a);
    }
}
