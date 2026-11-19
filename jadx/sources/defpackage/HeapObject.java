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
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010BY\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"LHeapObject;", "Lcom/squareup/wire/Message;", "", "", "address", "size", "allocation_tid", "", "LBacktraceFrame;", "allocation_backtrace", "deallocation_tid", "deallocation_backtrace", "Lokio/ByteString;", "unknownFields", "<init>", "(JJJLjava/util/List;JLjava/util/List;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HeapObject extends Message {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final HeapObject$Companion$ADAPTER$1 f17k;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f18e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f19f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f20h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f21i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f22j;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LHeapObject$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LHeapObject;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f17k = new HeapObject$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(HeapObject.class), "type.googleapis.com/HeapObject", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public HeapObject(long j2, long j3, long j4, List list, long j5, List list2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j2, (i2 & 2) != 0 ? 0L : j3, (i2 & 4) != 0 ? 0L : j4, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? 0L : j5, (i2 & 32) != 0 ? EmptyList.f71768b : list2, (i2 & 64) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeapObject)) {
            return false;
        }
        HeapObject heapObject = (HeapObject) obj;
        return Intrinsics.c(b(), heapObject.b()) && this.f18e == heapObject.f18e && this.f19f == heapObject.f19f && this.g == heapObject.g && Intrinsics.c(this.f21i, heapObject.f21i) && this.f20h == heapObject.f20h && Intrinsics.c(this.f22j, heapObject.f22j);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f22j.hashCode() + fc.a(n00.a(fc.a(fc.a(fc.a(b().hashCode() * 37, 37, this.f18e), 37, this.f19f), 37, this.g), 37, this.f21i), 37, this.f20h);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("address=" + this.f18e);
        arrayList.add("size=" + this.f19f);
        arrayList.add("allocation_tid=" + this.g);
        List list = this.f21i;
        if (!list.isEmpty()) {
            arrayList.add("allocation_backtrace=" + list);
        }
        arrayList.add("deallocation_tid=" + this.f20h);
        List list2 = this.f22j;
        if (!list2.isEmpty()) {
            arrayList.add("deallocation_backtrace=" + list2);
        }
        return CollectionsKt.K(arrayList, ", ", "HeapObject{", "}", null, 56);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeapObject(long j2, long j3, long j4, List<BacktraceFrame> list, long j5, List<BacktraceFrame> list2, ByteString byteString) {
        super(f17k, byteString);
        list.getClass();
        list2.getClass();
        byteString.getClass();
        this.f18e = j2;
        this.f19f = j3;
        this.g = j4;
        this.f20h = j5;
        this.f21i = Internal.b("allocation_backtrace", list);
        this.f22j = Internal.b("deallocation_backtrace", list2);
    }

    public HeapObject() {
        this(0L, 0L, 0L, null, 0L, null, null, CertificateBody.profileType, null);
    }
}
