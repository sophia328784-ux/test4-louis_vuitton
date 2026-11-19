package okhttp3.internal;

import com.linkplay.medialib.ContentTree;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _HeadersCommonKt {
    public static final void a(Headers.Builder builder, String str, String str2) {
        builder.getClass();
        str.getClass();
        str2.getClass();
        ArrayList arrayList = builder.f76917a;
        arrayList.add(str);
        arrayList.add(StringsKt.a0(str2).toString());
    }

    public static final void b(String str) {
        str.getClass();
        if (str.length() <= 0) {
            md.n("name is empty");
            return;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if ('!' > cCharAt || cCharAt >= 127) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                String string = Integer.toString(cCharAt, CharsKt.checkRadix(16));
                string.getClass();
                if (string.length() < 2) {
                    string = ContentTree.ROOT_ID.concat(string);
                }
                sb.append(string);
                sb.append(" at ");
                sb.append(i2);
                sb.append(" in header name: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static final void c(String str, String str2) {
        str.getClass();
        str2.getClass();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                String string = Integer.toString(cCharAt, CharsKt.checkRadix(16));
                string.getClass();
                if (string.length() < 2) {
                    string = ContentTree.ROOT_ID.concat(string);
                }
                sb.append(string);
                sb.append(" at ");
                sb.append(i2);
                sb.append(" in ");
                sb.append(str2);
                sb.append(" value");
                sb.append(_UtilCommonKt.m(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }
}
