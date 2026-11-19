package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Cause$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LCause;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Cause$Companion$ADAPTER$1 extends ProtoAdapter<Cause> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        String strL = "";
        Object objC = null;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new Cause(strL, (MemoryError) objC, protoReader.e(jD));
            }
            if (iG == 1) {
                ProtoAdapter.p.getClass();
                strL = protoReader.l();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                objC = MemoryError.f40h.c(protoReader);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Cause cause = (Cause) obj;
        protoWriter.getClass();
        cause.getClass();
        String str = cause.f9e;
        if (!Intrinsics.c(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        MemoryError.f40h.f(protoWriter, 2, cause.f10f);
        protoWriter.a(cause.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Cause cause = (Cause) obj;
        reverseProtoWriter.getClass();
        cause.getClass();
        reverseProtoWriter.d(cause.b());
        MemoryError.f40h.g(reverseProtoWriter, 2, cause.f10f);
        String str = cause.f9e;
        if (Intrinsics.c(str, "")) {
            return;
        }
        ProtoAdapter.p.g(reverseProtoWriter, 1, str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Cause cause = (Cause) obj;
        cause.getClass();
        int iE = cause.b().e();
        String str = cause.f9e;
        if (!Intrinsics.c(str, "")) {
            iE += ProtoAdapter.p.i(1, str);
        }
        return MemoryError.f40h.i(2, cause.f10f) + iE;
    }
}
