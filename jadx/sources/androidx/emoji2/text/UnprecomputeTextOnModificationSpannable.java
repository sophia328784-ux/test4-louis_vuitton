package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
class UnprecomputeTextOnModificationSpannable implements Spannable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f13122b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Spannable f13123c;

    public UnprecomputeTextOnModificationSpannable(Spannable spannable) {
        this.f13123c = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i2) {
        return this.f13123c.charAt(i2);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.f13123c.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.f13123c.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f13123c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f13123c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f13123c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i2, int i3, Class cls) {
        return this.f13123c.getSpans(i2, i3, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f13123c.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i2, int i3, Class cls) {
        return this.f13123c.nextSpanTransition(i2, i3, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        Spannable spannable = this.f13123c;
        if (!this.f13122b && ((spannable instanceof PrecomputedText) || (spannable instanceof PrecomputedTextCompat))) {
            this.f13123c = new SpannableString(spannable);
        }
        this.f13122b = true;
        this.f13123c.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i2, int i3, int i4) {
        Spannable spannable = this.f13123c;
        if (!this.f13122b && ((spannable instanceof PrecomputedText) || (spannable instanceof PrecomputedTextCompat))) {
            this.f13123c = new SpannableString(spannable);
        }
        this.f13122b = true;
        this.f13123c.setSpan(obj, i2, i3, i4);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i2, int i3) {
        return this.f13123c.subSequence(i2, i3);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f13123c.toString();
    }
}
