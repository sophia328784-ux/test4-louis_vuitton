package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.MutableState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f2 implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69015c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f2(Object obj, Object obj2, int i2) {
        this.f69014b = i2;
        this.f69015c = obj;
        this.d = obj2;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        int i2 = this.f69014b;
        Object obj = this.d;
        Object obj2 = this.f69015c;
        switch (i2) {
            case 0:
                ((MutableState) obj).setValue(Boolean.valueOf(((AccessibilityManager) obj2).isEnabled() && z));
                break;
            case 1:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) obj2;
                View view = (View) obj;
                if (z && hideBottomViewOnScrollBehavior.f32315k == 1) {
                    hideBottomViewOnScrollBehavior.w(view);
                    break;
                }
                break;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) obj2;
                View view2 = (View) obj;
                if (hideViewOnScrollBehavior.f32320e && z && hideViewOnScrollBehavior.l == 1) {
                    hideViewOnScrollBehavior.x(view2);
                    break;
                }
                break;
        }
    }
}
