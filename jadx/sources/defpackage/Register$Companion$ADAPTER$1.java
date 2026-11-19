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
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Register$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LRegister;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Register$Companion$ADAPTER$1 extends ProtoAdapter<Register> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        String strL = "";
        long jO = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new Register(strL, jO, protoReader.e(jD));
            }
            if (iG == 1) {
                ProtoAdapter.p.getClass();
                strL = protoReader.l();
            } else if (iG != 2) {
                protoReader.m(iG);
            } else {
                ProtoAdapter.l.getClass();
                jO = protoReader.o();
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Register register = (Register) obj;
        protoWriter.getClass();
        register.getClass();
        String str = register.f49e;
        if (!Intrinsics.c(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        long j2 = register.f50f;
        if (j2 != 0) {
            ProtoAdapter.l.f(protoWriter, 2, Long.valueOf(j2));
        }
        protoWriter.a(register.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Register register = (Register) obj;
        reverseProtoWriter.getClass();
        register.getClass();
        ByteString byteStringB = register.b();
        String str = register.f49e;
        reverseProtoWriter.d(byteStringB);
        long j2 = register.f50f;
        if (j2 != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 2, Long.valueOf(j2));
        }
        if (Intrinsics.c(str, "")) {
            return;
        }
        ProtoAdapter.p.g(reverseProtoWriter, 1, str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Register register = (Register) obj;
        register.getClass();
        int iE = register.b().e();
        String str = register.f49e;
        if (!Intrinsics.c(str, "")) {
            iE += ProtoAdapter.p.i(1, str);
        }
        long j2 = register.f50f;
        return j2 != 0 ? fc.c(j2, ProtoAdapter.l, 2, iE) : iE;
    }
}
