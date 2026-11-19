package androidx.compose.material3.internal;

import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager$AccessibilityServicesStateChangeListener;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/material3/internal/Listener$otherA11yServicesListener$1", "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Listener$otherA11yServicesListener$1 implements AccessibilityManager$AccessibilityServicesStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f7638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f7639b;

    public Listener$otherA11yServicesListener$1(Listener listener) {
        Boolean bool = Boolean.FALSE;
        this.f7638a = SnapshotStateKt.g(bool);
        this.f7639b = SnapshotStateKt.g(bool);
    }

    public final void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager) {
        ((SnapshotMutableStateImpl) this.f7638a).setValue(Boolean.valueOf(Listener.h(accessibilityManager)));
        ((SnapshotMutableStateImpl) this.f7639b).setValue(Boolean.valueOf(Listener.j(accessibilityManager)));
    }
}
