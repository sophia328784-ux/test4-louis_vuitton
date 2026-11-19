package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ParagraphKt {
    public static AndroidParagraph a(String str, TextStyle textStyle, long j2, Density density, FontFamily.Resolver resolver, EmptyList emptyList, int i2, int i3, int i4) {
        return new AndroidParagraph(new AndroidParagraphIntrinsics(str, textStyle, (i4 & 32) != 0 ? EmptyList.f71768b : emptyList, EmptyList.f71768b, resolver, density), i2, i3, j2, null);
    }

    public static final int b(float f2) {
        return (int) Math.ceil(f2);
    }
}
