package androidx.databinding.adapters;

import android.text.Spanned;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class TextViewBindingAdapter {

    public interface AfterTextChanged {
    }

    public interface BeforeTextChanged {
    }

    public interface OnTextChanged {
    }

    public static void a(TextView textView, String str) {
        CharSequence text = textView.getText();
        if (str != text) {
            if (str == null && text.length() == 0) {
                return;
            }
            if (!(str instanceof Spanned)) {
                if ((str == null) == (text == null)) {
                    if (str == null) {
                        return;
                    }
                    int length = str.length();
                    if (length == text.length()) {
                        for (int i2 = 0; i2 < length; i2++) {
                            if (str.charAt(i2) == text.charAt(i2)) {
                            }
                        }
                        return;
                    }
                }
            } else if (str.equals(text)) {
                return;
            }
            textView.setText(str);
        }
    }
}
