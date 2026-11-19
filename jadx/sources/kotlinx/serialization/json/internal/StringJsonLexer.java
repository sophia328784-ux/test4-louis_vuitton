package kotlinx.serialization.json.internal;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/StringJsonLexer;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "", Payload.SOURCE, "<init>", "(Ljava/lang/String;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class StringJsonLexer extends AbstractJsonLexer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f75832e;

    public StringJsonLexer(String str) {
        str.getClass();
        this.f75832e = str;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean b() {
        int i2 = this.f75765a;
        if (i2 == -1) {
            return false;
        }
        while (true) {
            String str = this.f75832e;
            if (i2 >= str.length()) {
                this.f75765a = i2;
                return false;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f75765a = i2;
                return (cCharAt == ',' || cCharAt == ':' || cCharAt == ']' || cCharAt == '}') ? false : true;
            }
            i2++;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String d() {
        String string;
        g('\"');
        int i2 = this.f75765a;
        String str = this.f75832e;
        int iU = StringsKt.u(str, '\"', i2, 4);
        if (iU == -1) {
            j();
            int i3 = this.f75765a;
            AbstractJsonLexer.m(this, fc.h("Expected quotation mark '\"', but had '", (i3 == str.length() || i3 < 0) ? "EOF" : String.valueOf(str.charAt(i3)), "' instead"), i3, null, 4);
            throw null;
        }
        int i4 = i2;
        while (i4 < iU) {
            if (str.charAt(i4) == '\\') {
                int iS = this.f75765a;
                char cCharAt = str.charAt(i4);
                boolean z = false;
                while (true) {
                    StringBuilder sb = this.d;
                    if (cCharAt == '\"') {
                        if (z) {
                            sb.append((CharSequence) getF75832e(), iS, i4);
                            string = sb.toString();
                            sb.setLength(0);
                        } else {
                            string = getF75832e().subSequence(iS, i4).toString();
                        }
                        this.f75765a = i4 + 1;
                        return string;
                    }
                    if (cCharAt == '\\') {
                        sb.append((CharSequence) getF75832e(), iS, i4);
                        int iS2 = s(i4 + 1);
                        if (iS2 == -1) {
                            AbstractJsonLexer.m(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                            throw null;
                        }
                        int iA = iS2 + 1;
                        char cCharAt2 = str.charAt(iS2);
                        if (cCharAt2 == 'u') {
                            iA = a(str, iA);
                        } else {
                            char c2 = cCharAt2 < 'u' ? CharMappings.f75775a[cCharAt2] : (char) 0;
                            if (c2 == 0) {
                                AbstractJsonLexer.m(this, "Invalid escaped char '" + cCharAt2 + '\'', 0, null, 6);
                                throw null;
                            }
                            sb.append(c2);
                        }
                        iS = s(iA);
                        if (iS == -1) {
                            AbstractJsonLexer.m(this, "Unexpected EOF", iS, null, 4);
                            throw null;
                        }
                    } else {
                        i4++;
                        if (i4 >= str.length()) {
                            sb.append((CharSequence) getF75832e(), iS, i4);
                            iS = s(i4);
                            if (iS == -1) {
                                AbstractJsonLexer.m(this, "Unexpected EOF", iS, null, 4);
                                throw null;
                            }
                        } else {
                            continue;
                        }
                        cCharAt = str.charAt(i4);
                    }
                    i4 = iS;
                    z = true;
                    cCharAt = str.charAt(i4);
                }
            } else {
                i4++;
            }
        }
        this.f75765a = iU + 1;
        return str.substring(i2, iU);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte e() {
        String str;
        int i2 = this.f75765a;
        while (true) {
            str = this.f75832e;
            if (i2 == -1 || i2 >= str.length()) {
                break;
            }
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f75765a = i3;
                return AbstractJsonLexerKt.a(cCharAt);
            }
            i2 = i3;
        }
        this.f75765a = str.length();
        return (byte) 10;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void g(char c2) {
        int i2 = this.f75765a;
        if (i2 == -1) {
            w(c2);
            throw null;
        }
        while (true) {
            String str = this.f75832e;
            if (i2 >= str.length()) {
                this.f75765a = -1;
                w(c2);
                throw null;
            }
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f75765a = i3;
                if (cCharAt == c2) {
                    return;
                }
                w(c2);
                throw null;
            }
            i2 = i3;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    /* JADX INFO: renamed from: o, reason: from getter */
    public final String getF75832e() {
        return this.f75832e;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String p(String str, boolean z) {
        str.getClass();
        int i2 = this.f75765a;
        try {
            if (e() == 6 && Intrinsics.c(r(z), str)) {
                this.f75767c = null;
                if (e() == 5) {
                    return r(z);
                }
            }
            return null;
        } finally {
            this.f75765a = i2;
            this.f75767c = null;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final int s(int i2) {
        if (i2 < this.f75832e.length()) {
            return i2;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int t() {
        char cCharAt;
        int i2 = this.f75765a;
        if (i2 == -1) {
            return i2;
        }
        while (true) {
            String str = this.f75832e;
            if (i2 >= str.length() || !((cCharAt = str.charAt(i2)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i2++;
        }
        this.f75765a = i2;
        return i2;
    }
}
