package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoAdapterKt$commonInt32$1;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Signal$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LSignal;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Signal$Companion$ADAPTER$1 extends ProtoAdapter<Signal> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        Object objC = null;
        int iN = 0;
        int iN2 = 0;
        boolean zBooleanValue = false;
        int iN3 = 0;
        int iN4 = 0;
        boolean zBooleanValue2 = false;
        String strL = "";
        String strL2 = strL;
        long jO = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new Signal(iN, strL, iN2, strL2, zBooleanValue, iN3, iN4, zBooleanValue2, jO, (MemoryDump) objC, protoReader.e(jD));
            }
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
            ProtoAdapterKt$commonInt32$1 protoAdapterKt$commonInt32$1 = ProtoAdapter.f43454h;
            switch (iG) {
                case 1:
                    protoAdapterKt$commonInt32$1.getClass();
                    iN = protoReader.n();
                    break;
                case 2:
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                    break;
                case 3:
                    protoAdapterKt$commonInt32$1.getClass();
                    iN2 = protoReader.n();
                    break;
                case 4:
                    protoAdapterKt$commonString$1.getClass();
                    strL2 = protoReader.l();
                    break;
                case 5:
                    zBooleanValue = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    break;
                case 6:
                    protoAdapterKt$commonInt32$1.getClass();
                    iN3 = protoReader.n();
                    break;
                case 7:
                    protoAdapterKt$commonInt32$1.getClass();
                    iN4 = protoReader.n();
                    break;
                case 8:
                    zBooleanValue2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    break;
                case 9:
                    ProtoAdapter.l.getClass();
                    jO = protoReader.o();
                    break;
                case 10:
                    objC = MemoryDump.f35j.c(protoReader);
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Signal signal = (Signal) obj;
        protoWriter.getClass();
        signal.getClass();
        int i2 = signal.f56e;
        String str = signal.f58h;
        String str2 = signal.f57f;
        ProtoAdapterKt$commonInt32$1 protoAdapterKt$commonInt32$1 = ProtoAdapter.f43454h;
        if (i2 != 0) {
            protoAdapterKt$commonInt32$1.f(protoWriter, 1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str2);
        }
        int i3 = signal.g;
        if (i3 != 0) {
            protoAdapterKt$commonInt32$1.f(protoWriter, 3, Integer.valueOf(i3));
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 4, str);
        }
        boolean z = signal.f59i;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 5, Boolean.valueOf(z));
        }
        int i4 = signal.f60j;
        if (i4 != 0) {
            protoAdapterKt$commonInt32$1.f(protoWriter, 6, Integer.valueOf(i4));
        }
        int i5 = signal.f61k;
        if (i5 != 0) {
            protoAdapterKt$commonInt32$1.f(protoWriter, 7, Integer.valueOf(i5));
        }
        boolean z2 = signal.l;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 8, Boolean.valueOf(z2));
        }
        long j2 = signal.m;
        if (j2 != 0) {
            ProtoAdapter.l.f(protoWriter, 9, Long.valueOf(j2));
        }
        MemoryDump memoryDump = signal.n;
        if (memoryDump != null) {
            MemoryDump.f35j.f(protoWriter, 10, memoryDump);
        }
        protoWriter.a(signal.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Signal signal = (Signal) obj;
        reverseProtoWriter.getClass();
        signal.getClass();
        ByteString byteStringB = signal.b();
        String str = signal.f57f;
        String str2 = signal.f58h;
        reverseProtoWriter.d(byteStringB);
        MemoryDump memoryDump = signal.n;
        if (memoryDump != null) {
            MemoryDump.f35j.g(reverseProtoWriter, 10, memoryDump);
        }
        long j2 = signal.m;
        if (j2 != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 9, Long.valueOf(j2));
        }
        boolean z = signal.l;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 8, Boolean.valueOf(z));
        }
        int i2 = signal.f61k;
        ProtoAdapterKt$commonInt32$1 protoAdapterKt$commonInt32$1 = ProtoAdapter.f43454h;
        if (i2 != 0) {
            protoAdapterKt$commonInt32$1.g(reverseProtoWriter, 7, Integer.valueOf(i2));
        }
        int i3 = signal.f60j;
        if (i3 != 0) {
            protoAdapterKt$commonInt32$1.g(reverseProtoWriter, 6, Integer.valueOf(i3));
        }
        boolean z2 = signal.f59i;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 5, Boolean.valueOf(z2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 4, str2);
        }
        int i4 = signal.g;
        if (i4 != 0) {
            protoAdapterKt$commonInt32$1.g(reverseProtoWriter, 3, Integer.valueOf(i4));
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str);
        }
        int i5 = signal.f56e;
        if (i5 != 0) {
            protoAdapterKt$commonInt32$1.g(reverseProtoWriter, 1, Integer.valueOf(i5));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Signal signal = (Signal) obj;
        signal.getClass();
        ByteString byteStringB = signal.b();
        String str = signal.f58h;
        String str2 = signal.f57f;
        int iE = byteStringB.e();
        int i2 = signal.f56e;
        ProtoAdapterKt$commonInt32$1 protoAdapterKt$commonInt32$1 = ProtoAdapter.f43454h;
        if (i2 != 0) {
            iE += protoAdapterKt$commonInt32$1.i(1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(2, str2);
        }
        int i3 = signal.g;
        if (i3 != 0) {
            iE += protoAdapterKt$commonInt32$1.i(3, Integer.valueOf(i3));
        }
        if (!Intrinsics.c(str, "")) {
            iE += protoAdapterKt$commonString$1.i(4, str);
        }
        boolean z = signal.f59i;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            iE += protoAdapterKt$commonBool$1.i(5, Boolean.valueOf(z));
        }
        int i4 = signal.f60j;
        if (i4 != 0) {
            iE += protoAdapterKt$commonInt32$1.i(6, Integer.valueOf(i4));
        }
        int i5 = signal.f61k;
        if (i5 != 0) {
            iE += protoAdapterKt$commonInt32$1.i(7, Integer.valueOf(i5));
        }
        boolean z2 = signal.l;
        if (z2) {
            iE += protoAdapterKt$commonBool$1.i(8, Boolean.valueOf(z2));
        }
        long j2 = signal.m;
        if (j2 != 0) {
            iE = fc.c(j2, ProtoAdapter.l, 9, iE);
        }
        MemoryDump memoryDump = signal.n;
        return memoryDump != null ? MemoryDump.f35j.i(10, memoryDump) + iE : iE;
    }
}
