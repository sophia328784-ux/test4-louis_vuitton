package kotlinx.datetime.internal;

import defpackage.az;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class UtilKt {
    public static final boolean a(char c2) {
        return '0' <= c2 && c2 < ':';
    }

    public static final String b(String str) {
        int iU;
        CharSequence charSequenceSubSequence;
        str.getClass();
        String string = str.toString();
        if (string.length() < 18 || !StringsKt.l("+-", string.charAt(0)) || (iU = StringsKt.u(string, '-', 1, 4)) < 12) {
            return string;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (string.charAt(i3) != '0') {
                break;
            }
            i2 = i3;
        }
        if (iU - i2 >= 12) {
            return string;
        }
        int i4 = iU - 10;
        if (i4 < 1) {
            az.v(n00.m(i4, "End index (", ") is less than start index (1)."));
            return null;
        }
        if (i4 == 1) {
            charSequenceSubSequence = string.subSequence(0, string.length());
        } else {
            StringBuilder sb = new StringBuilder(string.length() - (iU - 11));
            sb.append((CharSequence) string, 0, 1);
            sb.append((CharSequence) string, i4, string.length());
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }
}
