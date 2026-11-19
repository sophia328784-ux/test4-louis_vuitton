package com.google.crypto.tink.shaded.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
abstract class ListFieldSchema {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ListFieldSchemaFull f34200a = new ListFieldSchemaFull();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ListFieldSchemaLite f34201b = new ListFieldSchemaLite();

    public static final class ListFieldSchemaFull extends ListFieldSchema {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Class f34202c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

        public static List d(Object obj, long j2, int i2) {
            List listC;
            List list = (List) UnsafeUtil.f34267c.i(j2, obj);
            if (list.isEmpty()) {
                if (list instanceof LazyStringList) {
                    listC = new LazyStringArrayList(i2);
                } else {
                    listC = ((list instanceof PrimitiveNonBoxingCollection) && (list instanceof Internal.ProtobufList)) ? ((Internal.ProtobufList) list).c(i2) : new ArrayList(i2);
                }
                UnsafeUtil.p(j2, obj, listC);
                return listC;
            }
            if (f34202c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i2);
                arrayList.addAll(list);
                UnsafeUtil.p(j2, obj, arrayList);
                return arrayList;
            }
            if (list instanceof UnmodifiableLazyStringList) {
                LazyStringArrayList lazyStringArrayList = new LazyStringArrayList(list.size() + i2);
                lazyStringArrayList.addAll((UnmodifiableLazyStringList) list);
                UnsafeUtil.p(j2, obj, lazyStringArrayList);
                return lazyStringArrayList;
            }
            if ((list instanceof PrimitiveNonBoxingCollection) && (list instanceof Internal.ProtobufList)) {
                Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                if (!protobufList.m0()) {
                    Internal.ProtobufList protobufListC = protobufList.c(list.size() + i2);
                    UnsafeUtil.p(j2, obj, protobufListC);
                    return protobufListC;
                }
            }
            return list;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final void a(long j2, Object obj) {
            Object objUnmodifiableList;
            List list = (List) UnsafeUtil.f34267c.i(j2, obj);
            if (list instanceof LazyStringList) {
                objUnmodifiableList = ((LazyStringList) list).q0();
            } else {
                if (f34202c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof PrimitiveNonBoxingCollection) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.m0()) {
                        protobufList.l0();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            UnsafeUtil.p(j2, obj, objUnmodifiableList);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final void b(long j2, Object obj, Object obj2) {
            List list = (List) UnsafeUtil.f34267c.i(j2, obj2);
            List listD = d(obj, j2, list.size());
            int size = listD.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listD.addAll(list);
            }
            if (size > 0) {
                list = listD;
            }
            UnsafeUtil.p(j2, obj, list);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final List c(long j2, Object obj) {
            return d(obj, j2, 10);
        }
    }

    public static final class ListFieldSchemaLite extends ListFieldSchema {
        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final void a(long j2, Object obj) {
            ((Internal.ProtobufList) UnsafeUtil.f34267c.i(j2, obj)).l0();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final void b(long j2, Object obj, Object obj2) {
            UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f34267c;
            Internal.ProtobufList protobufListC = (Internal.ProtobufList) memoryAccessor.i(j2, obj);
            Internal.ProtobufList protobufList = (Internal.ProtobufList) memoryAccessor.i(j2, obj2);
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
            UnsafeUtil.p(j2, obj, protobufList);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ListFieldSchema
        public final List c(long j2, Object obj) {
            Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.f34267c.i(j2, obj);
            if (protobufList.m0()) {
                return protobufList;
            }
            int size = protobufList.size();
            Internal.ProtobufList protobufListC = protobufList.c(size == 0 ? 10 : size * 2);
            UnsafeUtil.p(j2, obj, protobufListC);
            return protobufListC;
        }
    }

    public abstract void a(long j2, Object obj);

    public abstract void b(long j2, Object obj, Object obj2);

    public abstract List c(long j2, Object obj);
}
