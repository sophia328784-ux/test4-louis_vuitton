package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"StackHistoryBuffer$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LStackHistoryBuffer;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StackHistoryBuffer$Companion$ADAPTER$1 extends ProtoAdapter<StackHistoryBuffer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        long jD = protoReader.d();
        long jO = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new StackHistoryBuffer(jO, arrayList, protoReader.e(jD));
            }
            if (iG == 1) {
                ProtoAdapter.l.getClass();
                jO = protoReader.o();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                arrayList.add(StackHistoryBufferEntry.f64h.c(protoReader));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        StackHistoryBuffer stackHistoryBuffer = (StackHistoryBuffer) obj;
        protoWriter.getClass();
        stackHistoryBuffer.getClass();
        long j2 = stackHistoryBuffer.f62e;
        if (j2 != 0) {
            ProtoAdapter.l.f(protoWriter, 1, Long.valueOf(j2));
        }
        StackHistoryBufferEntry.f64h.a().f(protoWriter, 2, stackHistoryBuffer.f63f);
        protoWriter.a(stackHistoryBuffer.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        StackHistoryBuffer stackHistoryBuffer = (StackHistoryBuffer) obj;
        reverseProtoWriter.getClass();
        stackHistoryBuffer.getClass();
        reverseProtoWriter.d(stackHistoryBuffer.b());
        StackHistoryBufferEntry.f64h.a().g(reverseProtoWriter, 2, stackHistoryBuffer.f63f);
        long j2 = stackHistoryBuffer.f62e;
        if (j2 != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 1, Long.valueOf(j2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        StackHistoryBuffer stackHistoryBuffer = (StackHistoryBuffer) obj;
        stackHistoryBuffer.getClass();
        int iE = stackHistoryBuffer.b().e();
        long j2 = stackHistoryBuffer.f62e;
        if (j2 != 0) {
            iE = fc.c(j2, ProtoAdapter.l, 1, iE);
        }
        return StackHistoryBufferEntry.f64h.a().i(2, stackHistoryBuffer.f63f) + iE;
    }
}
