package androidx.compose.ui.text.input;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/input/PlatformImeOptions;", "", "", "privateImeOptions", "<init>", "(Ljava/lang/String;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformImeOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10826a;

    public /* synthetic */ PlatformImeOptions(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlatformImeOptions) {
            return Intrinsics.c(this.f10826a, ((PlatformImeOptions) obj).f10826a);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f10826a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return fc.l(new StringBuilder("PlatformImeOptions(privateImeOptions="), this.f10826a, ')');
    }

    public PlatformImeOptions(String str) {
        this.f10826a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlatformImeOptions() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
