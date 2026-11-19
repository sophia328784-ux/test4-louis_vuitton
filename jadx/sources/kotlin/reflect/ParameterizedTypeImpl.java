package kotlin.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/ParameterizedTypeImpl;", "Ljava/lang/reflect/ParameterizedType;", "Lkotlin/reflect/TypeImpl;", "Ljava/lang/Class;", "rawType", "Ljava/lang/reflect/Type;", "ownerType", "", "typeArguments", "<init>", "(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ParameterizedTypeImpl implements ParameterizedType, TypeImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f71963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f71964c;
    public final Type[] d;

    public ParameterizedTypeImpl(Class<?> cls, Type type, List<? extends Type> list) {
        cls.getClass();
        list.getClass();
        this.f71963b = cls;
        this.f71964c = type;
        this.d = (Type[]) list.toArray(new Type[0]);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType parameterizedType = (ParameterizedType) obj;
        return Intrinsics.c(this.f71963b, parameterizedType.getRawType()) && Intrinsics.c(this.f71964c, parameterizedType.getOwnerType()) && Arrays.equals(this.d, parameterizedType.getActualTypeArguments());
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.d;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f71964c;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f71963b;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        StringBuilder sb = new StringBuilder();
        Class cls = this.f71963b;
        Type type = this.f71964c;
        if (type != null) {
            sb.append(TypesJVMKt.a(type));
            sb.append("$");
            sb.append(cls.getSimpleName());
        } else {
            sb.append(TypesJVMKt.a(cls));
        }
        Type[] typeArr = this.d;
        if (typeArr.length != 0) {
            ArraysKt___ArraysKt.b(typeArr, sb, ", ", "<", ">", "...", ParameterizedTypeImpl$getTypeName$1$1.f71965b);
        }
        return sb.toString();
    }

    public final int hashCode() {
        int iHashCode = this.f71963b.hashCode();
        Type type = this.f71964c;
        return Arrays.hashCode(this.d) ^ (iHashCode ^ (type != null ? type.hashCode() : 0));
    }

    public final String toString() {
        return getTypeName();
    }
}
