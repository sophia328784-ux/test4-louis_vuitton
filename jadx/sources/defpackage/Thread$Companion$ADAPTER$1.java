package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonInt64$1;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Thread$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LThread;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Thread$Companion$ADAPTER$1 extends ProtoAdapter<Thread> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        long jD = protoReader.d();
        int iN = 0;
        String strL = "";
        long jO = 0;
        long jO2 = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new Thread(iN, strL, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, jO, jO2, protoReader.e(jD));
            }
            ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.f43457k;
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            switch (iG) {
                case 1:
                    ProtoAdapter.f43454h.getClass();
                    iN = protoReader.n();
                    break;
                case 2:
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                    break;
                case 3:
                    arrayList.add(Register.g.c(protoReader));
                    break;
                case 4:
                    arrayList4.add(BacktraceFrame.m.c(protoReader));
                    break;
                case 5:
                    arrayList5.add(MemoryDump.f35j.c(protoReader));
                    break;
                case 6:
                    protoAdapterKt$commonInt64$1.getClass();
                    jO = protoReader.o();
                    break;
                case 7:
                    protoAdapterKt$commonString$1.getClass();
                    arrayList2.add(protoReader.l());
                    break;
                case 8:
                    protoAdapterKt$commonInt64$1.getClass();
                    jO2 = protoReader.o();
                    break;
                case 9:
                    protoAdapterKt$commonString$1.getClass();
                    arrayList3.add(protoReader.l());
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Thread thread = (Thread) obj;
        protoWriter.getClass();
        thread.getClass();
        int i2 = thread.f67e;
        String str = thread.f68f;
        if (i2 != 0) {
            ProtoAdapter.f43454h.f(protoWriter, 1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str);
        }
        Register.g.a().f(protoWriter, 3, thread.f70i);
        protoAdapterKt$commonString$1.a().f(protoWriter, 7, thread.f71j);
        protoAdapterKt$commonString$1.a().f(protoWriter, 9, thread.f72k);
        BacktraceFrame.m.a().f(protoWriter, 4, thread.l);
        MemoryDump.f35j.a().f(protoWriter, 5, thread.m);
        long j2 = thread.g;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.f43457k;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 6, Long.valueOf(j2));
        }
        long j3 = thread.f69h;
        if (j3 != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 8, Long.valueOf(j3));
        }
        protoWriter.a(thread.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Thread thread = (Thread) obj;
        reverseProtoWriter.getClass();
        thread.getClass();
        ByteString byteStringB = thread.b();
        String str = thread.f68f;
        reverseProtoWriter.d(byteStringB);
        long j2 = thread.f69h;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.f43457k;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 8, Long.valueOf(j2));
        }
        long j3 = thread.g;
        if (j3 != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 6, Long.valueOf(j3));
        }
        MemoryDump.f35j.a().g(reverseProtoWriter, 5, thread.m);
        BacktraceFrame.m.a().g(reverseProtoWriter, 4, thread.l);
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        protoAdapterKt$commonString$1.a().g(reverseProtoWriter, 9, thread.f72k);
        protoAdapterKt$commonString$1.a().g(reverseProtoWriter, 7, thread.f71j);
        Register.g.a().g(reverseProtoWriter, 3, thread.f70i);
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str);
        }
        int i2 = thread.f67e;
        if (i2 != 0) {
            ProtoAdapter.f43454h.g(reverseProtoWriter, 1, Integer.valueOf(i2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Thread thread = (Thread) obj;
        thread.getClass();
        ByteString byteStringB = thread.b();
        String str = thread.f68f;
        int iE = byteStringB.e();
        int i2 = thread.f67e;
        if (i2 != 0) {
            iE += ProtoAdapter.f43454h.i(1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(2, str);
        }
        int i3 = MemoryDump.f35j.a().i(5, thread.m) + BacktraceFrame.m.a().i(4, thread.l) + protoAdapterKt$commonString$1.a().i(9, thread.f72k) + protoAdapterKt$commonString$1.a().i(7, thread.f71j) + Register.g.a().i(3, thread.f70i) + iE;
        long j2 = thread.g;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.f43457k;
        if (j2 != 0) {
            i3 += protoAdapterKt$commonInt64$1.i(6, Long.valueOf(j2));
        }
        long j3 = thread.f69h;
        return j3 != 0 ? protoAdapterKt$commonInt64$1.i(8, Long.valueOf(j3)) + i3 : i3;
    }
}
