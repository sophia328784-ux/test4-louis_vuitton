package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;

/* JADX INFO: loaded from: classes.dex */
class AppCompatEmojiTextHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EmojiTextViewHelper f1138b;

    public AppCompatEmojiTextHelper(TextView textView) {
        this.f1137a = textView;
        this.f1138b = new EmojiTextViewHelper(textView, false);
    }

    public final void a(AttributeSet attributeSet, int i2) {
        TypedArray typedArrayObtainStyledAttributes = this.f1137a.getContext().obtainStyledAttributes(attributeSet, R$styleable.f782i, i2, 0);
        try {
            boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            c(z);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(boolean z) {
        this.f1138b.c(z);
    }

    public final void c(boolean z) {
        this.f1138b.d(z);
    }
}
