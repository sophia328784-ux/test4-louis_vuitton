package kotlin.reflect.jvm.internal;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KTypeParameter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/reflect/jvm/internal/TypeParameterTable;", "", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TypeParameterTable {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TypeParameterTable f72183e = new TypeParameterTable(EmptyList.f71768b, MapsKt.c(), null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f72184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f72185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeParameterTable f72186c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;", "", "Lkotlin/reflect/jvm/internal/TypeParameterTable;", "EMPTY", "Lkotlin/reflect/jvm/internal/TypeParameterTable;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TypeParameterTable(List list, Map map, TypeParameterTable typeParameterTable) {
        this.f72184a = list;
        this.f72185b = map;
        this.f72186c = typeParameterTable;
    }

    public final KTypeParameter a(int i2) {
        KTypeParameter kTypeParameter = (KTypeParameter) this.f72185b.get(Integer.valueOf(i2));
        if (kTypeParameter != null) {
            return kTypeParameter;
        }
        TypeParameterTable typeParameterTable = this.f72186c;
        if (typeParameterTable != null) {
            return typeParameterTable.a(i2);
        }
        return null;
    }

    public /* synthetic */ TypeParameterTable(List list, Map map, TypeParameterTable typeParameterTable, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, map, typeParameterTable);
    }
}
