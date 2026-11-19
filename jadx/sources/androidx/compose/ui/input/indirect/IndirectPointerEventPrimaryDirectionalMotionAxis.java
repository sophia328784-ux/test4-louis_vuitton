package androidx.compose.ui.input.indirect;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "", "Companion", "value", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class IndirectPointerEventPrimaryDirectionalMotionAxis {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f9213b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f9214c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9215a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IndirectPointerEventPrimaryDirectionalMotionAxis) {
            return this.f9215a == ((IndirectPointerEventPrimaryDirectionalMotionAxis) obj).f9215a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9215a);
    }

    public final String toString() {
        return n00.q("IndirectPointerEventPrimaryDirectionalMotionAxis(value=", this.f9215a, ')');
    }
}
