package androidx.compose.material3.tokens;

import androidx.compose.material3.internal.DefaultPlatformTextStyle_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.LineHeightStyle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TypographyTokensKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TextStyle f7910a;

    static {
        LineHeightStyle.Alignment.f10948b.getClass();
        float f2 = LineHeightStyle.Alignment.f10949c;
        LineHeightStyle.Trim.f10955b.getClass();
        LineHeightStyle lineHeightStyle = new LineHeightStyle(f2, 0, null);
        TextStyle.d.getClass();
        f7910a = TextStyle.a(TextStyle.f10567e, 0L, 0L, null, null, 0L, null, 0, 0, 0L, DefaultPlatformTextStyle_androidKt.f7601a, lineHeightStyle, 15204351);
    }
}
