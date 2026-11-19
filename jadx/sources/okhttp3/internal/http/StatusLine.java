package okhttp3.internal.http;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/StatusLine;", "", "Lokhttp3/Protocol;", "protocol", "", m.v, "", "message", "<init>", "(Lokhttp3/Protocol;ILjava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StatusLine {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Protocol f77181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f77183c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/StatusLine$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static StatusLine a(String str) throws ProtocolException {
            Protocol protocol;
            int i2;
            String strSubstring;
            if (StringsKt.P(str, "HTTP/1.", false)) {
                i2 = 9;
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                    protocol = Protocol.HTTP_1_1;
                }
            } else if (StringsKt.P(str, "ICY ", false)) {
                protocol = Protocol.HTTP_1_0;
                i2 = 4;
            } else {
                if (!StringsKt.P(str, "SOURCETABLE ", false)) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                protocol = Protocol.HTTP_1_1;
                i2 = 12;
            }
            int i3 = i2 + 3;
            if (str.length() < i3) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            Integer intOrNull = StringsKt.toIntOrNull(str.substring(i2, i3));
            if (intOrNull == null) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iIntValue = intOrNull.intValue();
            if (str.length() <= i3) {
                strSubstring = "";
            } else {
                if (str.charAt(i3) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i2 + 4);
            }
            return new StatusLine(protocol, iIntValue, strSubstring);
        }
    }

    public StatusLine(Protocol protocol, int i2, String str) {
        protocol.getClass();
        str.getClass();
        this.f77181a = protocol;
        this.f77182b = i2;
        this.f77183c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f77181a == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.f77182b);
        sb.append(' ');
        sb.append(this.f77183c);
        return sb.toString();
    }
}
