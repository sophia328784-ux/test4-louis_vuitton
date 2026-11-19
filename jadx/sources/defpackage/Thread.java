package defpackage;

import com.batch.android.s.b;
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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0089\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"LThread;", "Lcom/squareup/wire/Message;", "", "", b.a.f24015b, "", "name", "", "LRegister;", m.z, "backtrace_note", "unreadable_elf_files", "LBacktraceFrame;", "current_backtrace", "LMemoryDump;", "memory_dump", "", "tagged_addr_ctrl", "pac_enabled_keys", "Lokio/ByteString;", "unknownFields", "<init>", "(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Thread extends Message {
    public static final Thread$Companion$ADAPTER$1 n;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f67e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f69h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f70i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f71j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f72k;
    public final List l;
    public final List m;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LThread$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LThread;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        n = new Thread$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Thread.class), "type.googleapis.com/Thread", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public Thread(int i2, String str, List list, List list2, List list3, List list4, List list5, long j2, long j3, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? EmptyList.f71768b : list, (i3 & 8) != 0 ? EmptyList.f71768b : list2, (i3 & 16) != 0 ? EmptyList.f71768b : list3, (i3 & 32) != 0 ? EmptyList.f71768b : list4, (i3 & 64) != 0 ? EmptyList.f71768b : list5, (i3 & 128) != 0 ? 0L : j2, (i3 & 256) == 0 ? j3 : 0L, (i3 & 512) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Thread)) {
            return false;
        }
        Thread thread = (Thread) obj;
        return Intrinsics.c(b(), thread.b()) && this.f67e == thread.f67e && Intrinsics.c(this.f68f, thread.f68f) && Intrinsics.c(this.f70i, thread.f70i) && Intrinsics.c(this.f71j, thread.f71j) && Intrinsics.c(this.f72k, thread.f72k) && Intrinsics.c(this.l, thread.l) && Intrinsics.c(this.m, thread.m) && this.g == thread.g && this.f69h == thread.f69h;
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Long.hashCode(this.f69h) + fc.a(n00.a(n00.a(n00.a(n00.a(n00.a(fc.b(tr.b(this.f67e, b().hashCode() * 37, 37), 37, this.f68f), 37, this.f70i), 37, this.f71j), 37, this.f72k), 37, this.l), 37, this.m), 37, this.g);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("id=" + this.f67e);
        arrayList.add("name=".concat(Internal.d(this.f68f)));
        List list = this.f70i;
        if (!list.isEmpty()) {
            arrayList.add("registers=" + list);
        }
        List list2 = this.f71j;
        if (!list2.isEmpty()) {
            arrayList.add("backtrace_note=".concat(Internal.e(list2)));
        }
        List list3 = this.f72k;
        if (!list3.isEmpty()) {
            arrayList.add("unreadable_elf_files=".concat(Internal.e(list3)));
        }
        List list4 = this.l;
        if (!list4.isEmpty()) {
            arrayList.add("current_backtrace=" + list4);
        }
        List list5 = this.m;
        if (!list5.isEmpty()) {
            arrayList.add("memory_dump=" + list5);
        }
        arrayList.add("tagged_addr_ctrl=" + this.g);
        arrayList.add("pac_enabled_keys=" + this.f69h);
        return CollectionsKt.K(arrayList, ", ", "Thread{", "}", null, 56);
    }

    public Thread() {
        this(0, null, null, null, null, null, null, 0L, 0L, null, 1023, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Thread(int i2, String str, List<Register> list, List<String> list2, List<String> list3, List<BacktraceFrame> list4, List<MemoryDump> list5, long j2, long j3, ByteString byteString) {
        super(n, byteString);
        str.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        byteString.getClass();
        this.f67e = i2;
        this.f68f = str;
        this.g = j2;
        this.f69h = j3;
        this.f70i = Internal.b(m.z, list);
        this.f71j = Internal.b("backtrace_note", list2);
        this.f72k = Internal.b("unreadable_elf_files", list3);
        this.l = Internal.b("current_backtrace", list4);
        this.m = Internal.b("memory_dump", list5);
    }
}
