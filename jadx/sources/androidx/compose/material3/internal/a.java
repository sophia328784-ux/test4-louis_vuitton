package androidx.compose.material3.internal;

import android.view.accessibility.AccessibilityManager;
import androidx.compose.material3.TooltipState;
import androidx.compose.ui.focus.FocusState;
import androidx.lifecycle.Lifecycle;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7684c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f7683b = i2;
        this.f7684c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f7683b;
        Object obj2 = this.d;
        Object obj3 = this.f7684c;
        switch (i2) {
            case 0:
                Listener listener = (Listener) obj3;
                AccessibilityManager accessibilityManager = (AccessibilityManager) obj2;
                if (((Lifecycle.Event) obj) == Lifecycle.Event.ON_RESUME) {
                    listener.r(accessibilityManager);
                }
                break;
            default:
                BuildersKt.c((CoroutineScope) obj3, null, null, new BasicTooltipKt$keyboardBehavior$1$1((FocusState) obj, (TooltipState) obj2, null), 3);
                break;
        }
        return Unit.f71739a;
    }
}
