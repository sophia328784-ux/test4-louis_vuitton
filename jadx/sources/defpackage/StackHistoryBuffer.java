package defpackage;

import com.networkbench.nbslens.nbsnativecrashlib.m;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB+\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"LStackHistoryBuffer;", "Lcom/squareup/wire/Message;", "", "", m.r, "", "LStackHistoryBufferEntry;", "entries", "Lokio/ByteString;", "unknownFields", "<init>", "(JLjava/util/List;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StackHistoryBuffer extends Message {
    public static final StackHistoryBuffer$Companion$ADAPTER$1 g;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f62e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f63f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LStackHistoryBuffer$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LStackHistoryBuffer;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new StackHistoryBuffer$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(StackHistoryBuffer.class), "type.googleapis.com/StackHistoryBuffer", Syntax.PROTO_3, null, "tombstone.proto");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StackHistoryBuffer(long j2, List<StackHistoryBufferEntry> list, ByteString byteString) {
        super(g, byteString);
        list.getClass();
        byteString.getClass();
        this.f62e = j2;
        this.f63f = Internal.b("entries", list);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StackHistoryBuffer)) {
            return false;
        }
        StackHistoryBuffer stackHistoryBuffer = (StackHistoryBuffer) obj;
        return Intrinsics.c(b(), stackHistoryBuffer.b()) && this.f62e == stackHistoryBuffer.f62e && Intrinsics.c(this.f63f, stackHistoryBuffer.f63f);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f63f.hashCode() + fc.a(b().hashCode() * 37, 37, this.f62e);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("tid=" + this.f62e);
        List list = this.f63f;
        if (!list.isEmpty()) {
            arrayList.add("entries=" + list);
        }
        return CollectionsKt.K(arrayList, ", ", "StackHistoryBuffer{", "}", null, 56);
    }

    public StackHistoryBuffer() {
        this(0L, null, null, 7, null);
    }

    public StackHistoryBuffer(long j2, List list, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j2, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? ByteString.f77399f : byteString);
    }
}
