package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/CanFocusChecker;", "Landroidx/compose/ui/focus/FocusProperties;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CanFocusChecker implements FocusProperties {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CanFocusChecker f9638b = new CanFocusChecker();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f9639c;

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void b(boolean z) {
        f9639c = Boolean.valueOf(z);
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    /* JADX INFO: renamed from: d */
    public final boolean getF8764b() {
        Boolean bool = f9639c;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw a.s("canFocus is read before it is written");
    }
}
