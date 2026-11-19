package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldValueKt {
    public static final AnnotatedString a(TextFieldValue textFieldValue) {
        AnnotatedString annotatedString = textFieldValue.f10840a;
        long j2 = textFieldValue.f10841b;
        annotatedString.getClass();
        return annotatedString.subSequence(TextRange.f(j2), TextRange.e(j2));
    }

    public static final AnnotatedString b(TextFieldValue textFieldValue, int i2) {
        AnnotatedString annotatedString = textFieldValue.f10840a;
        AnnotatedString annotatedString2 = textFieldValue.f10840a;
        long j2 = textFieldValue.f10841b;
        int iE = TextRange.e(j2);
        int iE2 = TextRange.e(j2);
        int length = iE2 + i2;
        if (((i2 ^ length) & (iE2 ^ length)) < 0) {
            length = annotatedString2.f10420c.length();
        }
        return annotatedString.subSequence(iE, Math.min(length, annotatedString2.f10420c.length()));
    }

    public static final AnnotatedString c(TextFieldValue textFieldValue, int i2) {
        AnnotatedString annotatedString = textFieldValue.f10840a;
        long j2 = textFieldValue.f10841b;
        int iF = TextRange.f(j2);
        int i3 = iF - i2;
        if (((iF ^ i3) & (i2 ^ iF)) < 0) {
            i3 = 0;
        }
        return annotatedString.subSequence(Math.max(0, i3), TextRange.f(j2));
    }
}
