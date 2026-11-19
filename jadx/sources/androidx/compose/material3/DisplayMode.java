package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/material3/DisplayMode;", "", "Companion", "value", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class DisplayMode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f6900b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6901c = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6902a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/DisplayMode$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DisplayMode) {
            return this.f6902a == ((DisplayMode) obj).f6902a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6902a);
    }

    public final String toString() {
        int i2 = this.f6902a;
        if (i2 == 0) {
            return "Picker";
        }
        return i2 == f6901c ? "Input" : "Unknown";
    }
}
