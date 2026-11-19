package com.squareup.wire;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonStructMap$1", "Lcom/squareup/wire/ProtoAdapter;", "", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonStructMap$1 extends ProtoAdapter<Map<String, ?>> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int iH = protoReader32.h();
        while (true) {
            int iNextTag = protoReader32.nextTag();
            if (iNextTag == -1) {
                protoReader32.l(iH);
                return linkedHashMap;
            }
            if (iNextTag != 1) {
                protoReader32.e();
            } else {
                int iH2 = protoReader32.h();
                String strD = null;
                Object objB = null;
                while (true) {
                    int iNextTag2 = protoReader32.nextTag();
                    if (iNextTag2 == -1) {
                        break;
                    }
                    if (iNextTag2 == 1) {
                        ProtoAdapter.p.getClass();
                        strD = protoReader32.d();
                    } else if (iNextTag2 != 2) {
                        protoReader32.f(iNextTag2);
                    } else {
                        objB = ProtoAdapter.t.b(protoReader32);
                    }
                }
                protoReader32.l(iH2);
                if (strD != null) {
                    linkedHashMap.put(strD, objB);
                }
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        long jD = protoReader.d();
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                protoReader.e(jD);
                return linkedHashMap;
            }
            if (iG != 1) {
                protoReader.p();
            } else {
                long jD2 = protoReader.d();
                String strL = null;
                Object objC = null;
                while (true) {
                    int iG2 = protoReader.g();
                    if (iG2 == -1) {
                        break;
                    }
                    if (iG2 == 1) {
                        ProtoAdapter.p.getClass();
                        strL = protoReader.l();
                    } else if (iG2 != 2) {
                        protoReader.m(iG2);
                    } else {
                        objC = ProtoAdapter.t.c(protoReader);
                    }
                }
                protoReader.e(jD2);
                if (strL != null) {
                    linkedHashMap.put(strL, objC);
                }
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Map map = (Map) obj;
        protoWriter.getClass();
        if (map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            int i2 = protoAdapterKt$commonString$1.i(1, str);
            ProtoAdapterKt$commonStructValue$1 protoAdapterKt$commonStructValue$1 = ProtoAdapter.t;
            int i3 = protoAdapterKt$commonStructValue$1.i(2, value) + i2;
            FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            fieldEncoding.getClass();
            ProtoWriter.f43473b.getClass();
            protoWriter.b(fieldEncoding.getValue() | 8);
            protoWriter.b(i3);
            protoAdapterKt$commonString$1.f(protoWriter, 1, str);
            protoAdapterKt$commonStructValue$1.f(protoWriter, 2, value);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Map map = (Map) obj;
        reverseProtoWriter.getClass();
        if (map == null) {
            return;
        }
        Set setEntrySet = map.entrySet();
        Map.Entry[] entryArr = (Map.Entry[]) setEntrySet.toArray(new Map.Entry[0]);
        ArraysKt.O(entryArr);
        for (Map.Entry entry : entryArr) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            int iB = reverseProtoWriter.b();
            ProtoAdapter.t.g(reverseProtoWriter, 2, value);
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
            reverseProtoWriter.g(reverseProtoWriter.b() - iB);
            FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            fieldEncoding.getClass();
            ProtoWriter.f43473b.getClass();
            reverseProtoWriter.g(fieldEncoding.getValue() | 8);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Map map = (Map) obj;
        int iA = 0;
        if (map == null) {
            return 0;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            int i2 = ProtoAdapter.t.i(2, value) + ProtoAdapter.p.i(1, str);
            ProtoWriter.f43473b.getClass();
            FieldEncoding fieldEncoding = FieldEncoding.VARINT;
            fieldEncoding.getClass();
            iA += ProtoWriter.Companion.a(i2) + ProtoWriter.Companion.a(fieldEncoding.getValue() | 8) + i2;
        }
        return iA;
    }
}
