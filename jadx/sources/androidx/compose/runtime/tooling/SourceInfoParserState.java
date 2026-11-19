package androidx.compose.runtime.tooling;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/tooling/SourceInfoParserState;", "", "", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SourceInfoParserState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8571b;

    public SourceInfoParserState(String str) {
        this.f8570a = str;
    }

    public final boolean a() {
        return this.f8571b >= this.f8570a.length();
    }

    public final void b() throws ParseException {
        if (c(')')) {
            return;
        }
        f("expected )");
        throw null;
    }

    public final boolean c(char c2) {
        int i2 = this.f8571b;
        String str = this.f8570a;
        return i2 < str.length() && str.charAt(this.f8571b) == c2;
    }

    public final int d(String str) throws ParseException {
        Integer intOrNull = StringsKt.toIntOrNull(e(str));
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        f("expected int");
        throw null;
    }

    public final String e(String str) {
        String str2;
        int i2 = this.f8571b;
        while (true) {
            int i3 = this.f8571b;
            str2 = this.f8570a;
            if (i3 >= str2.length() || StringsKt.l(str, str2.charAt(this.f8571b))) {
                break;
            }
            this.f8571b++;
        }
        int i4 = this.f8571b;
        return i4 > i2 ? str2.substring(i2, i4) : "";
    }

    public final void f(String str) throws ParseException {
        int i2 = this.f8571b;
        String str2 = this.f8570a;
        int iMin = Math.min(i2, str2.length());
        StringBuilder sbR = pq0.r("Error while parsing source information: ", str, " at ");
        sbR.append(str2.substring(0, iMin));
        sbR.append('|');
        sbR.append(str2.substring(iMin));
        throw new ParseException(sbR.toString());
    }
}
