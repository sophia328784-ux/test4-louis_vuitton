package androidx.emoji2.text;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f13062b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f13063a;

    public DefaultGlyphChecker() {
        TextPaint textPaint = new TextPaint();
        this.f13063a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
    public final boolean a(CharSequence charSequence, int i2, int i3) {
        ThreadLocal threadLocal = f13062b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        StringBuilder sb = (StringBuilder) threadLocal.get();
        sb.setLength(0);
        while (i2 < i3) {
            sb.append(charSequence.charAt(i2));
            i2++;
        }
        return this.f13063a.hasGlyph(sb.toString());
    }
}
