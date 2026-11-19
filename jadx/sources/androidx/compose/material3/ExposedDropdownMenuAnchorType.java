package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuAnchorType;", "", "Companion", "name", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class ExposedDropdownMenuAnchorType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f6913b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f6914c = "PrimaryNotEditable";
    public static final String d = "PrimaryEditable";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f6915e = "SecondaryEditable";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6916a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ExposedDropdownMenuAnchorType) {
            return Intrinsics.c(this.f6916a, ((ExposedDropdownMenuAnchorType) obj).f6916a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6916a.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF6916a() {
        return this.f6916a;
    }
}
