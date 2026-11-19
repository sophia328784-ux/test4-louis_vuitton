package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"MemoryError$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryError;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryError$Companion$ADAPTER$1 extends ProtoAdapter<MemoryError> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        Object objC = MemoryError.Tool.GWP_ASAN;
        Object objC2 = MemoryError.Type.UNKNOWN;
        long jD = protoReader.d();
        Object objC3 = null;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new MemoryError((MemoryError.Tool) objC, (MemoryError.Type) objC2, (HeapObject) objC3, protoReader.e(jD));
            }
            if (iG == 1) {
                try {
                    objC = MemoryError.Tool.ADAPTER.c(protoReader);
                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                    protoReader.a(iG, FieldEncoding.VARINT, Long.valueOf(e2.f43462b));
                }
            } else if (iG == 2) {
                try {
                    objC2 = MemoryError.Type.ADAPTER.c(protoReader);
                } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                    protoReader.a(iG, FieldEncoding.VARINT, Long.valueOf(e3.f43462b));
                }
            } else if (iG != 3) {
                protoReader.m(iG);
            } else {
                objC3 = HeapObject.f17k.c(protoReader);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        MemoryError memoryError = (MemoryError) obj;
        protoWriter.getClass();
        memoryError.getClass();
        MemoryError.Tool tool = memoryError.f41e;
        if (tool != MemoryError.Tool.GWP_ASAN) {
            MemoryError.Tool.ADAPTER.f(protoWriter, 1, tool);
        }
        MemoryError.Type type = memoryError.f42f;
        if (type != MemoryError.Type.UNKNOWN) {
            MemoryError.Type.ADAPTER.f(protoWriter, 2, type);
        }
        HeapObject.f17k.f(protoWriter, 3, memoryError.g);
        protoWriter.a(memoryError.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        MemoryError memoryError = (MemoryError) obj;
        reverseProtoWriter.getClass();
        memoryError.getClass();
        reverseProtoWriter.d(memoryError.b());
        HeapObject.f17k.g(reverseProtoWriter, 3, memoryError.g);
        MemoryError.Type type = memoryError.f42f;
        if (type != MemoryError.Type.UNKNOWN) {
            MemoryError.Type.ADAPTER.g(reverseProtoWriter, 2, type);
        }
        MemoryError.Tool tool = memoryError.f41e;
        if (tool != MemoryError.Tool.GWP_ASAN) {
            MemoryError.Tool.ADAPTER.g(reverseProtoWriter, 1, tool);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        MemoryError memoryError = (MemoryError) obj;
        memoryError.getClass();
        int iE = memoryError.b().e();
        MemoryError.Tool tool = memoryError.f41e;
        if (tool != MemoryError.Tool.GWP_ASAN) {
            iE += MemoryError.Tool.ADAPTER.i(1, tool);
        }
        MemoryError.Type type = memoryError.f42f;
        if (type != MemoryError.Type.UNKNOWN) {
            iE += MemoryError.Type.ADAPTER.i(2, type);
        }
        return HeapObject.f17k.i(3, memoryError.g) + iE;
    }
}
