package androidx.collection;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/collection/IntIntPair;", "", "packedValue", "", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
public final class IntIntPair {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3254a;

    public static long a(int i2, int i3) {
        return (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntIntPair) {
            return this.f3254a == ((IntIntPair) obj).f3254a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f3254a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        long j2 = this.f3254a;
        sb.append((int) (j2 >> 32));
        sb.append(", ");
        return tr.k(sb, (int) (j2 & BodyPartID.bodyIdMax), ')');
    }
}
