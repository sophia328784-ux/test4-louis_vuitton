package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/TextUnitType;", "", "Companion", "type", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class TextUnitType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11026b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f11027c = 4294967296L;
    public static final long d = 8589934592L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11028a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/TextUnitType$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ TextUnitType(long j2) {
        this.f11028a = j2;
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static String b(long j2) {
        if (a(j2, 0L)) {
            return "Unspecified";
        }
        if (a(j2, f11027c)) {
            return "Sp";
        }
        return a(j2, d) ? "Em" : "Invalid";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnitType) {
            return this.f11028a == ((TextUnitType) obj).f11028a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f11028a);
    }

    public final String toString() {
        return b(this.f11028a);
    }
}
