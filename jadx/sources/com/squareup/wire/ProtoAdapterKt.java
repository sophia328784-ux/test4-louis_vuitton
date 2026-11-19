package com.squareup.wire;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"wire-runtime"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ProtoAdapterKt {
    public static final void a(final ProtoAdapter protoAdapter, final String str) {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass kClass = protoAdapter.f43459b;
        final Syntax syntax = Syntax.PROTO_3;
        final Object obj = protoAdapter.d;
        new ProtoAdapter<Object>(str, fieldEncoding, kClass, syntax, obj) { // from class: com.squareup.wire.ProtoAdapterKt$commonWrapper$1
            @Override // com.squareup.wire.ProtoAdapter
            public final Object b(ProtoReader32 protoReader32) {
                protoReader32.getClass();
                ProtoAdapter protoAdapter2 = protoAdapter;
                Object objB = protoAdapter2.d;
                int iH = protoReader32.h();
                while (true) {
                    int iNextTag = protoReader32.nextTag();
                    if (iNextTag == -1) {
                        protoReader32.l(iH);
                        return objB;
                    }
                    if (iNextTag == 1) {
                        objB = protoAdapter2.b(protoReader32);
                    } else {
                        protoReader32.f(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object c(ProtoReader protoReader) throws IOException {
                protoReader.getClass();
                ProtoAdapter protoAdapter2 = protoAdapter;
                Object objC = protoAdapter2.d;
                long jD = protoReader.d();
                while (true) {
                    int iG = protoReader.g();
                    if (iG == -1) {
                        protoReader.e(jD);
                        return objC;
                    }
                    if (iG == 1) {
                        objC = protoAdapter2.c(protoReader);
                    } else {
                        protoReader.m(iG);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void d(ProtoWriter protoWriter, Object obj2) {
                protoWriter.getClass();
                if (obj2 != null) {
                    ProtoAdapter protoAdapter2 = protoAdapter;
                    if (obj2.equals(protoAdapter2.d)) {
                        return;
                    }
                    protoAdapter2.f(protoWriter, 1, obj2);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void e(ReverseProtoWriter reverseProtoWriter, Object obj2) {
                reverseProtoWriter.getClass();
                if (obj2 != null) {
                    ProtoAdapter protoAdapter2 = protoAdapter;
                    if (obj2.equals(protoAdapter2.d)) {
                        return;
                    }
                    protoAdapter2.g(reverseProtoWriter, 1, obj2);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final int h(Object obj2) {
                if (obj2 == null) {
                    return 0;
                }
                ProtoAdapter protoAdapter2 = protoAdapter;
                if (obj2.equals(protoAdapter2.d)) {
                    return 0;
                }
                return protoAdapter2.i(1, obj2);
            }
        };
    }
}
