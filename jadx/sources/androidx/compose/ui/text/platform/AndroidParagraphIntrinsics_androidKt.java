package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidParagraphIntrinsics_androidKt {
    public static final boolean a(TextStyle textStyle) {
        PlatformParagraphStyle platformParagraphStyle;
        PlatformTextStyle platformTextStyle = textStyle.platformStyle;
        EmojiSupportMatch emojiSupportMatch = (platformTextStyle == null || (platformParagraphStyle = platformTextStyle.f10503b) == null) ? null : new EmojiSupportMatch(platformParagraphStyle.f10499b);
        EmojiSupportMatch.f10450b.getClass();
        int i2 = EmojiSupportMatch.f10451c;
        boolean z = false;
        if (emojiSupportMatch != null && emojiSupportMatch.f10452a == i2) {
            z = true;
        }
        return !z;
    }
}
