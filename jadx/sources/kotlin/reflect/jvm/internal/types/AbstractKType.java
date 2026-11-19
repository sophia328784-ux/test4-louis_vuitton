package kotlin.reflect.jvm.internal.types;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.KTypeBase;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.ReflectionObjectRenderer;
import kotlin.reflect.jvm.internal.impl.types.AbstractStrictEqualityTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0017\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/types/AbstractKType;", "Lkotlin/jvm/internal/KTypeBase;", "Lkotlin/reflect/jvm/internal/impl/types/model/FlexibleTypeMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "computeJavaType", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AbstractKType implements KTypeBase, DefinitelyNotNullTypeMarker, FlexibleTypeMarker, SimpleTypeMarker, TypeArgumentListMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f74405b;

    public AbstractKType(Function0<? extends Type> function0) {
        ReflectProperties.LazySoftVal lazySoftValA = null;
        ReflectProperties.LazySoftVal lazySoftVal = function0 instanceof ReflectProperties.LazySoftVal ? (ReflectProperties.LazySoftVal) function0 : null;
        if (lazySoftVal != null) {
            lazySoftValA = lazySoftVal;
        } else if (function0 != null) {
            lazySoftValA = ReflectProperties.a(null, function0);
        }
        this.f74405b = lazySoftValA;
    }

    public abstract AbstractKType A();

    public abstract AbstractKType D(boolean z);

    public abstract AbstractKType G(boolean z);

    public abstract AbstractKType H();

    public boolean equals(Object obj) {
        return (obj instanceof AbstractKType) && AbstractStrictEqualityTypeChecker.b(ReflectTypeSystemContext.f74439a, this, (KotlinTypeMarker) obj);
    }

    public abstract KType g();

    public abstract KClass h();

    public int hashCode() {
        KClassifier kClassifierA = a();
        int iHashCode = kClassifierA != null ? kClassifierA.hashCode() : 0;
        return Boolean.hashCode(d()) + ((b().hashCode() + (iHashCode * 31)) * 31);
    }

    @Override // kotlin.jvm.internal.KTypeBase
    public final Type j() {
        ReflectProperties.LazySoftVal lazySoftVal = this.f74405b;
        if (lazySoftVal != null) {
            return (Type) lazySoftVal.mo47invoke();
        }
        return null;
    }

    public abstract boolean l();

    public abstract boolean p();

    public abstract boolean q();

    public String toString() {
        return ReflectionObjectRenderer.f(this, false);
    }

    public abstract boolean y();
}
