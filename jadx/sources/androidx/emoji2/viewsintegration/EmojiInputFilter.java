package androidx.emoji2.viewsintegration;

import android.os.Handler;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class EmojiInputFilter implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f13139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EmojiCompat.InitCallback f13140b;

    public static class InitCallbackImpl extends EmojiCompat.InitCallback implements Runnable {
        private final Reference<EmojiInputFilter> mEmojiInputFilterReference;
        private final Reference<TextView> mViewRef;

        public InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.mViewRef = new WeakReference(textView);
            this.mEmojiInputFilterReference = new WeakReference(emojiInputFilter);
        }

        private boolean isInputFilterCurrentlyRegisteredOnTextView(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            Handler handler;
            TextView textView = this.mViewRef.get();
            if (textView == null || (handler = textView.getHandler()) == null) {
                return;
            }
            handler.post(this);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            int length;
            TextView textView = this.mViewRef.get();
            if (isInputFilterCurrentlyRegisteredOnTextView(textView, this.mEmojiInputFilterReference.get()) && textView.isAttachedToWindow()) {
                CharSequence text = textView.getText();
                EmojiCompat emojiCompatA = EmojiCompat.a();
                if (text == null) {
                    length = 0;
                } else {
                    emojiCompatA.getClass();
                    length = text.length();
                }
                CharSequence charSequenceJ = emojiCompatA.j(0, length, 0, text);
                if (text == charSequenceJ) {
                    return;
                }
                int selectionStart = Selection.getSelectionStart(charSequenceJ);
                int selectionEnd = Selection.getSelectionEnd(charSequenceJ);
                textView.setText(charSequenceJ);
                if (charSequenceJ instanceof Spannable) {
                    Spannable spannable = (Spannable) charSequenceJ;
                    if (selectionStart >= 0 && selectionEnd >= 0) {
                        Selection.setSelection(spannable, selectionStart, selectionEnd);
                    } else if (selectionStart >= 0) {
                        Selection.setSelection(spannable, selectionStart);
                    } else if (selectionEnd >= 0) {
                        Selection.setSelection(spannable, selectionEnd);
                    }
                }
            }
        }
    }

    public EmojiInputFilter(TextView textView) {
        this.f13139a = textView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
    
        if (r1 != 3) goto L27;
     */
    @Override // android.text.InputFilter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence filter(java.lang.CharSequence r4, int r5, int r6, android.text.Spanned r7, int r8, int r9) {
        /*
            r3 = this;
            android.widget.TextView r0 = r3.f13139a
            boolean r1 = r0.isInEditMode()
            if (r1 == 0) goto L9
            goto L48
        L9:
            androidx.emoji2.text.EmojiCompat r1 = androidx.emoji2.text.EmojiCompat.a()
            int r1 = r1.d()
            if (r1 == 0) goto L49
            r2 = 1
            if (r1 == r2) goto L1a
            r5 = 3
            if (r1 == r5) goto L49
            goto L48
        L1a:
            if (r9 != 0) goto L2b
            if (r8 != 0) goto L2b
            int r3 = r7.length()
            if (r3 != 0) goto L2b
            java.lang.CharSequence r3 = r0.getText()
            if (r4 != r3) goto L2b
            goto L48
        L2b:
            if (r4 == 0) goto L48
            if (r5 != 0) goto L36
            int r3 = r4.length()
            if (r6 != r3) goto L36
            goto L3a
        L36:
            java.lang.CharSequence r4 = r4.subSequence(r5, r6)
        L3a:
            androidx.emoji2.text.EmojiCompat r3 = androidx.emoji2.text.EmojiCompat.a()
            int r5 = r4.length()
            r6 = 0
            java.lang.CharSequence r3 = r3.j(r6, r5, r6, r4)
            return r3
        L48:
            return r4
        L49:
            androidx.emoji2.text.EmojiCompat r5 = androidx.emoji2.text.EmojiCompat.a()
            androidx.emoji2.text.EmojiCompat$InitCallback r6 = r3.f13140b
            if (r6 != 0) goto L58
            androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl r6 = new androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl
            r6.<init>(r0, r3)
            r3.f13140b = r6
        L58:
            androidx.emoji2.text.EmojiCompat$InitCallback r3 = r3.f13140b
            r5.k(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.viewsintegration.EmojiInputFilter.filter(java.lang.CharSequence, int, int, android.text.Spanned, int, int):java.lang.CharSequence");
    }
}
