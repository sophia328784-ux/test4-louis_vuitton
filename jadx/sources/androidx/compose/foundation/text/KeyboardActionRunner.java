package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.ImeAction;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/KeyboardActionRunner;", "Landroidx/compose/foundation/text/KeyboardActionScope;", "Landroidx/compose/ui/platform/SoftwareKeyboardController;", "keyboardController", "<init>", "(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyboardActionRunner implements KeyboardActionScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SoftwareKeyboardController f5909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KeyboardActions f5910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FocusManager f5911c;

    public KeyboardActionRunner(SoftwareKeyboardController softwareKeyboardController) {
        this.f5909a = softwareKeyboardController;
    }

    public final KeyboardActions a() {
        KeyboardActions keyboardActions = this.f5910b;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.h("keyboardActions");
        throw null;
    }

    public final boolean b(int i2) {
        Function1 function1;
        SoftwareKeyboardController softwareKeyboardController;
        ImeAction.f10785b.getClass();
        int i3 = ImeAction.f10791j;
        if (i2 == i3) {
            function1 = a().f5913a;
        } else if (i2 == ImeAction.f10787e) {
            function1 = a().f5914b;
        } else if (i2 == ImeAction.f10790i) {
            function1 = a().f5915c;
        } else if (i2 == ImeAction.f10789h) {
            function1 = a().d;
        } else if (i2 == ImeAction.f10788f) {
            function1 = a().f5916e;
        } else if (i2 == ImeAction.g) {
            function1 = a().f5917f;
        } else {
            if (i2 != ImeAction.d && i2 != 0) {
                md.k("invalid ImeAction");
                return false;
            }
            function1 = null;
        }
        if (function1 != null) {
            function1.invoke(this);
            return true;
        }
        if (i2 == ImeAction.f10790i) {
            FocusManager focusManager = this.f5911c;
            if (focusManager == null) {
                Intrinsics.h("focusManager");
                throw null;
            }
            FocusDirection.f8731b.getClass();
            focusManager.e(FocusDirection.f8732c);
            return true;
        }
        if (i2 != ImeAction.f10789h) {
            if (i2 != i3 || (softwareKeyboardController = this.f5909a) == null) {
                return false;
            }
            softwareKeyboardController.b();
            return true;
        }
        FocusManager focusManager2 = this.f5911c;
        if (focusManager2 == null) {
            Intrinsics.h("focusManager");
            throw null;
        }
        FocusDirection.f8731b.getClass();
        focusManager2.e(FocusDirection.d);
        return true;
    }
}
