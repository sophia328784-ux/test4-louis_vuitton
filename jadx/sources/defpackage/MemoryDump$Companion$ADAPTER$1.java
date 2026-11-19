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
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"MemoryDump$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryDump;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryDump$Companion$ADAPTER$1 extends ProtoAdapter<MemoryDump> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ByteString byteString = ByteString.f77399f;
        long jD = protoReader.d();
        ByteString byteStringI = byteString;
        String strL = "";
        String strL2 = strL;
        long jO = 0;
        ArmMTEMetadata armMTEMetadataJ = null;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new MemoryDump(strL, strL2, jO, byteStringI, armMTEMetadataJ, protoReader.e(jD));
            }
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            if (iG == 1) {
                protoAdapterKt$commonString$1.getClass();
                strL = protoReader.l();
            } else if (iG == 2) {
                protoAdapterKt$commonString$1.getClass();
                strL2 = protoReader.l();
            } else if (iG == 3) {
                ProtoAdapter.l.getClass();
                jO = protoReader.o();
            } else if (iG == 4) {
                ProtoAdapter.o.getClass();
                byteStringI = protoReader.i();
            } else if (iG != 6) {
                protoReader.m(iG);
            } else {
                ArmMTEMetadata.f1f.getClass();
                armMTEMetadataJ = ArmMTEMetadata$Companion$ADAPTER$1.j(protoReader);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        MemoryDump memoryDump = (MemoryDump) obj;
        protoWriter.getClass();
        memoryDump.getClass();
        String str = memoryDump.f36e;
        ByteString byteString = memoryDump.f38h;
        String str2 = memoryDump.f37f;
        boolean zC = Intrinsics.c(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str);
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str2);
        }
        long j2 = memoryDump.g;
        if (j2 != 0) {
            ProtoAdapter.l.f(protoWriter, 3, Long.valueOf(j2));
        }
        if (!Intrinsics.c(byteString, ByteString.f77399f)) {
            ProtoAdapter.o.f(protoWriter, 4, byteString);
        }
        ArmMTEMetadata.f1f.f(protoWriter, 6, memoryDump.f39i);
        protoWriter.a(memoryDump.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        MemoryDump memoryDump = (MemoryDump) obj;
        reverseProtoWriter.getClass();
        memoryDump.getClass();
        ByteString byteStringB = memoryDump.b();
        String str = memoryDump.f36e;
        String str2 = memoryDump.f37f;
        reverseProtoWriter.d(byteStringB);
        ArmMTEMetadata.f1f.g(reverseProtoWriter, 6, memoryDump.f39i);
        ByteString byteString = memoryDump.f38h;
        if (!Intrinsics.c(byteString, ByteString.f77399f)) {
            ProtoAdapter.o.g(reverseProtoWriter, 4, byteString);
        }
        long j2 = memoryDump.g;
        if (j2 != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 3, Long.valueOf(j2));
        }
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str2);
        }
        if (Intrinsics.c(str, "")) {
            return;
        }
        protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        MemoryDump memoryDump = (MemoryDump) obj;
        memoryDump.getClass();
        ByteString byteStringB = memoryDump.b();
        ByteString byteString = memoryDump.f38h;
        String str = memoryDump.f37f;
        int iE = byteStringB.e();
        String str2 = memoryDump.f36e;
        boolean zC = Intrinsics.c(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(1, str2);
        }
        if (!Intrinsics.c(str, "")) {
            iE += protoAdapterKt$commonString$1.i(2, str);
        }
        long j2 = memoryDump.g;
        if (j2 != 0) {
            iE = fc.c(j2, ProtoAdapter.l, 3, iE);
        }
        if (!Intrinsics.c(byteString, ByteString.f77399f)) {
            iE += ProtoAdapter.o.i(4, byteString);
        }
        return ArmMTEMetadata.f1f.i(6, memoryDump.f39i) + iE;
    }
}
