package androidx.compose.foundation.text;

import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldDelegateKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5964a = StringsKt.H(10, "H");

    public static final long a(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i2) {
        EmptyList emptyList = EmptyList.f71768b;
        TextOverflow.f10989a.getClass();
        AndroidParagraph androidParagraphA = ParagraphKt.a(str, textStyle, ConstraintsKt.b(0, 0, 0, 0, 15), density, resolver, emptyList, i2, TextOverflow.f10990b, 64);
        long jA = (((long) TextDelegateKt.a(androidParagraphA.f10413a.c())) << 32) | (((long) TextDelegateKt.a(androidParagraphA.getHeight())) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return jA;
    }
}
