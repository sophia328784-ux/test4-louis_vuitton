package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000*\u000e\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0004B\u001b\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/semantics/AccessibilityAction;", "Lkotlin/Function;", "", "T", "", "", "label", "action", "<init>", "(Ljava/lang/String;Lkotlin/Function;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccessibilityAction<T extends Function<? extends Boolean>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function f10270b;

    public AccessibilityAction(String str, T t) {
        this.f10269a = str;
        this.f10270b = t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        return Intrinsics.c(this.f10269a, accessibilityAction.f10269a) && Intrinsics.c(this.f10270b, accessibilityAction.f10270b);
    }

    public final int hashCode() {
        String str = this.f10269a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Function function = this.f10270b;
        return iHashCode + (function != null ? function.hashCode() : 0);
    }

    public final String toString() {
        return "AccessibilityAction(label=" + this.f10269a + ", action=" + this.f10270b + ')';
    }
}
