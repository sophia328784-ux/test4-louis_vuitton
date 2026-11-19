package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoAdapterKt$commonUint64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"BacktraceFrame$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LBacktraceFrame;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BacktraceFrame$Companion$ADAPTER$1 extends ProtoAdapter<BacktraceFrame> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        long jO = 0;
        long jO2 = 0;
        long jO3 = 0;
        long jO4 = 0;
        long jO5 = 0;
        String strL = "";
        String strL2 = strL;
        String strL3 = strL2;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new BacktraceFrame(jO, jO2, jO3, strL, jO4, strL2, jO5, strL3, protoReader.e(jD));
            }
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
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
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                    break;
                case 5:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO4 = protoReader.o();
                    break;
                case 6:
                    protoAdapterKt$commonString$1.getClass();
                    strL2 = protoReader.l();
                    break;
                case 7:
                    protoAdapterKt$commonUint64$1.getClass();
                    jO5 = protoReader.o();
                    break;
                case 8:
                    protoAdapterKt$commonString$1.getClass();
                    strL3 = protoReader.l();
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        BacktraceFrame backtraceFrame = (BacktraceFrame) obj;
        protoWriter.getClass();
        backtraceFrame.getClass();
        long j2 = backtraceFrame.f3e;
        String str = backtraceFrame.l;
        String str2 = backtraceFrame.f7j;
        String str3 = backtraceFrame.f5h;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 1, Long.valueOf(j2));
        }
        long j3 = backtraceFrame.f4f;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 2, Long.valueOf(j3));
        }
        long j4 = backtraceFrame.g;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 3, Long.valueOf(j4));
        }
        boolean zC = Intrinsics.c(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 4, str3);
        }
        long j5 = backtraceFrame.f6i;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 5, Long.valueOf(j5));
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 6, str2);
        }
        long j6 = backtraceFrame.f8k;
        if (j6 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 7, Long.valueOf(j6));
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 8, str);
        }
        protoWriter.a(backtraceFrame.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        BacktraceFrame backtraceFrame = (BacktraceFrame) obj;
        reverseProtoWriter.getClass();
        backtraceFrame.getClass();
        ByteString byteStringB = backtraceFrame.b();
        String str = backtraceFrame.f5h;
        String str2 = backtraceFrame.f7j;
        reverseProtoWriter.d(byteStringB);
        String str3 = backtraceFrame.l;
        boolean zC = Intrinsics.c(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 8, str3);
        }
        long j2 = backtraceFrame.f8k;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 7, Long.valueOf(j2));
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 6, str2);
        }
        long j3 = backtraceFrame.f6i;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 5, Long.valueOf(j3));
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 4, str);
        }
        long j4 = backtraceFrame.g;
        if (j4 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 3, Long.valueOf(j4));
        }
        long j5 = backtraceFrame.f4f;
        if (j5 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 2, Long.valueOf(j5));
        }
        long j6 = backtraceFrame.f3e;
        if (j6 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 1, Long.valueOf(j6));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        BacktraceFrame backtraceFrame = (BacktraceFrame) obj;
        backtraceFrame.getClass();
        ByteString byteStringB = backtraceFrame.b();
        String str = backtraceFrame.l;
        String str2 = backtraceFrame.f7j;
        String str3 = backtraceFrame.f5h;
        int iE = byteStringB.e();
        long j2 = backtraceFrame.f3e;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            iE = fc.c(j2, protoAdapterKt$commonUint64$1, 1, iE);
        }
        long j3 = backtraceFrame.f4f;
        if (j3 != 0) {
            iE = fc.c(j3, protoAdapterKt$commonUint64$1, 2, iE);
        }
        long j4 = backtraceFrame.g;
        if (j4 != 0) {
            iE = fc.c(j4, protoAdapterKt$commonUint64$1, 3, iE);
        }
        boolean zC = Intrinsics.c(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(4, str3);
        }
        long j5 = backtraceFrame.f6i;
        if (j5 != 0) {
            iE = fc.c(j5, protoAdapterKt$commonUint64$1, 5, iE);
        }
        if (!Intrinsics.c(str2, "")) {
            iE += protoAdapterKt$commonString$1.i(6, str2);
        }
        long j6 = backtraceFrame.f8k;
        if (j6 != 0) {
            iE = fc.c(j6, protoAdapterKt$commonUint64$1, 7, iE);
        }
        return !Intrinsics.c(str, "") ? protoAdapterKt$commonString$1.i(8, str) + iE : iE;
    }
}
