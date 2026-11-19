package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoAdapterKt$commonUint64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"MemoryMapping$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryMapping;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryMapping$Companion$ADAPTER$1 extends ProtoAdapter<MemoryMapping> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        long jO = 0;
        long jO2 = 0;
        long jO3 = 0;
        long jO4 = 0;
        boolean zBooleanValue = false;
        boolean zBooleanValue2 = false;
        boolean zBooleanValue3 = false;
        String strL = "";
        String strL2 = strL;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new MemoryMapping(jO, jO2, jO3, zBooleanValue, zBooleanValue2, zBooleanValue3, strL, strL2, jO4, protoReader.e(jD));
            }
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
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
                    zBooleanValue = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    break;
                case 5:
                    zBooleanValue2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    break;
                case 6:
                    zBooleanValue3 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    break;
                case 7:
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                    break;
                case 8:
                    protoAdapterKt$commonString$1.getClass();
                    strL2 = protoReader.l();
                    break;
                case 9:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO4 = protoReader.o();
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        MemoryMapping memoryMapping = (MemoryMapping) obj;
        protoWriter.getClass();
        memoryMapping.getClass();
        long j2 = memoryMapping.f43e;
        String str = memoryMapping.l;
        String str2 = memoryMapping.f48k;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 1, Long.valueOf(j2));
        }
        long j3 = memoryMapping.f44f;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 2, Long.valueOf(j3));
        }
        long j4 = memoryMapping.g;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 3, Long.valueOf(j4));
        }
        boolean z = memoryMapping.f45h;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 4, Boolean.valueOf(z));
        }
        boolean z2 = memoryMapping.f46i;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 5, Boolean.valueOf(z2));
        }
        boolean z3 = memoryMapping.f47j;
        if (z3) {
            protoAdapterKt$commonBool$1.f(protoWriter, 6, Boolean.valueOf(z3));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 7, str2);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 8, str);
        }
        long j5 = memoryMapping.m;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 9, Long.valueOf(j5));
        }
        protoWriter.a(memoryMapping.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        MemoryMapping memoryMapping = (MemoryMapping) obj;
        reverseProtoWriter.getClass();
        memoryMapping.getClass();
        ByteString byteStringB = memoryMapping.b();
        String str = memoryMapping.f48k;
        String str2 = memoryMapping.l;
        reverseProtoWriter.d(byteStringB);
        long j2 = memoryMapping.m;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 9, Long.valueOf(j2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 8, str2);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 7, str);
        }
        boolean z = memoryMapping.f47j;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 6, Boolean.valueOf(z));
        }
        boolean z2 = memoryMapping.f46i;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 5, Boolean.valueOf(z2));
        }
        boolean z3 = memoryMapping.f45h;
        if (z3) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 4, Boolean.valueOf(z3));
        }
        long j3 = memoryMapping.g;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 3, Long.valueOf(j3));
        }
        long j4 = memoryMapping.f44f;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 2, Long.valueOf(j4));
        }
        long j5 = memoryMapping.f43e;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 1, Long.valueOf(j5));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        MemoryMapping memoryMapping = (MemoryMapping) obj;
        memoryMapping.getClass();
        ByteString byteStringB = memoryMapping.b();
        String str = memoryMapping.l;
        String str2 = memoryMapping.f48k;
        int iE = byteStringB.e();
        long j2 = memoryMapping.f43e;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            iE = fc.c(j2, protoAdapterKt$commonUint64$1, 1, iE);
        }
        long j3 = memoryMapping.f44f;
        if (j3 != 0) {
            iE = fc.c(j3, protoAdapterKt$commonUint64$1, 2, iE);
        }
        long j4 = memoryMapping.g;
        if (j4 != 0) {
            iE = fc.c(j4, protoAdapterKt$commonUint64$1, 3, iE);
        }
        boolean z = memoryMapping.f45h;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            iE += protoAdapterKt$commonBool$1.i(4, Boolean.valueOf(z));
        }
        boolean z2 = memoryMapping.f46i;
        if (z2) {
            iE += protoAdapterKt$commonBool$1.i(5, Boolean.valueOf(z2));
        }
        boolean z3 = memoryMapping.f47j;
        if (z3) {
            iE += protoAdapterKt$commonBool$1.i(6, Boolean.valueOf(z3));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(7, str2);
        }
        if (!Intrinsics.c(str, "")) {
            iE += protoAdapterKt$commonString$1.i(8, str);
        }
        long j5 = memoryMapping.m;
        return j5 != 0 ? fc.c(j5, protoAdapterKt$commonUint64$1, 9, iE) : iE;
    }
}
