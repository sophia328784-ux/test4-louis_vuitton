package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/android/style/TextDecorationSpan;", "Landroid/text/style/CharacterStyle;", "", "isUnderlineText", "isStrikethroughText", "<init>", "(ZZ)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextDecorationSpan extends CharacterStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f10656b;

    public TextDecorationSpan(boolean z, boolean z2) {
        this.f10655a = z;
        this.f10656b = z2;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setUnderlineText(this.f10655a);
        textPaint.setStrikeThruText(this.f10656b);
    }
}
