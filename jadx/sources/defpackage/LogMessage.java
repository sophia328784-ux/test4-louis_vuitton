package defpackage;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fBM\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"LLogMessage;", "Lcom/squareup/wire/Message;", "", "", "timestamp", "", m.q, m.r, "priority", "tag", "message", "Lokio/ByteString;", "unknownFields", "<init>", "(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LogMessage extends Message {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final LogMessage$Companion$ADAPTER$1 f29k;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f30e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f32h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f33i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f34j;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LLogMessage$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LLogMessage;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f29k = new LogMessage$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(LogMessage.class), "type.googleapis.com/LogMessage", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ LogMessage(String str, int i2, int i3, int i4, String str2, String str3, ByteString byteString, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? "" : str, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4, (i5 & 16) != 0 ? "" : str2, (i5 & 32) != 0 ? "" : str3, (i5 & 64) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogMessage)) {
            return false;
        }
        LogMessage logMessage = (LogMessage) obj;
        return Intrinsics.c(b(), logMessage.b()) && Intrinsics.c(this.f30e, logMessage.f30e) && this.f31f == logMessage.f31f && this.g == logMessage.g && this.f32h == logMessage.f32h && Intrinsics.c(this.f33i, logMessage.f33i) && Intrinsics.c(this.f34j, logMessage.f34j);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f34j.hashCode() + fc.b(tr.b(this.f32h, tr.b(this.g, tr.b(this.f31f, fc.b(b().hashCode() * 37, 37, this.f30e), 37), 37), 37), 37, this.f33i);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("timestamp=".concat(Internal.d(this.f30e)));
        arrayList.add("pid=" + this.f31f);
        arrayList.add("tid=" + this.g);
        arrayList.add("priority=" + this.f32h);
        arrayList.add("tag=".concat(Internal.d(this.f33i)));
        arrayList.add("message=".concat(Internal.d(this.f34j)));
        return CollectionsKt.K(arrayList, ", ", "LogMessage{", "}", null, 56);
    }

    public LogMessage() {
        this(null, 0, 0, 0, null, null, null, CertificateBody.profileType, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogMessage(String str, int i2, int i3, int i4, String str2, String str3, ByteString byteString) {
        super(f29k, byteString);
        str.getClass();
        str2.getClass();
        str3.getClass();
        byteString.getClass();
        this.f30e = str;
        this.f31f = i2;
        this.g = i3;
        this.f32h = i4;
        this.f33i = str2;
        this.f34j = str3;
    }
}
