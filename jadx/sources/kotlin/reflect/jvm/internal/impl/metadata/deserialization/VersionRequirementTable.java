package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;

/* JADX INFO: loaded from: classes4.dex */
public final class VersionRequirementTable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73600b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final VersionRequirementTable f73601c = new VersionRequirementTable(EmptyList.f71768b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f73602a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static VersionRequirementTable a(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            protoBuf$VersionRequirementTable.getClass();
            if (protoBuf$VersionRequirementTable.f73555c.size() == 0) {
                return VersionRequirementTable.f73601c;
            }
            List list = protoBuf$VersionRequirementTable.f73555c;
            list.getClass();
            return new VersionRequirementTable(list, null);
        }
    }

    public VersionRequirementTable(List list) {
        this.f73602a = list;
    }

    public /* synthetic */ VersionRequirementTable(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}
