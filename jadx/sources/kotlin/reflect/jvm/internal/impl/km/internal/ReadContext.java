package kotlin.reflect.jvm.internal.impl.km.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;

/* JADX INFO: loaded from: classes4.dex */
public final class ReadContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NameResolver f72779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeTable f72780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VersionRequirementTable f72781c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReadContext f72782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f72783f;
    public final LinkedHashMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f72784h;

    public ReadContext(NameResolver nameResolver, TypeTable typeTable, VersionRequirementTable versionRequirementTable, boolean z, ReadContext readContext, List<? extends Object> list) {
        nameResolver.getClass();
        typeTable.getClass();
        versionRequirementTable.getClass();
        list.getClass();
        this.f72779a = nameResolver;
        this.f72780b = typeTable;
        this.f72781c = versionRequirementTable;
        this.d = z;
        this.f72782e = readContext;
        this.f72783f = list;
        this.g = new LinkedHashMap();
        MetadataExtensions.f72792a.getClass();
        this.f72784h = MetadataExtensions.Companion.a();
    }

    public final Integer a(int i2) {
        Integer num = (Integer) this.g.get(Integer.valueOf(i2));
        if (num != null) {
            return num;
        }
        ReadContext readContext = this.f72782e;
        if (readContext != null) {
            return readContext.a(i2);
        }
        return null;
    }

    public final ReadContext b(List list) {
        list.getClass();
        ReadContext readContext = new ReadContext(this.f72779a, this.f72780b, this.f72781c, this.d, this, this.f72783f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = (ProtoBuf$TypeParameter) it.next();
            readContext.g.put(Integer.valueOf(protoBuf$TypeParameter.f73508f), Integer.valueOf(protoBuf$TypeParameter.f73507e));
        }
        return readContext;
    }

    public ReadContext(NameResolver nameResolver, TypeTable typeTable, VersionRequirementTable versionRequirementTable, boolean z, ReadContext readContext, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nameResolver, typeTable, versionRequirementTable, z, (i2 & 16) != 0 ? null : readContext, (i2 & 32) != 0 ? EmptyList.f71768b : list);
    }
}
