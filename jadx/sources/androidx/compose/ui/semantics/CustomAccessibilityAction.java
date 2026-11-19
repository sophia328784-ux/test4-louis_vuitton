package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "", "", "label", "Lkotlin/Function0;", "", "action", "<init>", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomAccessibilityAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f10280b;

    public CustomAccessibilityAction(String str, Function0<Boolean> function0) {
        this.f10279a = str;
        this.f10280b = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) obj;
        return Intrinsics.c(this.f10279a, customAccessibilityAction.f10279a) && this.f10280b == customAccessibilityAction.f10280b;
    }

    public final int hashCode() {
        return this.f10280b.hashCode() + (this.f10279a.hashCode() * 31);
    }

    public final String toString() {
        return "CustomAccessibilityAction(label=" + this.f10279a + ", action=" + this.f10280b + ')';
    }
}
