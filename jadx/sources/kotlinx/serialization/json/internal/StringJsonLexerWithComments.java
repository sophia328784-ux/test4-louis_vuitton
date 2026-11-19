package kotlinx.serialization.json.internal;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;", "Lkotlinx/serialization/json/internal/StringJsonLexer;", "", Payload.SOURCE, "<init>", "(Ljava/lang/String;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StringJsonLexerWithComments extends StringJsonLexer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringJsonLexerWithComments(String str) {
        super(str);
        str.getClass();
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public final boolean b() {
        char cCharAt;
        int iT = t();
        String str = this.f75832e;
        return (iT >= str.length() || iT == -1 || (cCharAt = str.charAt(iT)) == ',' || cCharAt == ':' || cCharAt == ']' || cCharAt == '}') ? false : true;
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public final byte e() {
        int iT = t();
        String str = this.f75832e;
        if (iT >= str.length() || iT == -1) {
            return (byte) 10;
        }
        this.f75765a = iT + 1;
        return AbstractJsonLexerKt.a(str.charAt(iT));
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public final void g(char c2) {
        int iT = t();
        String str = this.f75832e;
        if (iT >= str.length() || iT == -1) {
            this.f75765a = -1;
            w(c2);
            throw null;
        }
        char cCharAt = str.charAt(iT);
        this.f75765a = iT + 1;
        if (cCharAt == c2) {
            return;
        }
        w(c2);
        throw null;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final byte q() {
        int iT = t();
        String str = this.f75832e;
        if (iT >= str.length() || iT == -1) {
            return (byte) 10;
        }
        this.f75765a = iT;
        return AbstractJsonLexerKt.a(str.charAt(iT));
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public final int t() {
        int i2;
        int iU = this.f75765a;
        if (iU == -1) {
            return iU;
        }
        while (true) {
            String str = this.f75832e;
            if (iU >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(iU);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt != '/' || (i2 = iU + 1) >= str.length()) {
                    break;
                }
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == '*') {
                    int iV = StringsKt.v(str, "*/", iU + 2, false, 4);
                    if (iV == -1) {
                        this.f75765a = str.length();
                        AbstractJsonLexer.m(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6);
                        throw null;
                    }
                    iU = iV + 2;
                } else {
                    if (cCharAt2 != '/') {
                        break;
                    }
                    iU = StringsKt.u(str, '\n', iU + 2, 4);
                    if (iU == -1) {
                        iU = str.length();
                    }
                }
            }
            iU++;
        }
        this.f75765a = iU;
        return iU;
    }
}
