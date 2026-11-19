package com.squareup.wire;

import defpackage.cj;
import defpackage.md;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonStructValue$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonStructValue$1 extends ProtoAdapter<Object> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int iH = protoReader32.h();
        while (true) {
            Object objB = null;
            while (true) {
                int iNextTag = protoReader32.nextTag();
                if (iNextTag == -1) {
                    protoReader32.l(iH);
                    return objB;
                }
                switch (iNextTag) {
                    case 1:
                        break;
                    case 2:
                        objB = ProtoAdapter.n.b(protoReader32);
                        break;
                    case 3:
                        ProtoAdapter.p.getClass();
                        objB = protoReader32.d();
                        break;
                    case 4:
                        objB = ProtoAdapter.g.b(protoReader32);
                        break;
                    case 5:
                        objB = ProtoAdapter.q.b(protoReader32);
                        break;
                    case 6:
                        objB = ProtoAdapter.r.b(protoReader32);
                        break;
                    default:
                        protoReader32.e();
                        break;
                }
            }
            ProtoAdapter.s.b(protoReader32);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long jD = protoReader.d();
        while (true) {
            Object objC = null;
            while (true) {
                int iG = protoReader.g();
                if (iG == -1) {
                    protoReader.e(jD);
                    return objC;
                }
                switch (iG) {
                    case 1:
                        break;
                    case 2:
                        objC = ProtoAdapter.n.c(protoReader);
                        break;
                    case 3:
                        ProtoAdapter.p.getClass();
                        objC = protoReader.l();
                        break;
                    case 4:
                        objC = ProtoAdapter.g.c(protoReader);
                        break;
                    case 5:
                        objC = ProtoAdapter.q.c(protoReader);
                        break;
                    case 6:
                        objC = ProtoAdapter.r.c(protoReader);
                        break;
                    default:
                        protoReader.p();
                        break;
                }
            }
            ProtoAdapter.s.c(protoReader);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        if (obj == null) {
            ProtoAdapter.s.f(protoWriter, 1, obj);
            return;
        }
        if (obj instanceof Number) {
            ProtoAdapter.n.f(protoWriter, 2, Double.valueOf(((Number) obj).doubleValue()));
            return;
        }
        if (obj instanceof String) {
            ProtoAdapter.p.f(protoWriter, 3, obj);
            return;
        }
        if (obj instanceof Boolean) {
            ProtoAdapter.g.f(protoWriter, 4, obj);
            return;
        }
        if (obj instanceof Map) {
            ProtoAdapter.q.f(protoWriter, 5, (Map) obj);
        } else if (obj instanceof List) {
            ProtoAdapter.r.f(protoWriter, 6, obj);
        } else {
            md.n(cj.i(obj, "unexpected struct value: "));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        if (obj == null) {
            ProtoAdapter.s.g(reverseProtoWriter, 1, obj);
            return;
        }
        if (obj instanceof Number) {
            ProtoAdapter.n.g(reverseProtoWriter, 2, Double.valueOf(((Number) obj).doubleValue()));
            return;
        }
        if (obj instanceof String) {
            ProtoAdapter.p.g(reverseProtoWriter, 3, obj);
            return;
        }
        if (obj instanceof Boolean) {
            ProtoAdapter.g.g(reverseProtoWriter, 4, obj);
            return;
        }
        if (obj instanceof Map) {
            ProtoAdapter.q.g(reverseProtoWriter, 5, (Map) obj);
        } else if (obj instanceof List) {
            ProtoAdapter.r.g(reverseProtoWriter, 6, obj);
        } else {
            md.n(cj.i(obj, "unexpected struct value: "));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        protoWriter.getClass();
        if (obj != null) {
            super.f(protoWriter, i2, obj);
            return;
        }
        FieldEncoding fieldEncoding = this.f43458a;
        fieldEncoding.getClass();
        ProtoWriter.f43473b.getClass();
        protoWriter.b((i2 << 3) | fieldEncoding.getValue());
        protoWriter.b(h(obj));
        d(protoWriter, obj);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        reverseProtoWriter.getClass();
        if (obj != null) {
            super.g(reverseProtoWriter, i2, obj);
            return;
        }
        int iB = reverseProtoWriter.b();
        e(reverseProtoWriter, obj);
        reverseProtoWriter.g(reverseProtoWriter.b() - iB);
        FieldEncoding fieldEncoding = this.f43458a;
        fieldEncoding.getClass();
        ProtoWriter.f43473b.getClass();
        reverseProtoWriter.g(fieldEncoding.getValue() | (i2 << 3));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        if (obj == null) {
            return ProtoAdapter.s.i(1, obj);
        }
        if (obj instanceof Number) {
            return ProtoAdapter.n.i(2, Double.valueOf(((Number) obj).doubleValue()));
        }
        if (obj instanceof String) {
            return ProtoAdapter.p.i(3, obj);
        }
        if (obj instanceof Boolean) {
            return ProtoAdapter.g.i(4, obj);
        }
        if (obj instanceof Map) {
            return ProtoAdapter.q.i(5, (Map) obj);
        }
        if (obj instanceof List) {
            return ProtoAdapter.r.i(6, obj);
        }
        md.n(cj.i(obj, "unexpected struct value: "));
        return 0;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        if (obj != null) {
            return super.i(i2, obj);
        }
        int iH = h(obj);
        ProtoWriter.f43473b.getClass();
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        fieldEncoding.getClass();
        return ProtoWriter.Companion.a(iH) + ProtoWriter.Companion.a((i2 << 3) | fieldEncoding.getValue()) + iH;
    }
}
