package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeTable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f73589a;

    public TypeTable(ProtoBuf$TypeTable protoBuf$TypeTable) {
        protoBuf$TypeTable.getClass();
        List list = protoBuf$TypeTable.d;
        if ((protoBuf$TypeTable.f73522c & 1) == 1) {
            int i2 = protoBuf$TypeTable.f73523e;
            list.getClass();
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            int i3 = 0;
            for (Object obj : list2) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ProtoBuf$Type protoBuf$TypeK = (ProtoBuf$Type) obj;
                if (i3 >= i2) {
                    protoBuf$TypeK.getClass();
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$TypeK);
                    builderU.f73487e |= 2;
                    builderU.g = true;
                    protoBuf$TypeK = builderU.k();
                    if (!protoBuf$TypeK.a()) {
                        throw new UninitializedMessageException(protoBuf$TypeK);
                    }
                }
                arrayList.add(protoBuf$TypeK);
                i3 = i4;
            }
            list = arrayList;
        }
        list.getClass();
        this.f73589a = list;
    }

    public final ProtoBuf$Type a(int i2) {
        return (ProtoBuf$Type) this.f73589a.get(i2);
    }
}
