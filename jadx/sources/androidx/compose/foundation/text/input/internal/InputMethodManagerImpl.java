package androidx.compose.foundation.text.input.internal;

import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import defpackage.ss;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;", "Landroidx/compose/foundation/text/input/internal/InputMethodManager;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InputMethodManagerImpl implements InputMethodManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f6208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f6209b = LazyKt.a(LazyThreadSafetyMode.NONE, new ss(this, 23));

    public InputMethodManagerImpl(View view) {
        this.f6208a = view;
        new SoftwareKeyboardControllerCompat(view);
    }

    @Override // androidx.compose.foundation.text.input.internal.InputMethodManager
    public final void a(int i2, int i3, int i4, int i5) {
        c().updateSelection(this.f6208a, i2, i3, i4, i5);
    }

    @Override // androidx.compose.foundation.text.input.internal.InputMethodManager
    public final void b() {
        c().restartInput(this.f6208a);
    }

    public final android.view.inputmethod.InputMethodManager c() {
        return (android.view.inputmethod.InputMethodManager) this.f6209b.getF71699b();
    }

    @Override // androidx.compose.foundation.text.input.internal.InputMethodManager
    public final boolean isActive() {
        return c().isActive(this.f6208a);
    }

    @Override // androidx.compose.foundation.text.input.internal.InputMethodManager
    public final void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
        c().updateCursorAnchorInfo(this.f6208a, cursorAnchorInfo);
    }

    @Override // androidx.compose.foundation.text.input.internal.InputMethodManager
    public final void updateExtractedText(int i2, ExtractedText extractedText) {
        c().updateExtractedText(this.f6208a, i2, extractedText);
    }
}
