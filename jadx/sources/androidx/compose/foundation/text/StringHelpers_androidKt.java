package androidx.compose.foundation.text;

import androidx.emoji2.text.EmojiCompat;
import java.text.BreakIterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StringHelpers_androidKt {
    public static final int a(int i2, String str) {
        EmojiCompat emojiCompatC = c();
        Integer num = null;
        if (emojiCompatC != null) {
            int iB = emojiCompatC.b(i2, str);
            Integer numValueOf = Integer.valueOf(iB);
            if (iB != -1) {
                num = numValueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.following(i2);
    }

    public static final int b(int i2, String str) {
        EmojiCompat emojiCompatC = c();
        Integer num = null;
        if (emojiCompatC != null) {
            Integer numValueOf = Integer.valueOf(emojiCompatC.c(str, Math.max(0, i2 - 1)));
            if (numValueOf.intValue() != -1) {
                num = numValueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.preceding(i2);
    }

    public static final EmojiCompat c() {
        if (!EmojiCompat.g()) {
            return null;
        }
        EmojiCompat emojiCompatA = EmojiCompat.a();
        if (emojiCompatA.d() == 1) {
            return emojiCompatA;
        }
        return null;
    }
}
