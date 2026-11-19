package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
final class ListFieldSchemaLite implements ListFieldSchema {
    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public final Internal.ProtobufList a(long j2, Object obj) {
        Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.f13019c.h(j2, obj);
        if (protobufList.m0()) {
            return protobufList;
        }
        int size = protobufList.size();
        Internal.ProtobufList protobufListC = protobufList.c(size == 0 ? 10 : size * 2);
        UnsafeUtil.o(j2, obj, protobufListC);
        return protobufListC;
    }

    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public final void b(long j2, Object obj, Object obj2) {
        UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f13019c;
        Internal.ProtobufList protobufListC = (Internal.ProtobufList) memoryAccessor.h(j2, obj);
        Internal.ProtobufList protobufList = (Internal.ProtobufList) memoryAccessor.h(j2, obj2);
        int size = protobufListC.size();
        int size2 = protobufList.size();
        if (size > 0 && size2 > 0) {
            if (!protobufListC.m0()) {
                protobufListC = protobufListC.c(size2 + size);
            }
            protobufListC.addAll(protobufList);
        }
        if (size > 0) {
            protobufList = protobufListC;
        }
        UnsafeUtil.o(j2, obj, protobufList);
    }

    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public final void c(long j2, Object obj) {
        ((Internal.ProtobufList) UnsafeUtil.f13019c.h(j2, obj)).l0();
    }
}
