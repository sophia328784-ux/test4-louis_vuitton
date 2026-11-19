package androidx.emoji2.viewsintegration;

import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class EmojiTextWatcher implements TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditText f13148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f13149c;
    public EmojiCompat.InitCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13150e = true;

    public static class InitCallbackImpl extends EmojiCompat.InitCallback implements Runnable {
        private final Reference<EditText> mViewRef;

        public InitCallbackImpl(EditText editText) {
            this.mViewRef = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            Handler handler;
            EditText editText = this.mViewRef.get();
            if (editText == null || (handler = editText.getHandler()) == null) {
                return;
            }
            handler.post(this);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            EmojiTextWatcher.a(this.mViewRef.get(), 1);
        }
    }

    public EmojiTextWatcher(EditText editText, boolean z) {
        this.f13148b = editText;
        this.f13149c = z;
    }

    public static void a(EditText editText, int i2) throws Throwable {
        int length;
        if (i2 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat emojiCompatA = EmojiCompat.a();
            if (editableText == null) {
                length = 0;
            } else {
                emojiCompatA.getClass();
                length = editableText.length();
            }
            emojiCompatA.j(0, length, 0, editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) throws Throwable {
        EditText editText = this.f13148b;
        if (editText.isInEditMode() || !this.f13150e) {
            return;
        }
        if ((this.f13149c || EmojiCompat.g()) && i3 <= i4 && (charSequence instanceof Spannable)) {
            int iD = EmojiCompat.a().d();
            if (iD != 0) {
                if (iD == 1) {
                    EmojiCompat.a().j(i2, i4 + i2, 0, (Spannable) charSequence);
                    return;
                } else if (iD != 3) {
                    return;
                }
            }
            EmojiCompat emojiCompatA = EmojiCompat.a();
            if (this.d == null) {
                this.d = new InitCallbackImpl(editText);
            }
            emojiCompatA.k(this.d);
        }
    }
}
