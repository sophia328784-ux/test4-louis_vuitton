package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ValidatingOffsetMappingKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OffsetMapping f6039a = new ValidatingOffsetMapping(OffsetMapping.Companion.f10821a, 0, 0);

    public static final TransformedText a(VisualTransformation visualTransformation, AnnotatedString annotatedString) {
        TransformedText transformedTextH = visualTransformation.h(annotatedString);
        int length = annotatedString.f10420c.length();
        AnnotatedString annotatedString2 = transformedTextH.f10863a;
        OffsetMapping offsetMapping = transformedTextH.f10864b;
        int length2 = annotatedString2.f10420c.length();
        int iMin = Math.min(length, 100);
        for (int i2 = 0; i2 < iMin; i2++) {
            b(offsetMapping.b(i2), length2, i2);
        }
        b(offsetMapping.b(length), length2, length);
        int iMin2 = Math.min(length2, 100);
        for (int i3 = 0; i3 < iMin2; i3++) {
            c(offsetMapping.a(i3), length, i3);
        }
        c(offsetMapping.a(length2), length, length2);
        return new TransformedText(annotatedString2, new ValidatingOffsetMapping(offsetMapping, annotatedString.f10420c.length(), annotatedString2.f10420c.length()));
    }

    public static final void b(int i2, int i3, int i4) {
        boolean z = false;
        if (i2 >= 0 && i2 <= i3) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder sbP = fc.p(i4, i2, "OffsetMapping.originalToTransformed returned invalid mapping: ", " -> ", " is not in range of transformed text [0, ");
        sbP.append(i3);
        sbP.append(']');
        InlineClassHelperKt.c(sbP.toString());
    }

    public static final void c(int i2, int i3, int i4) {
        boolean z = false;
        if (i2 >= 0 && i2 <= i3) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder sbP = fc.p(i4, i2, "OffsetMapping.transformedToOriginal returned invalid mapping: ", " -> ", " is not in range of original text [0, ");
        sbP.append(i3);
        sbP.append(']');
        InlineClassHelperKt.c(sbP.toString());
    }
}
