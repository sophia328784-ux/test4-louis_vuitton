package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBytes$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"CrashDetail$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LCrashDetail;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrashDetail$Companion$ADAPTER$1 extends ProtoAdapter<CrashDetail> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ByteString byteStringI = ByteString.f77399f;
        long jD = protoReader.d();
        ByteString byteStringI2 = byteStringI;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new CrashDetail(byteStringI, byteStringI2, protoReader.e(jD));
            }
            ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
            if (iG == 1) {
                protoAdapterKt$commonBytes$1.getClass();
                byteStringI = protoReader.i();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                protoAdapterKt$commonBytes$1.getClass();
                byteStringI2 = protoReader.i();
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        CrashDetail crashDetail = (CrashDetail) obj;
        protoWriter.getClass();
        crashDetail.getClass();
        ByteString byteString = crashDetail.f11e;
        ByteString byteString2 = crashDetail.f12f;
        ByteString byteString3 = ByteString.f77399f;
        boolean zC = Intrinsics.c(byteString, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!zC) {
            protoAdapterKt$commonBytes$1.f(protoWriter, 1, byteString);
        }
        if (!Intrinsics.c(byteString2, byteString3)) {
            protoAdapterKt$commonBytes$1.f(protoWriter, 2, byteString2);
        }
        protoWriter.a(crashDetail.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        CrashDetail crashDetail = (CrashDetail) obj;
        reverseProtoWriter.getClass();
        crashDetail.getClass();
        ByteString byteStringB = crashDetail.b();
        ByteString byteString = crashDetail.f11e;
        reverseProtoWriter.d(byteStringB);
        ByteString byteString2 = crashDetail.f12f;
        ByteString byteString3 = ByteString.f77399f;
        boolean zC = Intrinsics.c(byteString2, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!zC) {
            protoAdapterKt$commonBytes$1.g(reverseProtoWriter, 2, byteString2);
        }
        if (Intrinsics.c(byteString, byteString3)) {
            return;
        }
        protoAdapterKt$commonBytes$1.g(reverseProtoWriter, 1, byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        CrashDetail crashDetail = (CrashDetail) obj;
        crashDetail.getClass();
        ByteString byteStringB = crashDetail.b();
        ByteString byteString = crashDetail.f12f;
        int iE = byteStringB.e();
        ByteString byteString2 = crashDetail.f11e;
        ByteString byteString3 = ByteString.f77399f;
        boolean zC = Intrinsics.c(byteString2, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!zC) {
            iE += protoAdapterKt$commonBytes$1.i(1, byteString2);
        }
        return !Intrinsics.c(byteString, byteString3) ? protoAdapterKt$commonBytes$1.i(2, byteString) + iE : iE;
    }
}
