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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016Bw\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"LSignal;", "Lcom/squareup/wire/Message;", "", "", "number", "", "name", m.v, "code_name", "", "has_sender", "sender_uid", "sender_pid", "has_fault_address", "", "fault_address", "LMemoryDump;", "fault_adjacent_metadata", "Lokio/ByteString;", "unknownFields", "<init>", "(ILjava/lang/String;ILjava/lang/String;ZIIZJLMemoryDump;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Signal extends Message {
    public static final Signal$Companion$ADAPTER$1 o;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f56e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f57f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f58h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f59i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f60j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f61k;
    public final boolean l;
    public final long m;
    public final MemoryDump n;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LSignal$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LSignal;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        o = new Signal$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Signal.class), "type.googleapis.com/Signal", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ Signal(int i2, String str, int i3, String str2, boolean z, int i4, int i5, boolean z2, long j2, MemoryDump memoryDump, ByteString byteString, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? 0 : i2, (i6 & 2) != 0 ? "" : str, (i6 & 4) != 0 ? 0 : i3, (i6 & 8) == 0 ? str2 : "", (i6 & 16) != 0 ? false : z, (i6 & 32) != 0 ? 0 : i4, (i6 & 64) != 0 ? 0 : i5, (i6 & 128) == 0 ? z2 : false, (i6 & 256) != 0 ? 0L : j2, (i6 & 512) != 0 ? null : memoryDump, (i6 & 1024) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Signal)) {
            return false;
        }
        Signal signal = (Signal) obj;
        return Intrinsics.c(b(), signal.b()) && this.f56e == signal.f56e && Intrinsics.c(this.f57f, signal.f57f) && this.g == signal.g && Intrinsics.c(this.f58h, signal.f58h) && this.f59i == signal.f59i && this.f60j == signal.f60j && this.f61k == signal.f61k && this.l == signal.l && this.m == signal.m && Intrinsics.c(this.n, signal.n);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iA = fc.a(o60.b(tr.b(this.f61k, tr.b(this.f60j, o60.b(fc.b(tr.b(this.g, fc.b(tr.b(this.f56e, b().hashCode() * 37, 37), 37, this.f57f), 37), 37, this.f58h), 37, this.f59i), 37), 37), 37, this.l), 37, this.m);
        MemoryDump memoryDump = this.n;
        int iHashCode = iA + (memoryDump != null ? memoryDump.hashCode() : 0);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("number=" + this.f56e);
        arrayList.add("name=".concat(Internal.d(this.f57f)));
        arrayList.add("code=" + this.g);
        arrayList.add("code_name=".concat(Internal.d(this.f58h)));
        arrayList.add("has_sender=" + this.f59i);
        arrayList.add("sender_uid=" + this.f60j);
        arrayList.add("sender_pid=" + this.f61k);
        arrayList.add("has_fault_address=" + this.l);
        arrayList.add("fault_address=" + this.m);
        MemoryDump memoryDump = this.n;
        if (memoryDump != null) {
            arrayList.add("fault_adjacent_metadata=" + memoryDump);
        }
        return CollectionsKt.K(arrayList, ", ", "Signal{", "}", null, 56);
    }

    public Signal() {
        this(0, null, 0, null, false, 0, 0, false, 0L, null, null, 2047, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Signal(int i2, String str, int i3, String str2, boolean z, int i4, int i5, boolean z2, long j2, MemoryDump memoryDump, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.f56e = i2;
        this.f57f = str;
        this.g = i3;
        this.f58h = str2;
        this.f59i = z;
        this.f60j = i4;
        this.f61k = i5;
        this.l = z2;
        this.m = j2;
        this.n = memoryDump;
    }
}
