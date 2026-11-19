package defpackage;

import android.os.CancellationSignal;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.text.TextRange;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ro implements CancellationSignal.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f79576b;

    public /* synthetic */ ro(Object obj, int i2) {
        this.f79575a = i2;
        this.f79576b = obj;
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public final void onCancel() {
        int i2 = this.f79575a;
        Object obj = this.f79576b;
        switch (i2) {
            case 0:
                ((Job) obj).cancel(null);
                break;
            default:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj;
                if (textFieldSelectionManager != null) {
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                    if (legacyTextFieldState != null) {
                        TextRange.f10564b.getClass();
                        legacyTextFieldState.e(TextRange.f10565c);
                    }
                    LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                    if (legacyTextFieldState2 != null) {
                        TextRange.f10564b.getClass();
                        legacyTextFieldState2.f(TextRange.f10565c);
                    }
                }
                break;
        }
    }
}
