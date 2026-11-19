package com.squareup.wire;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonStructList$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonStructList$1 extends ProtoAdapter<List<?>> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ArrayList arrayList = new ArrayList();
        int iH = protoReader32.h();
        while (true) {
            int iNextTag = protoReader32.nextTag();
            if (iNextTag == -1) {
                protoReader32.l(iH);
                return arrayList;
            }
            if (iNextTag != 1) {
                protoReader32.e();
            } else {
                arrayList.add(ProtoAdapter.t.b(protoReader32));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        long jD = protoReader.d();
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                protoReader.e(jD);
                return arrayList;
            }
            if (iG != 1) {
                protoReader.p();
            } else {
                arrayList.add(ProtoAdapter.t.c(protoReader));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ProtoAdapter.t.f(protoWriter, 1, it.next());
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; -1 < size; size--) {
            ProtoAdapter.t.g(reverseProtoWriter, 1, list.get(size));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        List list = (List) obj;
        int i2 = 0;
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i2 += ProtoAdapter.t.i(1, it.next());
        }
        return i2;
    }
}
