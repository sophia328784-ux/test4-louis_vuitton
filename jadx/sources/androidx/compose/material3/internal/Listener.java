package androidx.compose.material3.internal;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0003\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/internal/Listener;", "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;", "Landroidx/compose/runtime/State;", "", "listenToTouchExplorationState", "listenToSwitchAccessState", "listenToVoiceAccessState", "<init>", "(ZZZ)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class Listener implements AccessibilityManager.AccessibilityStateChangeListener, State<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f7634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7635c;
    public final MutableState d = SnapshotStateKt.g(Boolean.FALSE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Listener$touchExplorationListener$1 f7636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Listener$otherA11yServicesListener$1 f7637f;

    public Listener(boolean z, boolean z2, boolean z3) {
        this.f7634b = z2;
        this.f7635c = z3;
        Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1 = null;
        this.f7636e = z ? new Listener$touchExplorationListener$1() : null;
        if ((z2 || z3) && Build.VERSION.SDK_INT >= 33) {
            listener$otherA11yServicesListener$1 = new Listener$otherA11yServicesListener$1(this);
        }
        this.f7637f = listener$otherA11yServicesListener$1;
    }

    public static boolean h(AccessibilityManager accessibilityManager) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16);
        int size = enabledAccessibilityServiceList.size();
        for (int i2 = 0; i2 < size; i2++) {
            String settingsActivityName = enabledAccessibilityServiceList.get(i2).getSettingsActivityName();
            if (settingsActivityName != null && StringsKt.k(settingsActivityName, "SwitchAccess", true)) {
                return true;
            }
        }
        return false;
    }

    public static boolean j(AccessibilityManager accessibilityManager) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16);
        int size = enabledAccessibilityServiceList.size();
        for (int i2 = 0; i2 < size; i2++) {
            String settingsActivityName = enabledAccessibilityServiceList.get(i2).getSettingsActivityName();
            if (settingsActivityName != null && StringsKt.k(settingsActivityName, "VoiceAccess", true)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        boolean z;
        if (((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue()) {
            z = true;
            Listener$touchExplorationListener$1 listener$touchExplorationListener$1 = this.f7636e;
            if (listener$touchExplorationListener$1 == null || !((Boolean) ((SnapshotMutableStateImpl) listener$touchExplorationListener$1.f7640b).getF10755b()).booleanValue()) {
                boolean z2 = this.f7634b;
                Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1 = this.f7637f;
                if ((!z2 || listener$otherA11yServicesListener$1 == null || !((Boolean) ((SnapshotMutableStateImpl) listener$otherA11yServicesListener$1.f7638a).getF10755b()).booleanValue()) && (!this.f7635c || listener$otherA11yServicesListener$1 == null || !((Boolean) ((SnapshotMutableStateImpl) listener$otherA11yServicesListener$1.f7639b).getF10755b()).booleanValue())) {
                    z = false;
                }
            }
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        ((SnapshotMutableStateImpl) this.d).setValue(Boolean.valueOf(z));
    }

    public final void r(AccessibilityManager accessibilityManager) {
        Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1;
        ((SnapshotMutableStateImpl) this.d).setValue(Boolean.valueOf(accessibilityManager.isEnabled()));
        accessibilityManager.addAccessibilityStateChangeListener(this);
        Listener$touchExplorationListener$1 listener$touchExplorationListener$1 = this.f7636e;
        if (listener$touchExplorationListener$1 != null) {
            ((SnapshotMutableStateImpl) listener$touchExplorationListener$1.f7640b).setValue(Boolean.valueOf(accessibilityManager.isTouchExplorationEnabled()));
            accessibilityManager.addTouchExplorationStateChangeListener(listener$touchExplorationListener$1);
        }
        if (Build.VERSION.SDK_INT < 33 || (listener$otherA11yServicesListener$1 = this.f7637f) == null) {
            return;
        }
        ((SnapshotMutableStateImpl) listener$otherA11yServicesListener$1.f7638a).setValue(Boolean.valueOf(h(accessibilityManager)));
        ((SnapshotMutableStateImpl) listener$otherA11yServicesListener$1.f7639b).setValue(Boolean.valueOf(j(accessibilityManager)));
        accessibilityManager.addAccessibilityServicesStateChangeListener(listener$otherA11yServicesListener$1);
    }

    public final void s(AccessibilityManager accessibilityManager) {
        Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        Listener$touchExplorationListener$1 listener$touchExplorationListener$1 = this.f7636e;
        if (listener$touchExplorationListener$1 != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(listener$touchExplorationListener$1);
        }
        if (Build.VERSION.SDK_INT < 33 || (listener$otherA11yServicesListener$1 = this.f7637f) == null) {
            return;
        }
        accessibilityManager.removeAccessibilityServicesStateChangeListener(listener$otherA11yServicesListener$1);
    }
}
