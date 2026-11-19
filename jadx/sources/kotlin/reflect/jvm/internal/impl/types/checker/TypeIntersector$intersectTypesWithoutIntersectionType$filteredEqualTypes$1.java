package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1 extends FunctionReferenceImpl implements Function2<KotlinType, KotlinType, Boolean> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        KotlinType kotlinType = (KotlinType) obj;
        KotlinType kotlinType2 = (KotlinType) obj2;
        kotlinType.getClass();
        kotlinType2.getClass();
        ((TypeIntersector) this.receiver).getClass();
        NewKotlinTypeChecker.f74286b.getClass();
        NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.f74288b;
        return Boolean.valueOf(newKotlinTypeCheckerImpl.d(kotlinType, kotlinType2) && !newKotlinTypeCheckerImpl.d(kotlinType2, kotlinType));
    }
}
