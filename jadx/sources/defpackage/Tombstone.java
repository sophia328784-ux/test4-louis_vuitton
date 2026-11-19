package defpackage;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B·\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u000f\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u000f\u0012\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000f\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f\u0012\u000e\b\u0002\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u000f\u0012\b\b\u0002\u0010#\u001a\u00020\n\u0012\b\b\u0002\u0010%\u001a\u00020$\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&\u0012\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+¨\u0006-"}, d2 = {"LTombstone;", "Lcom/squareup/wire/Message;", "", "LArchitecture;", "arch", "guest_arch", "", "build_fingerprint", "revision", "timestamp", "", m.q, m.r, "uid", "selinux_label", "", "command_line", "process_uptime", "LSignal;", "signal_info", "abort_message", "LCrashDetail;", "crash_details", "LCause;", "causes", "", "LThread;", "threads", "guest_threads", "LMemoryMapping;", "memory_mappings", "LLogBuffer;", "log_buffers", "LFD;", "open_fds", "page_size", "", "has_been_16kb_mode", "LStackHistoryBuffer;", "stack_history_buffer", "Lokio/ByteString;", "unknownFields", "<init>", "(LArchitecture;LArchitecture;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;ILSignal;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZLStackHistoryBuffer;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Tombstone extends Message {
    public static final Tombstone$Companion$ADAPTER$1 B;
    private static final long serialVersionUID = 0;
    public final List A;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Architecture f73e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Architecture f74f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f75h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f76i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f77j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f78k;
    public final int l;
    public final String m;
    public final int n;
    public final Signal o;
    public final String p;
    public final int q;
    public final boolean r;
    public final StackHistoryBuffer s;
    public final List t;
    public final List u;
    public final List v;
    public final Map w;
    public final Map x;
    public final List y;
    public final List z;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LTombstone$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LTombstone;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        B = new Tombstone$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Tombstone.class), Syntax.PROTO_3);
    }

    public Tombstone(Architecture architecture, Architecture architecture2, String str, String str2, String str3, int i2, int i3, int i4, String str4, List list, int i5, Signal signal, String str5, List list2, List list3, Map map, Map map2, List list4, List list5, List list6, int i6, boolean z, StackHistoryBuffer stackHistoryBuffer, ByteString byteString, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this((i7 & 1) != 0 ? Architecture.ARM32 : architecture, (i7 & 2) != 0 ? Architecture.ARM32 : architecture2, (i7 & 4) != 0 ? "" : str, (i7 & 8) != 0 ? "" : str2, (i7 & 16) != 0 ? "" : str3, (i7 & 32) != 0 ? 0 : i2, (i7 & 64) != 0 ? 0 : i3, (i7 & 128) != 0 ? 0 : i4, (i7 & 256) != 0 ? "" : str4, (i7 & 512) != 0 ? EmptyList.f71768b : list, (i7 & 1024) != 0 ? 0 : i5, (i7 & 2048) != 0 ? null : signal, (i7 & 4096) == 0 ? str5 : "", (i7 & 8192) != 0 ? EmptyList.f71768b : list2, (i7 & 16384) != 0 ? EmptyList.f71768b : list3, (i7 & 32768) != 0 ? MapsKt.c() : map, (i7 & 65536) != 0 ? MapsKt.c() : map2, (i7 & 131072) != 0 ? EmptyList.f71768b : list4, (i7 & 262144) != 0 ? EmptyList.f71768b : list5, (i7 & 524288) != 0 ? EmptyList.f71768b : list6, (i7 & 1048576) != 0 ? 0 : i6, (i7 & PKIFailureInfo.badSenderNonce) != 0 ? false : z, (i7 & 4194304) != 0 ? null : stackHistoryBuffer, (i7 & 8388608) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tombstone)) {
            return false;
        }
        Tombstone tombstone = (Tombstone) obj;
        return Intrinsics.c(b(), tombstone.b()) && this.f73e == tombstone.f73e && this.f74f == tombstone.f74f && Intrinsics.c(this.g, tombstone.g) && Intrinsics.c(this.f75h, tombstone.f75h) && Intrinsics.c(this.f76i, tombstone.f76i) && this.f77j == tombstone.f77j && this.f78k == tombstone.f78k && this.l == tombstone.l && Intrinsics.c(this.m, tombstone.m) && Intrinsics.c(this.t, tombstone.t) && this.n == tombstone.n && Intrinsics.c(this.o, tombstone.o) && Intrinsics.c(this.p, tombstone.p) && Intrinsics.c(this.u, tombstone.u) && Intrinsics.c(this.v, tombstone.v) && Intrinsics.c(this.w, tombstone.w) && Intrinsics.c(this.x, tombstone.x) && Intrinsics.c(this.y, tombstone.y) && Intrinsics.c(this.z, tombstone.z) && Intrinsics.c(this.A, tombstone.A) && this.q == tombstone.q && this.r == tombstone.r && Intrinsics.c(this.s, tombstone.s);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iB = tr.b(this.n, n00.a(fc.b(tr.b(this.l, tr.b(this.f78k, tr.b(this.f77j, fc.b(fc.b(fc.b((this.f74f.hashCode() + ((this.f73e.hashCode() + (b().hashCode() * 37)) * 37)) * 37, 37, this.g), 37, this.f75h), 37, this.f76i), 37), 37), 37), 37, this.m), 37, this.t), 37);
        Signal signal = this.o;
        int iB2 = o60.b(tr.b(this.q, n00.a(n00.a(n00.a((this.x.hashCode() + ((this.w.hashCode() + n00.a(n00.a(fc.b((iB + (signal != null ? signal.hashCode() : 0)) * 37, 37, this.p), 37, this.u), 37, this.v)) * 37)) * 37, 37, this.y), 37, this.z), 37, this.A), 37), 37, this.r);
        StackHistoryBuffer stackHistoryBuffer = this.s;
        int iHashCode = iB2 + (stackHistoryBuffer != null ? stackHistoryBuffer.hashCode() : 0);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("arch=" + this.f73e);
        arrayList.add("guest_arch=" + this.f74f);
        arrayList.add("build_fingerprint=".concat(Internal.d(this.g)));
        arrayList.add("revision=".concat(Internal.d(this.f75h)));
        arrayList.add("timestamp=".concat(Internal.d(this.f76i)));
        arrayList.add("pid=" + this.f77j);
        arrayList.add("tid=" + this.f78k);
        arrayList.add("uid=" + this.l);
        arrayList.add("selinux_label=".concat(Internal.d(this.m)));
        List list = this.t;
        if (!list.isEmpty()) {
            arrayList.add("command_line=".concat(Internal.e(list)));
        }
        arrayList.add("process_uptime=" + this.n);
        Signal signal = this.o;
        if (signal != null) {
            arrayList.add("signal_info=" + signal);
        }
        arrayList.add("abort_message=".concat(Internal.d(this.p)));
        List list2 = this.u;
        if (!list2.isEmpty()) {
            arrayList.add("crash_details=" + list2);
        }
        List list3 = this.v;
        if (!list3.isEmpty()) {
            arrayList.add("causes=" + list3);
        }
        Map map = this.w;
        if (!map.isEmpty()) {
            arrayList.add("threads=" + map);
        }
        Map map2 = this.x;
        if (!map2.isEmpty()) {
            arrayList.add("guest_threads=" + map2);
        }
        List list4 = this.y;
        if (!list4.isEmpty()) {
            arrayList.add("memory_mappings=" + list4);
        }
        List list5 = this.z;
        if (!list5.isEmpty()) {
            arrayList.add("log_buffers=" + list5);
        }
        List list6 = this.A;
        if (!list6.isEmpty()) {
            arrayList.add("open_fds=" + list6);
        }
        arrayList.add("page_size=" + this.q);
        arrayList.add("has_been_16kb_mode=" + this.r);
        StackHistoryBuffer stackHistoryBuffer = this.s;
        if (stackHistoryBuffer != null) {
            arrayList.add("stack_history_buffer=" + stackHistoryBuffer);
        }
        return CollectionsKt.K(arrayList, ", ", "Tombstone{", "}", null, 56);
    }

    public Tombstone() {
        this(null, null, null, null, null, 0, 0, 0, null, null, 0, null, null, null, null, null, null, null, null, null, 0, false, null, null, 16777215, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tombstone(Architecture architecture, Architecture architecture2, String str, String str2, String str3, int i2, int i3, int i4, String str4, List<String> list, int i5, Signal signal, String str5, List<CrashDetail> list2, List<Cause> list3, Map<Integer, Thread> map, Map<Integer, Thread> map2, List<MemoryMapping> list4, List<LogBuffer> list5, List<FD> list6, int i6, boolean z, StackHistoryBuffer stackHistoryBuffer, ByteString byteString) {
        super(B, byteString);
        architecture.getClass();
        architecture2.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        list2.getClass();
        list3.getClass();
        map.getClass();
        map2.getClass();
        list4.getClass();
        list5.getClass();
        list6.getClass();
        byteString.getClass();
        this.f73e = architecture;
        this.f74f = architecture2;
        this.g = str;
        this.f75h = str2;
        this.f76i = str3;
        this.f77j = i2;
        this.f78k = i3;
        this.l = i4;
        this.m = str4;
        this.n = i5;
        this.o = signal;
        this.p = str5;
        this.q = i6;
        this.r = z;
        this.s = stackHistoryBuffer;
        this.t = Internal.b("command_line", list);
        this.u = Internal.b("crash_details", list2);
        this.v = Internal.b("causes", list3);
        this.w = Internal.c("threads", map);
        this.x = Internal.c("guest_threads", map2);
        this.y = Internal.b("memory_mappings", list4);
        this.z = Internal.b("log_buffers", list5);
        this.A = Internal.b("open_fds", list6);
    }
}
