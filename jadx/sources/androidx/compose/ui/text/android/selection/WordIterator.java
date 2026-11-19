package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.emoji2.text.EmojiCompat;
import defpackage.fc;
import java.text.BreakIterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/android/selection/WordIterator;", "", "", "charSequence", "", "start", "end", "Ljava/util/Locale;", "locale", "<init>", "(Ljava/lang/CharSequence;IILjava/util/Locale;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WordIterator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f10623e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f10624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10626c;
    public final BreakIterator d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/android/selection/WordIterator$Companion;", "", "", "WINDOW_WIDTH", "I", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a(int i2) {
            int type = Character.getType(i2);
            return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
        }
    }

    public WordIterator(CharSequence charSequence, int i2, int i3, Locale locale) {
        this.f10624a = charSequence;
        if (!(i2 >= 0 && i2 <= charSequence.length())) {
            InlineClassHelperKt.a("input start index is outside the CharSequence");
        }
        if (!(i3 >= 0 && i3 <= charSequence.length())) {
            InlineClassHelperKt.a("input end index is outside the CharSequence");
        }
        BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
        this.d = wordInstance;
        this.f10625b = Math.max(0, i2 - 50);
        this.f10626c = Math.min(charSequence.length(), i3 + 50);
        wordInstance.setText(new CharSequenceCharacterIterator(charSequence, i2, i3));
    }

    public final void a(int i2) {
        boolean z = false;
        int i3 = this.f10625b;
        int i4 = this.f10626c;
        if (i2 <= i4 && i3 <= i2) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder sbP = fc.p(i2, i3, "Invalid offset: ", ". Valid range is [", " , ");
        sbP.append(i4);
        sbP.append(']');
        InlineClassHelperKt.a(sbP.toString());
    }

    public final boolean b(int i2) {
        int i3 = this.f10625b + 1;
        if (i2 > this.f10626c || i3 > i2) {
            return false;
        }
        CharSequence charSequence = this.f10624a;
        if (!Character.isLetterOrDigit(Character.codePointBefore(charSequence, i2))) {
            int i4 = i2 - 1;
            if (!Character.isSurrogate(charSequence.charAt(i4))) {
                if (!EmojiCompat.g()) {
                    return false;
                }
                EmojiCompat emojiCompatA = EmojiCompat.a();
                if (emojiCompatA.d() != 1 || emojiCompatA.c(charSequence, i4) == -1) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean c(int i2) {
        int i3 = this.f10625b + 1;
        if (i2 > this.f10626c || i3 > i2) {
            return false;
        }
        int iCodePointBefore = Character.codePointBefore(this.f10624a, i2);
        f10623e.getClass();
        return Companion.a(iCodePointBefore);
    }

    public final boolean d(int i2) {
        a(i2);
        if (!this.d.isBoundary(i2)) {
            return false;
        }
        if (f(i2) && f(i2 - 1) && f(i2 + 1)) {
            return false;
        }
        return i2 <= 0 || i2 >= this.f10624a.length() - 1 || !(e(i2) || e(i2 + 1));
    }

    public final boolean e(int i2) {
        int i3 = i2 - 1;
        CharSequence charSequence = this.f10624a;
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(charSequence.charAt(i3));
        Character.UnicodeBlock unicodeBlock = Character.UnicodeBlock.HIRAGANA;
        if (Intrinsics.c(unicodeBlockOf, unicodeBlock) && Intrinsics.c(Character.UnicodeBlock.of(charSequence.charAt(i2)), Character.UnicodeBlock.KATAKANA)) {
            return true;
        }
        return Intrinsics.c(Character.UnicodeBlock.of(charSequence.charAt(i2)), unicodeBlock) && Intrinsics.c(Character.UnicodeBlock.of(charSequence.charAt(i3)), Character.UnicodeBlock.KATAKANA);
    }

    public final boolean f(int i2) {
        if (i2 >= this.f10626c || this.f10625b > i2) {
            return false;
        }
        CharSequence charSequence = this.f10624a;
        if (!Character.isLetterOrDigit(Character.codePointAt(charSequence, i2)) && !Character.isSurrogate(charSequence.charAt(i2))) {
            if (!EmojiCompat.g()) {
                return false;
            }
            EmojiCompat emojiCompatA = EmojiCompat.a();
            if (emojiCompatA.d() != 1 || emojiCompatA.c(charSequence, i2) == -1) {
                return false;
            }
        }
        return true;
    }

    public final boolean g(int i2) {
        if (i2 >= this.f10626c || this.f10625b > i2) {
            return false;
        }
        int iCodePointAt = Character.codePointAt(this.f10624a, i2);
        f10623e.getClass();
        return Companion.a(iCodePointAt);
    }

    public final int h(int i2) {
        a(i2);
        int iFollowing = this.d.following(i2);
        return (f(iFollowing + (-1)) && f(iFollowing) && !e(iFollowing)) ? h(iFollowing) : iFollowing;
    }

    public final int i(int i2) {
        a(i2);
        int iPreceding = this.d.preceding(i2);
        return (f(iPreceding) && b(iPreceding) && !e(iPreceding)) ? i(iPreceding) : iPreceding;
    }
}
