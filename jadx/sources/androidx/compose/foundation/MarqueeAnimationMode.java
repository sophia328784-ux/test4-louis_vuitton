package androidx.compose.foundation;

import defpackage.no0;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/MarqueeAnimationMode;", "", "Companion", "value", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class MarqueeAnimationMode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f4246b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f4247c = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4248a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/MarqueeAnimationMode$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 0) {
            return "Immediately";
        }
        if (i2 == f4247c) {
            return "WhileFocused";
        }
        no0.i(i2, "invalid value: ");
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MarqueeAnimationMode) {
            return this.f4248a == ((MarqueeAnimationMode) obj).f4248a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f4248a);
    }

    public final String toString() {
        return a(this.f4248a);
    }
}
