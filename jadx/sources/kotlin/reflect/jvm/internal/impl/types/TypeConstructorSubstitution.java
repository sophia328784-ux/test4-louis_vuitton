package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeConstructorSubstitution extends TypeSubstitution {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f74244b = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution$Companion$createByConstructorsMap$1] */
        public static TypeConstructorSubstitution$Companion$createByConstructorsMap$1 b(Companion companion, final Map map) {
            companion.getClass();
            map.getClass();
            return new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution$Companion$createByConstructorsMap$1
                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public final boolean a() {
                    return false;
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public final boolean e() {
                    return map.isEmpty();
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
                public final TypeProjection g(TypeConstructor typeConstructor) {
                    typeConstructor.getClass();
                    return (TypeProjection) map.get(typeConstructor);
                }
            };
        }

        public final TypeSubstitution a(TypeConstructor typeConstructor, List list) {
            typeConstructor.getClass();
            list.getClass();
            List parameters = typeConstructor.getParameters();
            parameters.getClass();
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.N(parameters);
            if (typeParameterDescriptor == null || !typeParameterDescriptor.L()) {
                return new IndexedParametersSubstitution(parameters, list);
            }
            List parameters2 = typeConstructor.getParameters();
            parameters2.getClass();
            List list2 = parameters2;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((TypeParameterDescriptor) it.next()).j());
            }
            return b(this, MapsKt.n(CollectionsKt.E0(arrayList, list)));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection d(KotlinType kotlinType) {
        kotlinType.getClass();
        return g(kotlinType.H0());
    }

    public abstract TypeProjection g(TypeConstructor typeConstructor);
}
