package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"FD$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LFD;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FD$Companion$ADAPTER$1 extends ProtoAdapter<FD> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        int iN = 0;
        String strL = "";
        String strL2 = strL;
        long jO = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new FD(iN, strL, strL2, jO, protoReader.e(jD));
            }
            if (iG != 1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (iG == 2) {
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                } else if (iG == 3) {
                    protoAdapterKt$commonString$1.getClass();
                    strL2 = protoReader.l();
                } else if (iG != 4) {
                    protoReader.m(iG);
                } else {
                    ProtoAdapter.l.getClass();
                    jO = protoReader.o();
                }
            } else {
                ProtoAdapter.f43454h.getClass();
                iN = protoReader.n();
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        FD fd = (FD) obj;
        protoWriter.getClass();
        fd.getClass();
        int i2 = fd.f14e;
        String str = fd.g;
        String str2 = fd.f15f;
        if (i2 != 0) {
            ProtoAdapter.f43454h.f(protoWriter, 1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str2);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 3, str);
        }
        long j2 = fd.f16h;
        if (j2 != 0) {
            ProtoAdapter.l.f(protoWriter, 4, Long.valueOf(j2));
        }
        protoWriter.a(fd.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        FD fd = (FD) obj;
        reverseProtoWriter.getClass();
        fd.getClass();
        ByteString byteStringB = fd.b();
        String str = fd.f15f;
        String str2 = fd.g;
        reverseProtoWriter.d(byteStringB);
        long j2 = fd.f16h;
        if (j2 != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 4, Long.valueOf(j2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 3, str2);
        }
        if (!Intrinsics.c(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str);
        }
        int i2 = fd.f14e;
        if (i2 != 0) {
            ProtoAdapter.f43454h.g(reverseProtoWriter, 1, Integer.valueOf(i2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        FD fd = (FD) obj;
        fd.getClass();
        ByteString byteStringB = fd.b();
        String str = fd.g;
        String str2 = fd.f15f;
        int iE = byteStringB.e();
        int i2 = fd.f14e;
        if (i2 != 0) {
            iE += ProtoAdapter.f43454h.i(1, Integer.valueOf(i2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(2, str2);
        }
        if (!Intrinsics.c(str, "")) {
            iE += protoAdapterKt$commonString$1.i(3, str);
        }
        long j2 = fd.f16h;
        return j2 != 0 ? fc.c(j2, ProtoAdapter.l, 4, iE) : iE;
    }
}
