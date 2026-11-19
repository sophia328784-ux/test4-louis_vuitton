package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/DpSize;", "", "Companion", "packedValue", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class DpSize {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11009b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f11010c = 9205357640488583168L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11011a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/DpSize$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final float a(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        Dp.Companion companion = Dp.f11004c;
        return fIntBitsToFloat;
    }

    public static final float b(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        Dp.Companion companion = Dp.f11004c;
        return fIntBitsToFloat;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DpSize) {
            return this.f11011a == ((DpSize) obj).f11011a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f11011a);
    }

    public final String toString() {
        long j2 = this.f11011a;
        if (j2 == 9205357640488583168L) {
            return "DpSize.Unspecified";
        }
        return ((Object) Dp.c(b(j2))) + " x " + ((Object) Dp.c(a(j2)));
    }
}
