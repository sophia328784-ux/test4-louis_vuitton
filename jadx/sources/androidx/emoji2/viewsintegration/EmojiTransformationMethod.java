package androidx.emoji2.viewsintegration;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes.dex */
class EmojiTransformationMethod implements TransformationMethod {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TransformationMethod f13151b;

    public EmojiTransformationMethod(TransformationMethod transformationMethod) {
        this.f13151b = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f13151b;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null || EmojiCompat.a().d() != 1) {
            return charSequence;
        }
        EmojiCompat emojiCompatA = EmojiCompat.a();
        emojiCompatA.getClass();
        return emojiCompatA.j(0, charSequence.length(), 0, charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i2, Rect rect) {
        TransformationMethod transformationMethod = this.f13151b;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i2, rect);
        }
    }
}
