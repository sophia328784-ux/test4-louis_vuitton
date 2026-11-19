package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/TextUnit;", "", "Companion", "packedValue", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class TextUnit {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11023b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TextUnitType[] f11024c;
    public static final long d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11025a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/TextUnit$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        TextUnitType.Companion companion = TextUnitType.f11026b;
        companion.getClass();
        TextUnitType textUnitType = new TextUnitType(0L);
        companion.getClass();
        TextUnitType textUnitType2 = new TextUnitType(TextUnitType.f11027c);
        companion.getClass();
        f11024c = new TextUnitType[]{textUnitType, textUnitType2, new TextUnitType(TextUnitType.d)};
        d = TextUnitKt.d(Float.NaN, 0L);
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static final long b(long j2) {
        return f11024c[(int) ((j2 & 1095216660480L) >>> 32)].f11028a;
    }

    public static final float c(long j2) {
        return Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final boolean d(long j2) {
        return (j2 & 1095216660480L) == 8589934592L;
    }

    public static String e(long j2) {
        long jB = b(j2);
        TextUnitType.Companion companion = TextUnitType.f11026b;
        companion.getClass();
        if (TextUnitType.a(jB, 0L)) {
            return "Unspecified";
        }
        companion.getClass();
        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
            return c(j2) + ".sp";
        }
        companion.getClass();
        if (!TextUnitType.a(jB, TextUnitType.d)) {
            return "Invalid";
        }
        return c(j2) + ".em";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnit) {
            return this.f11025a == ((TextUnit) obj).f11025a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f11025a);
    }

    public final String toString() {
        return e(this.f11025a);
    }
}
