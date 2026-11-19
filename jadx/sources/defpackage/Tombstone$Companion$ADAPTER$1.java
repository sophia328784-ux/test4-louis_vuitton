package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoAdapterKt$commonUint32$1;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Tombstone$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LTombstone;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Tombstone$Companion$ADAPTER$1 extends ProtoAdapter<Tombstone> {
    public static final /* synthetic */ int w = 0;
    public final Lazy u;
    public final Lazy v;

    public Tombstone$Companion$ADAPTER$1(FieldEncoding fieldEncoding, KClass kClass, Syntax syntax) {
        super(fieldEncoding, (KClass<?>) kClass, "type.googleapis.com/Tombstone", syntax, (Object) null, "tombstone.proto");
        this.u = LazyKt.b(new l31(11));
        this.v = LazyKt.b(new l31(12));
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 6641. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.squareup.wire.ProtoAdapter
    public final java.lang.Object c(com.squareup.wire.ProtoReader r34) {
        /*
            Method dump skipped, instruction units count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Tombstone$Companion$ADAPTER$1.c(com.squareup.wire.ProtoReader):java.lang.Object");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Tombstone tombstone = (Tombstone) obj;
        protoWriter.getClass();
        tombstone.getClass();
        Architecture architecture = tombstone.f73e;
        String str = tombstone.p;
        String str2 = tombstone.m;
        String str3 = tombstone.f76i;
        String str4 = tombstone.f75h;
        String str5 = tombstone.g;
        Architecture architecture2 = Architecture.ARM32;
        if (architecture != architecture2) {
            Architecture.ADAPTER.f(protoWriter, 1, architecture);
        }
        Architecture architecture3 = tombstone.f74f;
        if (architecture3 != architecture2) {
            Architecture.ADAPTER.f(protoWriter, 24, architecture3);
        }
        boolean zC = Intrinsics.c(str5, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str5);
        }
        if (!Intrinsics.c(str4, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 3, str4);
        }
        if (!Intrinsics.c(str3, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 4, str3);
        }
        int i2 = tombstone.f77j;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 5, Integer.valueOf(i2));
        }
        int i3 = tombstone.f78k;
        if (i3 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 6, Integer.valueOf(i3));
        }
        int i4 = tombstone.l;
        if (i4 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 7, Integer.valueOf(i4));
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 8, str2);
        }
        protoAdapterKt$commonString$1.a().f(protoWriter, 9, tombstone.t);
        int i5 = tombstone.n;
        if (i5 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 20, Integer.valueOf(i5));
        }
        Signal signal = tombstone.o;
        if (signal != null) {
            Signal.o.f(protoWriter, 10, signal);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 14, str);
        }
        CrashDetail.g.a().f(protoWriter, 21, tombstone.u);
        Cause.g.a().f(protoWriter, 15, tombstone.v);
        ((ProtoAdapter) this.u.getF71699b()).f(protoWriter, 16, tombstone.w);
        ((ProtoAdapter) this.v.getF71699b()).f(protoWriter, 25, tombstone.x);
        MemoryMapping.n.a().f(protoWriter, 17, tombstone.y);
        LogBuffer.g.a().f(protoWriter, 18, tombstone.z);
        FD.f13i.a().f(protoWriter, 19, tombstone.A);
        int i6 = tombstone.q;
        if (i6 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 22, Integer.valueOf(i6));
        }
        boolean z = tombstone.r;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 23, Boolean.valueOf(z));
        }
        StackHistoryBuffer stackHistoryBuffer = tombstone.s;
        if (stackHistoryBuffer != null) {
            StackHistoryBuffer.g.f(protoWriter, 26, stackHistoryBuffer);
        }
        protoWriter.a(tombstone.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Tombstone tombstone = (Tombstone) obj;
        reverseProtoWriter.getClass();
        tombstone.getClass();
        ByteString byteStringB = tombstone.b();
        String str = tombstone.g;
        String str2 = tombstone.f75h;
        String str3 = tombstone.f76i;
        String str4 = tombstone.m;
        String str5 = tombstone.p;
        reverseProtoWriter.d(byteStringB);
        StackHistoryBuffer stackHistoryBuffer = tombstone.s;
        if (stackHistoryBuffer != null) {
            StackHistoryBuffer.g.g(reverseProtoWriter, 26, stackHistoryBuffer);
        }
        boolean z = tombstone.r;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 23, Boolean.valueOf(z));
        }
        int i2 = tombstone.q;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 22, Integer.valueOf(i2));
        }
        FD.f13i.a().g(reverseProtoWriter, 19, tombstone.A);
        LogBuffer.g.a().g(reverseProtoWriter, 18, tombstone.z);
        MemoryMapping.n.a().g(reverseProtoWriter, 17, tombstone.y);
        ((ProtoAdapter) this.v.getF71699b()).g(reverseProtoWriter, 25, tombstone.x);
        ((ProtoAdapter) this.u.getF71699b()).g(reverseProtoWriter, 16, tombstone.w);
        Cause.g.a().g(reverseProtoWriter, 15, tombstone.v);
        CrashDetail.g.a().g(reverseProtoWriter, 21, tombstone.u);
        boolean zC = Intrinsics.c(str5, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 14, str5);
        }
        Signal signal = tombstone.o;
        if (signal != null) {
            Signal.o.g(reverseProtoWriter, 10, signal);
        }
        int i3 = tombstone.n;
        if (i3 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 20, Integer.valueOf(i3));
        }
        protoAdapterKt$commonString$1.a().g(reverseProtoWriter, 9, tombstone.t);
        if (!Intrinsics.c(str4, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 8, str4);
        }
        int i4 = tombstone.l;
        if (i4 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 7, Integer.valueOf(i4));
        }
        int i5 = tombstone.f78k;
        if (i5 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 6, Integer.valueOf(i5));
        }
        int i6 = tombstone.f77j;
        if (i6 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 5, Integer.valueOf(i6));
        }
        if (!Intrinsics.c(str3, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 4, str3);
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 3, str2);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str);
        }
        Architecture architecture = tombstone.f74f;
        Architecture architecture2 = Architecture.ARM32;
        if (architecture != architecture2) {
            Architecture.ADAPTER.g(reverseProtoWriter, 24, architecture);
        }
        Architecture architecture3 = tombstone.f73e;
        if (architecture3 != architecture2) {
            Architecture.ADAPTER.g(reverseProtoWriter, 1, architecture3);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Tombstone tombstone = (Tombstone) obj;
        tombstone.getClass();
        ByteString byteStringB = tombstone.b();
        String str = tombstone.p;
        String str2 = tombstone.m;
        String str3 = tombstone.f76i;
        String str4 = tombstone.f75h;
        String str5 = tombstone.g;
        int iE = byteStringB.e();
        Architecture architecture = tombstone.f73e;
        Architecture architecture2 = Architecture.ARM32;
        if (architecture != architecture2) {
            iE += Architecture.ADAPTER.i(1, architecture);
        }
        Architecture architecture3 = tombstone.f74f;
        if (architecture3 != architecture2) {
            iE += Architecture.ADAPTER.i(24, architecture3);
        }
        boolean zC = Intrinsics.c(str5, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(2, str5);
        }
        if (!Intrinsics.c(str4, "")) {
            iE += protoAdapterKt$commonString$1.i(3, str4);
        }
        if (!Intrinsics.c(str3, "")) {
            iE += protoAdapterKt$commonString$1.i(4, str3);
        }
        int i2 = tombstone.f77j;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(5, Integer.valueOf(i2));
        }
        int i3 = tombstone.f78k;
        if (i3 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(6, Integer.valueOf(i3));
        }
        int i4 = tombstone.l;
        if (i4 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(7, Integer.valueOf(i4));
        }
        if (!Intrinsics.c(str2, "")) {
            iE += protoAdapterKt$commonString$1.i(8, str2);
        }
        int i5 = protoAdapterKt$commonString$1.a().i(9, tombstone.t) + iE;
        int i6 = tombstone.n;
        if (i6 != 0) {
            i5 += protoAdapterKt$commonUint32$1.i(20, Integer.valueOf(i6));
        }
        Signal signal = tombstone.o;
        if (signal != null) {
            i5 += Signal.o.i(10, signal);
        }
        if (!Intrinsics.c(str, "")) {
            i5 += protoAdapterKt$commonString$1.i(14, str);
        }
        int i7 = FD.f13i.a().i(19, tombstone.A) + LogBuffer.g.a().i(18, tombstone.z) + MemoryMapping.n.a().i(17, tombstone.y) + ((ProtoAdapter) this.v.getF71699b()).i(25, tombstone.x) + ((ProtoAdapter) this.u.getF71699b()).i(16, tombstone.w) + Cause.g.a().i(15, tombstone.v) + CrashDetail.g.a().i(21, tombstone.u) + i5;
        int i8 = tombstone.q;
        if (i8 != 0) {
            i7 += protoAdapterKt$commonUint32$1.i(22, Integer.valueOf(i8));
        }
        boolean z = tombstone.r;
        if (z) {
            i7 += ProtoAdapter.g.i(23, Boolean.valueOf(z));
        }
        StackHistoryBuffer stackHistoryBuffer = tombstone.s;
        return stackHistoryBuffer != null ? StackHistoryBuffer.g.i(26, stackHistoryBuffer) + i7 : i7;
    }
}
