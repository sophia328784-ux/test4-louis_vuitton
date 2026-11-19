package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonUint64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"HeapObject$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LHeapObject;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HeapObject$Companion$ADAPTER$1 extends ProtoAdapter<HeapObject> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long jD = protoReader.d();
        long jO = 0;
        long jO2 = 0;
        long jO3 = 0;
        long jO4 = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new HeapObject(jO, jO2, jO3, arrayList, jO4, arrayList2, protoReader.e(jD));
            }
            ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
            switch (iG) {
                case 1:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO = protoReader.o();
                    break;
                case 2:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO2 = protoReader.o();
                    break;
                case 3:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO3 = protoReader.o();
                    break;
                case 4:
                    arrayList.add(BacktraceFrame.m.c(protoReader));
                    break;
                case 5:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO4 = protoReader.o();
                    break;
                case 6:
                    arrayList2.add(BacktraceFrame.m.c(protoReader));
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        HeapObject heapObject = (HeapObject) obj;
        protoWriter.getClass();
        heapObject.getClass();
        long j2 = heapObject.f18e;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 1, Long.valueOf(j2));
        }
        long j3 = heapObject.f19f;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 2, Long.valueOf(j3));
        }
        long j4 = heapObject.g;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 3, Long.valueOf(j4));
        }
        BacktraceFrame$Companion$ADAPTER$1 backtraceFrame$Companion$ADAPTER$1 = BacktraceFrame.m;
        backtraceFrame$Companion$ADAPTER$1.a().f(protoWriter, 4, heapObject.f21i);
        long j5 = heapObject.f20h;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 5, Long.valueOf(j5));
        }
        backtraceFrame$Companion$ADAPTER$1.a().f(protoWriter, 6, heapObject.f22j);
        protoWriter.a(heapObject.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        HeapObject heapObject = (HeapObject) obj;
        reverseProtoWriter.getClass();
        heapObject.getClass();
        reverseProtoWriter.d(heapObject.b());
        BacktraceFrame$Companion$ADAPTER$1 backtraceFrame$Companion$ADAPTER$1 = BacktraceFrame.m;
        backtraceFrame$Companion$ADAPTER$1.a().g(reverseProtoWriter, 6, heapObject.f22j);
        long j2 = heapObject.f20h;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 5, Long.valueOf(j2));
        }
        backtraceFrame$Companion$ADAPTER$1.a().g(reverseProtoWriter, 4, heapObject.f21i);
        long j3 = heapObject.g;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 3, Long.valueOf(j3));
        }
        long j4 = heapObject.f19f;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 2, Long.valueOf(j4));
        }
        long j5 = heapObject.f18e;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 1, Long.valueOf(j5));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        HeapObject heapObject = (HeapObject) obj;
        heapObject.getClass();
        int iE = heapObject.b().e();
        long j2 = heapObject.f18e;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            iE = fc.c(j2, protoAdapterKt$commonUint64$1, 1, iE);
        }
        long j3 = heapObject.f19f;
        if (j3 != 0) {
            iE = fc.c(j3, protoAdapterKt$commonUint64$1, 2, iE);
        }
        long j4 = heapObject.g;
        if (j4 != 0) {
            iE = fc.c(j4, protoAdapterKt$commonUint64$1, 3, iE);
        }
        BacktraceFrame$Companion$ADAPTER$1 backtraceFrame$Companion$ADAPTER$1 = BacktraceFrame.m;
        int i2 = backtraceFrame$Companion$ADAPTER$1.a().i(4, heapObject.f21i) + iE;
        long j5 = heapObject.f20h;
        if (j5 != 0) {
            i2 = fc.c(j5, protoAdapterKt$commonUint64$1, 5, i2);
        }
        return backtraceFrame$Companion$ADAPTER$1.a().i(6, heapObject.f22j) + i2;
    }
}
