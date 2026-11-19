package okhttp3.internal.ws;

import defpackage.d21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\fBG\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "", "perMessageDeflate", "", "clientMaxWindowBits", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "<init>", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class WebSocketExtensions {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f77356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f77357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f77358c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f77359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f77360f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "", "HEADER_WEB_SOCKET_EXTENSION", "Ljava/lang/String;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? null : num2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.f77356a == webSocketExtensions.f77356a && Intrinsics.c(this.f77357b, webSocketExtensions.f77357b) && this.f77358c == webSocketExtensions.f77358c && Intrinsics.c(this.d, webSocketExtensions.d) && this.f77359e == webSocketExtensions.f77359e && this.f77360f == webSocketExtensions.f77360f;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f77356a) * 31;
        Integer num = this.f77357b;
        int iB = o60.b((iHashCode + (num == null ? 0 : num.hashCode())) * 31, 31, this.f77358c);
        Integer num2 = this.d;
        return Boolean.hashCode(this.f77360f) + o60.b((iB + (num2 != null ? num2.hashCode() : 0)) * 31, 31, this.f77359e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WebSocketExtensions(perMessageDeflate=");
        sb.append(this.f77356a);
        sb.append(", clientMaxWindowBits=");
        sb.append(this.f77357b);
        sb.append(", clientNoContextTakeover=");
        sb.append(this.f77358c);
        sb.append(", serverMaxWindowBits=");
        sb.append(this.d);
        sb.append(", serverNoContextTakeover=");
        sb.append(this.f77359e);
        sb.append(", unknownValues=");
        return d21.q(sb, this.f77360f, ')');
    }

    public WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        this.f77356a = z;
        this.f77357b = num;
        this.f77358c = z2;
        this.d = num2;
        this.f77359e = z3;
        this.f77360f = z4;
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }
}
