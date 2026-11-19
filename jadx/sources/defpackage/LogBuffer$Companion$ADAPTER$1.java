package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"LogBuffer$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LLogBuffer;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LogBuffer$Companion$ADAPTER$1 extends ProtoAdapter<LogBuffer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        long jD = protoReader.d();
        String strL = "";
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new LogBuffer(strL, arrayList, protoReader.e(jD));
            }
            if (iG == 1) {
                ProtoAdapter.p.getClass();
                strL = protoReader.l();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                arrayList.add(LogMessage.f29k.c(protoReader));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        LogBuffer logBuffer = (LogBuffer) obj;
        protoWriter.getClass();
        logBuffer.getClass();
        String str = logBuffer.f27e;
        if (!Intrinsics.c(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        LogMessage.f29k.a().f(protoWriter, 2, logBuffer.f28f);
        protoWriter.a(logBuffer.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        LogBuffer logBuffer = (LogBuffer) obj;
        reverseProtoWriter.getClass();
        logBuffer.getClass();
        reverseProtoWriter.d(logBuffer.b());
        LogMessage.f29k.a().g(reverseProtoWriter, 2, logBuffer.f28f);
        String str = logBuffer.f27e;
        if (Intrinsics.c(str, "")) {
            return;
        }
        ProtoAdapter.p.g(reverseProtoWriter, 1, str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        LogBuffer logBuffer = (LogBuffer) obj;
        logBuffer.getClass();
        int iE = logBuffer.b().e();
        String str = logBuffer.f27e;
        if (!Intrinsics.c(str, "")) {
            iE += ProtoAdapter.p.i(1, str);
        }
        return LogMessage.f29k.a().i(2, logBuffer.f28f) + iE;
    }
}
