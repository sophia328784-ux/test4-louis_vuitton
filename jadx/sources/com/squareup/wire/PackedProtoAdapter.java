package com.squareup.wire;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/PackedProtoAdapter;", "E", "Lcom/squareup/wire/ProtoAdapter;", "", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PackedProtoAdapter<E> extends ProtoAdapter<List<? extends E>> {
    public final ProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PackedProtoAdapter(ProtoAdapter<E> protoAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(List.class), null, protoAdapter.f43460c, EmptyList.f71768b, null, 32, null);
        protoAdapter.getClass();
        this.u = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return CollectionsKt.O(this.u.b(protoReader32));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return CollectionsKt.O(this.u.c(protoReader));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        list.getClass();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.u.d(protoWriter, list.get(i2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        list.getClass();
        int size = list.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            } else {
                this.u.e(reverseProtoWriter, list.get(size));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        if (list == null || list.isEmpty()) {
            return;
        }
        super.f(protoWriter, i2, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        if (list == null || list.isEmpty()) {
            return;
        }
        super.g(reverseProtoWriter, i2, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        List list = (List) obj;
        list.getClass();
        int size = list.size();
        int iH = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iH += this.u.h(list.get(i2));
        }
        return iH;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        List list = (List) obj;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        return super.i(i2, list);
    }
}
