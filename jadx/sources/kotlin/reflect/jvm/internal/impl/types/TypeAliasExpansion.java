package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeAliasExpansion {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f74227e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeAliasExpansion f74228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeAliasDescriptor f74229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f74230c;
    public final Map d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static TypeAliasExpansion a(TypeAliasExpansion typeAliasExpansion, TypeAliasDescriptor typeAliasDescriptor, List list) {
            list.getClass();
            List parameters = typeAliasDescriptor.j().getParameters();
            parameters.getClass();
            List list2 = parameters;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((TypeParameterDescriptor) it.next()).y0());
            }
            return new TypeAliasExpansion(typeAliasExpansion, typeAliasDescriptor, list, MapsKt.n(CollectionsKt.E0(arrayList, list)), null);
        }
    }

    public TypeAliasExpansion(TypeAliasExpansion typeAliasExpansion, TypeAliasDescriptor typeAliasDescriptor, List list, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74228a = typeAliasExpansion;
        this.f74229b = typeAliasDescriptor;
        this.f74230c = list;
        this.d = map;
    }

    public final boolean a(TypeAliasDescriptor typeAliasDescriptor) {
        if (Intrinsics.c(this.f74229b, typeAliasDescriptor)) {
            return true;
        }
        TypeAliasExpansion typeAliasExpansion = this.f74228a;
        return typeAliasExpansion != null ? typeAliasExpansion.a(typeAliasDescriptor) : false;
    }
}
