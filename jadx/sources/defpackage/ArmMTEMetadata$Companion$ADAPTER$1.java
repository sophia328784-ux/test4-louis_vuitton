package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"ArmMTEMetadata$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LArmMTEMetadata;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ArmMTEMetadata$Companion$ADAPTER$1 extends ProtoAdapter<ArmMTEMetadata> {
    public static ArmMTEMetadata j(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ByteString byteStringI = ByteString.f77399f;
        long jD = protoReader.d();
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new ArmMTEMetadata(byteStringI, protoReader.e(jD));
            }
            if (iG == 1) {
                ProtoAdapter.o.getClass();
                byteStringI = protoReader.i();
            } else {
                protoReader.m(iG);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ Object c(ProtoReader protoReader) {
        return j(protoReader);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        ArmMTEMetadata armMTEMetadata = (ArmMTEMetadata) obj;
        protoWriter.getClass();
        armMTEMetadata.getClass();
        ByteString byteString = armMTEMetadata.f2e;
        if (!Intrinsics.c(byteString, ByteString.f77399f)) {
            ProtoAdapter.o.f(protoWriter, 1, byteString);
        }
        protoWriter.a(armMTEMetadata.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        ArmMTEMetadata armMTEMetadata = (ArmMTEMetadata) obj;
        reverseProtoWriter.getClass();
        armMTEMetadata.getClass();
        reverseProtoWriter.d(armMTEMetadata.b());
        ByteString byteString = armMTEMetadata.f2e;
        if (Intrinsics.c(byteString, ByteString.f77399f)) {
            return;
        }
        ProtoAdapter.o.g(reverseProtoWriter, 1, byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ArmMTEMetadata armMTEMetadata = (ArmMTEMetadata) obj;
        armMTEMetadata.getClass();
        int iE = armMTEMetadata.b().e();
        ByteString byteString = armMTEMetadata.f2e;
        return !Intrinsics.c(byteString, ByteString.f77399f) ? ProtoAdapter.o.i(1, byteString) + iE : iE;
    }
}
