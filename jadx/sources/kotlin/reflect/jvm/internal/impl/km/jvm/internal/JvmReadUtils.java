package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.km.KmPackage;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadContext;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;
import kotlin.reflect.jvm.internal.impl.km.jvm.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmReadUtils {
    public static boolean a(Metadata metadata) {
        return new JvmMetadataVersion(metadata.mv()).compareTo(new JvmMetadataVersion(1, 4, 0)) < 0;
    }

    public static KmPackage b(Metadata metadata) throws InvalidProtocolBufferException {
        metadata.getClass();
        Pair pairI = JvmProtoBufUtil.i(JvmExceptionUtilsKt.a(metadata), metadata.d2());
        JvmNameResolver jvmNameResolver = (JvmNameResolver) pairI.f71705b;
        ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) pairI.f71706c;
        boolean zA = a(metadata);
        EmptyList emptyList = EmptyList.f71768b;
        protoBuf$Package.getClass();
        jvmNameResolver.getClass();
        emptyList.getClass();
        KmPackage kmPackage = new KmPackage();
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Package.f73417h;
        protoBuf$TypeTable.getClass();
        TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
        VersionRequirementTable.Companion companion = VersionRequirementTable.f73600b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Package.f73418i;
        protoBuf$VersionRequirementTable.getClass();
        companion.getClass();
        ReadContext readContext = new ReadContext(jvmNameResolver, typeTable, VersionRequirementTable.Companion.a(protoBuf$VersionRequirementTable), zA, null, emptyList, 16, null);
        List list = protoBuf$Package.f73415e;
        list.getClass();
        List list2 = protoBuf$Package.f73416f;
        list2.getClass();
        List list3 = protoBuf$Package.g;
        list3.getClass();
        ReadersKt.j(kmPackage, list, list2, list3, readContext);
        Iterator it = readContext.f72784h.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).b(kmPackage, protoBuf$Package, readContext);
        }
        return kmPackage;
    }
}
