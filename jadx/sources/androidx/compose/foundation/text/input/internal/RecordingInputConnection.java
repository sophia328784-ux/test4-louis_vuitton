package androidx.compose.foundation.text.input.internal;

import android.R;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.PreviewableHandwritingGesture;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import defpackage.t6;
import defpackage.xo0;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;", "Landroid/view/inputmethod/InputConnection;", "Landroidx/compose/ui/text/input/TextFieldValue;", "initState", "Landroidx/compose/foundation/text/input/internal/InputEventCallback2;", "eventCallback", "", "autoCorrect", "Landroidx/compose/foundation/text/LegacyTextFieldState;", "legacyTextFieldState", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "textFieldSelectionManager", "Landroidx/compose/ui/platform/ViewConfiguration;", "viewConfiguration", "<init>", "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/InputEventCallback2;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecordingInputConnection implements InputConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputEventCallback2 f6236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LegacyTextFieldState f6238c;
    public final TextFieldSelectionManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewConfiguration f6239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6240f;
    public TextFieldValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f6243j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6244k;

    public RecordingInputConnection(TextFieldValue textFieldValue, InputEventCallback2 inputEventCallback2, boolean z, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration) {
        this.f6236a = inputEventCallback2;
        this.f6237b = z;
        this.f6238c = legacyTextFieldState;
        this.d = textFieldSelectionManager;
        this.f6239e = viewConfiguration;
        this.g = textFieldValue;
        this.f6243j = new ArrayList();
        this.f6244k = true;
    }

    public final void b(EditCommand editCommand) {
        this.f6240f++;
        try {
            this.f6243j.add(editCommand);
        } finally {
            c();
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        this.f6240f++;
        return true;
    }

    public final boolean c() {
        int i2 = this.f6240f - 1;
        this.f6240f = i2;
        if (i2 == 0) {
            ArrayList arrayList = this.f6243j;
            if (!arrayList.isEmpty()) {
                this.f6236a.b(new ArrayList(arrayList));
                arrayList.clear();
            }
        }
        return this.f6240f > 0;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i2) {
        boolean z = this.f6244k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final void closeConnection() {
        this.f6243j.clear();
        this.f6240f = 0;
        this.f6244k = false;
        this.f6236a.e(this);
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCompletion(CompletionInfo completionInfo) {
        boolean z = this.f6244k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        boolean z = this.f6244k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCorrection(CorrectionInfo correctionInfo) {
        boolean z = this.f6244k;
        return z ? this.f6237b : z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i2) {
        boolean z = this.f6244k;
        if (z) {
            b(new CommitTextCommand(String.valueOf(charSequence), i2));
        }
        return z;
    }

    public final void d(int i2) {
        sendKeyEvent(new KeyEvent(0, i2));
        sendKeyEvent(new KeyEvent(1, i2));
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i2, int i3) {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        b(new DeleteSurroundingTextCommand(i2, i3));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        b(new DeleteSurroundingTextInCodePointsCommand(i2, i3));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean endBatchEdit() {
        return c();
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean finishComposingText() {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        b(new FinishComposingTextCommand());
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final int getCursorCapsMode(int i2) {
        TextFieldValue textFieldValue = this.g;
        return TextUtils.getCapsMode(textFieldValue.f10840a.f10420c, TextRange.f(textFieldValue.f10841b), i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public final ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        boolean z = (i2 & 1) != 0;
        this.f6242i = z;
        if (z) {
            this.f6241h = extractedTextRequest != null ? extractedTextRequest.token : 0;
        }
        return RecordingInputConnection_androidKt.a(this.g);
    }

    @Override // android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i2) {
        if (TextRange.c(this.g.f10841b)) {
            return null;
        }
        return TextFieldValueKt.a(this.g).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i2, int i3) {
        return TextFieldValueKt.b(this.g, i2).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i2, int i3) {
        return TextFieldValueKt.c(this.g, i2).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i2) {
        boolean z = this.f6244k;
        if (z) {
            z = false;
            switch (i2) {
                case R.id.selectAll:
                    b(new SetSelectionCommand(0, this.g.f10840a.f10420c.length()));
                    break;
                case R.id.cut:
                    d(277);
                    return false;
                case R.id.copy:
                    d(278);
                    return false;
                case R.id.paste:
                    d(279);
                    return false;
                default:
                    return false;
            }
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performEditorAction(int i2) {
        int i3;
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        if (i2 != 0) {
            switch (i2) {
                case 2:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.f10787e;
                    break;
                case 3:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.f10788f;
                    break;
                case 4:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.g;
                    break;
                case 5:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.f10790i;
                    break;
                case 6:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.f10791j;
                    break;
                case 7:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.f10789h;
                    break;
                default:
                    ImeAction.f10785b.getClass();
                    i3 = ImeAction.d;
                    break;
            }
        } else {
            ImeAction.f10785b.getClass();
            i3 = ImeAction.d;
        }
        this.f6236a.d(i3);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final void performHandwritingGesture(HandwritingGesture handwritingGesture, Executor executor, IntConsumer intConsumer) {
        if (Build.VERSION.SDK_INT >= 34) {
            xo0 xo0Var = new xo0(this, 6);
            LegacyTextFieldState legacyTextFieldState = this.f6238c;
            int iC = legacyTextFieldState != null ? HandwritingGestureApi34.c(legacyTextFieldState, handwritingGesture, this.d, this.f6239e, xo0Var) : 3;
            if (intConsumer == null) {
                return;
            }
            if (executor != null) {
                executor.execute(new t6(intConsumer, iC, 0));
            } else {
                intConsumer.accept(iC);
            }
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z = this.f6244k;
        if (z) {
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean previewHandwritingGesture(PreviewableHandwritingGesture previewableHandwritingGesture, CancellationSignal cancellationSignal) {
        LegacyTextFieldState legacyTextFieldState;
        if (Build.VERSION.SDK_INT < 34 || (legacyTextFieldState = this.f6238c) == null) {
            return false;
        }
        return HandwritingGestureApi34.d(legacyTextFieldState, previewableHandwritingGesture, this.d, cancellationSignal);
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean reportFullscreenMode(boolean z) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean requestCursorUpdates(int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = this.f6244k;
        if (!z5) {
            return z5;
        }
        boolean z6 = false;
        boolean z7 = (i2 & 1) != 0;
        boolean z8 = (i2 & 2) != 0;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 33) {
            boolean z9 = (i2 & 16) != 0;
            boolean z10 = (i2 & 8) != 0;
            boolean z11 = (i2 & 4) != 0;
            if (i3 >= 34 && (i2 & 32) != 0) {
                z6 = true;
            }
            if (z9 || z10 || z11 || z6) {
                z2 = z6;
                z = z11;
                z4 = z10;
                z3 = z9;
            } else if (i3 >= 34) {
                z3 = true;
                z4 = true;
                z = true;
                z2 = true;
            } else {
                z2 = z6;
                z3 = true;
                z4 = true;
                z = true;
            }
        } else {
            z = false;
            z2 = false;
            z3 = true;
            z4 = true;
        }
        this.f6236a.c(z7, z8, z3, z4, z, z2);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean sendKeyEvent(KeyEvent keyEvent) {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        this.f6236a.a(keyEvent);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i2, int i3) {
        boolean z = this.f6244k;
        if (z) {
            b(new SetComposingRegionCommand(i2, i3));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i2) {
        boolean z = this.f6244k;
        if (z) {
            b(new SetComposingTextCommand(String.valueOf(charSequence), i2));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setSelection(int i2, int i3) {
        boolean z = this.f6244k;
        if (!z) {
            return z;
        }
        b(new SetSelectionCommand(i2, i3));
        return true;
    }

    public /* synthetic */ RecordingInputConnection(TextFieldValue textFieldValue, InputEventCallback2 inputEventCallback2, boolean z, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(textFieldValue, inputEventCallback2, z, (i2 & 8) != 0 ? null : legacyTextFieldState, (i2 & 16) != 0 ? null : textFieldSelectionManager, (i2 & 32) != 0 ? null : viewConfiguration);
    }
}
