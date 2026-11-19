package androidx.compose.ui.text.input;

import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/input/InputMethodManagerImpl;", "Landroidx/compose/ui/text/input/InputMethodManager;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InputMethodManagerImpl implements InputMethodManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f10800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f10801b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<android.view.inputmethod.InputMethodManager>() { // from class: androidx.compose.ui.text.input.InputMethodManagerImpl$imm$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Object systemService = this.f10803c.f10800a.getContext().getSystemService("input_method");
            systemService.getClass();
            return (android.view.inputmethod.InputMethodManager) systemService;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SoftwareKeyboardControllerCompat f10802c;

    public InputMethodManagerImpl(View view) {
        this.f10800a = view;
        this.f10802c = new SoftwareKeyboardControllerCompat(view);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void a(int i2, int i3, int i4, int i5) {
        ((android.view.inputmethod.InputMethodManager) this.f10801b.getF71699b()).updateSelection(this.f10800a, i2, i3, i4, i5);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void b() {
        ((android.view.inputmethod.InputMethodManager) this.f10801b.getF71699b()).restartInput(this.f10800a);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void c() {
        this.f10802c.b();
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void d() {
        this.f10802c.a();
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final boolean isActive() {
        return ((android.view.inputmethod.InputMethodManager) this.f10801b.getF71699b()).isActive(this.f10800a);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
        ((android.view.inputmethod.InputMethodManager) this.f10801b.getF71699b()).updateCursorAnchorInfo(this.f10800a, cursorAnchorInfo);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public final void updateExtractedText(int i2, ExtractedText extractedText) {
        ((android.view.inputmethod.InputMethodManager) this.f10801b.getF71699b()).updateExtractedText(this.f10800a, i2, extractedText);
    }
}
