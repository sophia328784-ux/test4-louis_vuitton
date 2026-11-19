package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB1\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"LStackHistoryBufferEntry;", "Lcom/squareup/wire/Message;", "", "LBacktraceFrame;", "addr", "", "fp", "tag", "Lokio/ByteString;", "unknownFields", "<init>", "(LBacktraceFrame;JJLokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StackHistoryBufferEntry extends Message {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final StackHistoryBufferEntry$Companion$ADAPTER$1 f64h;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BacktraceFrame f65e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f66f;
    public final long g;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LStackHistoryBufferEntry$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LStackHistoryBufferEntry;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f64h = new StackHistoryBufferEntry$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(StackHistoryBufferEntry.class), "type.googleapis.com/StackHistoryBufferEntry", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ StackHistoryBufferEntry(BacktraceFrame backtraceFrame, long j2, long j3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : backtraceFrame, (i2 & 2) != 0 ? 0L : j2, (i2 & 4) != 0 ? 0L : j3, (i2 & 8) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StackHistoryBufferEntry)) {
            return false;
        }
        StackHistoryBufferEntry stackHistoryBufferEntry = (StackHistoryBufferEntry) obj;
        return Intrinsics.c(b(), stackHistoryBufferEntry.b()) && Intrinsics.c(this.f65e, stackHistoryBufferEntry.f65e) && this.f66f == stackHistoryBufferEntry.f66f && this.g == stackHistoryBufferEntry.g;
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = b().hashCode() * 37;
        BacktraceFrame backtraceFrame = this.f65e;
        int iHashCode2 = Long.hashCode(this.g) + fc.a((iHashCode + (backtraceFrame != null ? backtraceFrame.hashCode() : 0)) * 37, 37, this.f66f);
        this.d = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        BacktraceFrame backtraceFrame = this.f65e;
        if (backtraceFrame != null) {
            arrayList.add("addr=" + backtraceFrame);
        }
        arrayList.add("fp=" + this.f66f);
        arrayList.add("tag=" + this.g);
        return CollectionsKt.K(arrayList, ", ", "StackHistoryBufferEntry{", "}", null, 56);
    }

    public StackHistoryBufferEntry() {
        this(null, 0L, 0L, null, 15, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StackHistoryBufferEntry(BacktraceFrame backtraceFrame, long j2, long j3, ByteString byteString) {
        super(f64h, byteString);
        byteString.getClass();
        this.f65e = backtraceFrame;
        this.f66f = j2;
        this.g = j3;
    }
}
