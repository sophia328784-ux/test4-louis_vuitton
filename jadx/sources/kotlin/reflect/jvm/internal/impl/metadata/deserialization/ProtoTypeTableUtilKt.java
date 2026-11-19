package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProtoTypeTableUtilKt {
    public static final List a(ProtoBuf$Class protoBuf$Class, TypeTable typeTable) {
        protoBuf$Class.getClass();
        typeTable.getClass();
        List arrayList = protoBuf$Class.n;
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        if (arrayList == null) {
            List list = protoBuf$Class.o;
            list.getClass();
            List<Integer> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                arrayList.add(typeTable.a(num.intValue()));
            }
        }
        return arrayList;
    }

    public static final List b(ProtoBuf$Function protoBuf$Function, TypeTable typeTable) {
        protoBuf$Function.getClass();
        typeTable.getClass();
        List arrayList = protoBuf$Function.m;
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        if (arrayList == null) {
            List list = protoBuf$Function.n;
            list.getClass();
            List<Integer> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                arrayList.add(typeTable.a(num.intValue()));
            }
        }
        return arrayList;
    }

    public static final List c(ProtoBuf$Property protoBuf$Property, TypeTable typeTable) {
        protoBuf$Property.getClass();
        typeTable.getClass();
        List arrayList = protoBuf$Property.m;
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        if (arrayList == null) {
            List list = protoBuf$Property.n;
            list.getClass();
            List<Integer> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                arrayList.add(typeTable.a(num.intValue()));
            }
        }
        return arrayList;
    }

    public static final ProtoBuf$Type d(ProtoBuf$TypeAlias protoBuf$TypeAlias, TypeTable typeTable) {
        protoBuf$TypeAlias.getClass();
        typeTable.getClass();
        int i2 = protoBuf$TypeAlias.d;
        if ((i2 & 16) == 16) {
            ProtoBuf$Type protoBuf$Type = protoBuf$TypeAlias.f73498j;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i2 & 32) == 32) {
            return typeTable.a(protoBuf$TypeAlias.f73499k);
        }
        md.k("No expandedType in ProtoBuf.TypeAlias");
        return null;
    }

    public static final ProtoBuf$Type e(ProtoBuf$Type protoBuf$Type, TypeTable typeTable) {
        protoBuf$Type.getClass();
        typeTable.getClass();
        int i2 = protoBuf$Type.d;
        if ((i2 & 256) == 256) {
            return protoBuf$Type.n;
        }
        if ((i2 & 512) == 512) {
            return typeTable.a(protoBuf$Type.o);
        }
        return null;
    }

    public static final ProtoBuf$Type f(ProtoBuf$Function protoBuf$Function, TypeTable typeTable) {
        protoBuf$Function.getClass();
        typeTable.getClass();
        int i2 = protoBuf$Function.d;
        if ((i2 & 32) == 32) {
            return protoBuf$Function.f73407k;
        }
        if ((i2 & 64) == 64) {
            return typeTable.a(protoBuf$Function.l);
        }
        return null;
    }

    public static final ProtoBuf$Type g(ProtoBuf$Property protoBuf$Property, TypeTable typeTable) {
        protoBuf$Property.getClass();
        typeTable.getClass();
        int i2 = protoBuf$Property.d;
        if ((i2 & 32) == 32) {
            return protoBuf$Property.f73443k;
        }
        if ((i2 & 64) == 64) {
            return typeTable.a(protoBuf$Property.l);
        }
        return null;
    }

    public static final ProtoBuf$Type h(ProtoBuf$Function protoBuf$Function, TypeTable typeTable) {
        protoBuf$Function.getClass();
        typeTable.getClass();
        int i2 = protoBuf$Function.d;
        if ((i2 & 8) == 8) {
            ProtoBuf$Type protoBuf$Type = protoBuf$Function.f73404h;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i2 & 16) == 16) {
            return typeTable.a(protoBuf$Function.f73405i);
        }
        md.k("No returnType in ProtoBuf.Function");
        return null;
    }

    public static final ProtoBuf$Type i(ProtoBuf$Property protoBuf$Property, TypeTable typeTable) {
        protoBuf$Property.getClass();
        typeTable.getClass();
        int i2 = protoBuf$Property.d;
        if ((i2 & 8) == 8) {
            ProtoBuf$Type protoBuf$Type = protoBuf$Property.f73440h;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i2 & 16) == 16) {
            return typeTable.a(protoBuf$Property.f73441i);
        }
        md.k("No returnType in ProtoBuf.Property");
        return null;
    }

    public static final List j(ProtoBuf$Class protoBuf$Class, TypeTable typeTable) {
        protoBuf$Class.getClass();
        typeTable.getClass();
        List arrayList = protoBuf$Class.f73333i;
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        if (arrayList == null) {
            List list = protoBuf$Class.f73334j;
            list.getClass();
            List<Integer> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                arrayList.add(typeTable.a(num.intValue()));
            }
        }
        return arrayList;
    }

    public static final ProtoBuf$Type k(ProtoBuf$ValueParameter protoBuf$ValueParameter, TypeTable typeTable) {
        protoBuf$ValueParameter.getClass();
        typeTable.getClass();
        int i2 = protoBuf$ValueParameter.d;
        if ((i2 & 4) == 4) {
            ProtoBuf$Type protoBuf$Type = protoBuf$ValueParameter.g;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i2 & 8) == 8) {
            return typeTable.a(protoBuf$ValueParameter.f73530h);
        }
        md.k("No type in ProtoBuf.ValueParameter");
        return null;
    }

    public static final ProtoBuf$Type l(ProtoBuf$TypeAlias protoBuf$TypeAlias, TypeTable typeTable) {
        protoBuf$TypeAlias.getClass();
        typeTable.getClass();
        int i2 = protoBuf$TypeAlias.d;
        if ((i2 & 4) == 4) {
            ProtoBuf$Type protoBuf$Type = protoBuf$TypeAlias.f73496h;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i2 & 8) == 8) {
            return typeTable.a(protoBuf$TypeAlias.f73497i);
        }
        md.k("No underlyingType in ProtoBuf.TypeAlias");
        return null;
    }

    public static final List m(ProtoBuf$TypeParameter protoBuf$TypeParameter, TypeTable typeTable) {
        protoBuf$TypeParameter.getClass();
        typeTable.getClass();
        List arrayList = protoBuf$TypeParameter.f73510i;
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        if (arrayList == null) {
            List list = protoBuf$TypeParameter.f73511j;
            list.getClass();
            List<Integer> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                arrayList.add(typeTable.a(num.intValue()));
            }
        }
        return arrayList;
    }
}
