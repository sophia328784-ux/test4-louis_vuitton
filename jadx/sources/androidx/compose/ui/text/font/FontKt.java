package androidx.compose.ui.text.font;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FontKt {
    public static ResourceFont a(int i2, FontWeight fontWeight, int i3) {
        if ((i3 & 2) != 0) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle.f10715b.getClass();
        FontLoadingStrategy.f10712a.getClass();
        return new ResourceFont(i2, fontWeight2, 0, new FontVariation$Settings(new FontVariation$Setting[0]), 0, null);
    }
}
