package androidx.compose.ui.text.input;

import android.R;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import androidx.compose.ui.text.TextRange;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/input/RecordingInputConnection;", "Landroid/view/inputmethod/InputConnection;", "Landroidx/compose/ui/text/input/TextFieldValue;", "initState", "Landroidx/compose/ui/text/input/InputEventCallback2;", "eventCallback", "", "autoCorrect", "<init>", "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecordingInputConnection implements InputConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputEventCallback2 f10827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f10828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10829c;
    public TextFieldValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10831f;
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10832h = true;

    public RecordingInputConnection(TextFieldValue textFieldValue, InputEventCallback2 inputEventCallback2, boolean z) {
        this.f10827a = inputEventCallback2;
        this.f10828b = z;
        this.d = textFieldValue;
    }

    public final void b(EditCommand editCommand) {
        this.f10829c++;
        try {
            this.g.add(editCommand);
        } finally {
            c();
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        boolean z = this.f10832h;
        if (!z) {
            return z;
        }
        this.f10829c++;
        return true;
    }

    public final boolean c() {
        int i2 = this.f10829c - 1;
        this.f10829c = i2;
        if (i2 == 0) {
            ArrayList arrayList = this.g;
            if (!arrayList.isEmpty()) {
                this.f10827a.b(new ArrayList(arrayList));
                arrayList.clear();
            }
        }
        return this.f10829c > 0;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i2) {
        boolean z = this.f10832h;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final void closeConnection() {
        this.g.clear();
        this.f10829c = 0;
        this.f10832h = false;
        this.f10827a.e(this);
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCompletion(CompletionInfo completionInfo) {
        boolean z = this.f10832h;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        boolean z = this.f10832h;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCorrection(CorrectionInfo correctionInfo) {
        boolean z = this.f10832h;
        return z ? this.f10828b : z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i2) {
        boolean z = this.f10832h;
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
        boolean z = this.f10832h;
        if (!z) {
            return z;
        }
        b(new DeleteSurroundingTextCommand(i2, i3));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        boolean z = this.f10832h;
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
        boolean z = this.f10832h;
        if (!z) {
            return z;
        }
        b(new FinishComposingTextCommand());
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final int getCursorCapsMode(int i2) {
        TextFieldValue textFieldValue = this.d;
        return TextUtils.getCapsMode(textFieldValue.f10840a.f10420c, TextRange.f(textFieldValue.f10841b), i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public final ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        boolean z = (i2 & 1) != 0;
        this.f10831f = z;
        if (z) {
            this.f10830e = extractedTextRequest != null ? extractedTextRequest.token : 0;
        }
        return InputState_androidKt.a(this.d);
    }

    @Override // android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i2) {
        if (TextRange.c(this.d.f10841b)) {
            return null;
        }
        return TextFieldValueKt.a(this.d).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i2, int i3) {
        return TextFieldValueKt.b(this.d, i2).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i2, int i3) {
        return TextFieldValueKt.c(this.d, i2).f10420c;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i2) {
        boolean z = this.f10832h;
        if (z) {
            z = false;
            switch (i2) {
                case R.id.selectAll:
                    b(new SetSelectionCommand(0, this.d.f10840a.f10420c.length()));
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
        boolean z = this.f10832h;
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
        this.f10827a.d(i3);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z = this.f10832h;
        if (z) {
            return true;
        }
        return z;
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
        boolean z5 = this.f10832h;
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
        this.f10827a.c(z7, z8, z3, z4, z, z2);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean sendKeyEvent(KeyEvent keyEvent) {
        boolean z = this.f10832h;
        if (!z) {
            return z;
        }
        this.f10827a.a(keyEvent);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i2, int i3) {
        boolean z = this.f10832h;
        if (z) {
            b(new SetComposingRegionCommand(i2, i3));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i2) {
        boolean z = this.f10832h;
        if (z) {
            b(new SetComposingTextCommand(String.valueOf(charSequence), i2));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setSelection(int i2, int i3) {
        boolean z = this.f10832h;
        if (!z) {
            return z;
        }
        b(new SetSelectionCommand(i2, i3));
        return true;
    }
}
