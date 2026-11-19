package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB+\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"LLogBuffer;", "Lcom/squareup/wire/Message;", "", "", "name", "", "LLogMessage;", "logs", "Lokio/ByteString;", "unknownFields", "<init>", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LogBuffer extends Message {
    public static final LogBuffer$Companion$ADAPTER$1 g;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f27e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f28f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LLogBuffer$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LLogBuffer;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new LogBuffer$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(LogBuffer.class), "type.googleapis.com/LogBuffer", Syntax.PROTO_3, null, "tombstone.proto");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogBuffer(String str, List<LogMessage> list, ByteString byteString) {
        super(g, byteString);
        str.getClass();
        list.getClass();
        byteString.getClass();
        this.f27e = str;
        this.f28f = Internal.b("logs", list);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogBuffer)) {
            return false;
        }
        LogBuffer logBuffer = (LogBuffer) obj;
        return Intrinsics.c(b(), logBuffer.b()) && Intrinsics.c(this.f27e, logBuffer.f27e) && Intrinsics.c(this.f28f, logBuffer.f28f);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f28f.hashCode() + fc.b(b().hashCode() * 37, 37, this.f27e);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("name=".concat(Internal.d(this.f27e)));
        List list = this.f28f;
        if (!list.isEmpty()) {
            arrayList.add("logs=" + list);
        }
        return CollectionsKt.K(arrayList, ", ", "LogBuffer{", "}", null, 56);
    }

    public LogBuffer(String str, List list, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? ByteString.f77399f : byteString);
    }

    public LogBuffer() {
        this(null, null, null, 7, null);
    }
}
