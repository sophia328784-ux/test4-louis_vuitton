package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonUint64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"StackHistoryBufferEntry$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LStackHistoryBufferEntry;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StackHistoryBufferEntry$Companion$ADAPTER$1 extends ProtoAdapter<StackHistoryBufferEntry> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        Object objC = null;
        long jO = 0;
        long jO2 = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new StackHistoryBufferEntry((BacktraceFrame) objC, jO, jO2, protoReader.e(jD));
            }
            if (iG != 1) {
                ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
                if (iG == 2) {
                    protoAdapterKt$commonUint64$1.getClass();
                    jO = protoReader.o();
                } else if (iG != 3) {
                    protoReader.m(iG);
                } else {
                    protoAdapterKt$commonUint64$1.getClass();
                    jO2 = protoReader.o();
                }
            } else {
                objC = BacktraceFrame.m.c(protoReader);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        StackHistoryBufferEntry stackHistoryBufferEntry = (StackHistoryBufferEntry) obj;
        protoWriter.getClass();
        stackHistoryBufferEntry.getClass();
        BacktraceFrame backtraceFrame = stackHistoryBufferEntry.f65e;
        if (backtraceFrame != null) {
            BacktraceFrame.m.f(protoWriter, 1, backtraceFrame);
        }
        long j2 = stackHistoryBufferEntry.f66f;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 2, Long.valueOf(j2));
        }
        long j3 = stackHistoryBufferEntry.g;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.f(protoWriter, 3, Long.valueOf(j3));
        }
        protoWriter.a(stackHistoryBufferEntry.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        StackHistoryBufferEntry stackHistoryBufferEntry = (StackHistoryBufferEntry) obj;
        reverseProtoWriter.getClass();
        stackHistoryBufferEntry.getClass();
        reverseProtoWriter.d(stackHistoryBufferEntry.b());
        long j2 = stackHistoryBufferEntry.g;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 3, Long.valueOf(j2));
        }
        long j3 = stackHistoryBufferEntry.f66f;
        if (j3 != 0) {
            protoAdapterKt$commonUint64$1.g(reverseProtoWriter, 2, Long.valueOf(j3));
        }
        BacktraceFrame backtraceFrame = stackHistoryBufferEntry.f65e;
        if (backtraceFrame != null) {
            BacktraceFrame.m.g(reverseProtoWriter, 1, backtraceFrame);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        StackHistoryBufferEntry stackHistoryBufferEntry = (StackHistoryBufferEntry) obj;
        stackHistoryBufferEntry.getClass();
        int iE = stackHistoryBufferEntry.b().e();
        BacktraceFrame backtraceFrame = stackHistoryBufferEntry.f65e;
        if (backtraceFrame != null) {
            iE += BacktraceFrame.m.i(1, backtraceFrame);
        }
        long j2 = stackHistoryBufferEntry.f66f;
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = ProtoAdapter.l;
        if (j2 != 0) {
            iE = fc.c(j2, protoAdapterKt$commonUint64$1, 2, iE);
        }
        long j3 = stackHistoryBufferEntry.g;
        return j3 != 0 ? fc.c(j3, protoAdapterKt$commonUint64$1, 3, iE) : iE;
    }
}
