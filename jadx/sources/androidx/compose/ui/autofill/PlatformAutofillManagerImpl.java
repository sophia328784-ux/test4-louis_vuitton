package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.view.View;
import android.view.autofill.AutofillValue;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;", "Landroidx/compose/ui/autofill/PlatformAutofillManager;", "Landroid/view/autofill/AutofillManager;", "platformAndroidManager", "<init>", "(Landroid/view/autofill/AutofillManager;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformAutofillManagerImpl implements PlatformAutofillManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.autofill.AutofillManager f8659a;

    public PlatformAutofillManagerImpl(android.view.autofill.AutofillManager autofillManager) {
        this.f8659a = autofillManager;
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void a(View view, int i2, AutofillValue autofillValue) {
        this.f8659a.notifyValueChanged(view, i2, autofillValue);
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void b(int i2, View view) {
        this.f8659a.notifyViewExited(view, i2);
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void c(View view, int i2, Rect rect) {
        this.f8659a.requestAutofill(view, i2, rect);
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void commit() {
        this.f8659a.commit();
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void d(View view, int i2, boolean z) {
        this.f8659a.notifyViewVisibilityChanged(view, i2, z);
    }

    @Override // androidx.compose.ui.autofill.PlatformAutofillManager
    public final void e(View view, int i2, Rect rect) {
        this.f8659a.notifyViewEntered(view, i2, rect);
    }
}
