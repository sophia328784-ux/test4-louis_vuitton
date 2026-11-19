package kotlin.reflect;

import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/reflect/ObsoleteFallbackTypeVariableImpl;", "Ljava/lang/reflect/TypeVariable;", "Ljava/lang/reflect/GenericDeclaration;", "Lkotlin/reflect/TypeImpl;", "Lkotlin/reflect/KTypeParameter;", "typeParameter", "<init>", "(Lkotlin/reflect/KTypeParameter;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ObsoleteFallbackTypeVariableImpl implements TypeVariable<GenericDeclaration>, TypeImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KTypeParameter f71962b;

    public ObsoleteFallbackTypeVariableImpl(KTypeParameter kTypeParameter) {
        kTypeParameter.getClass();
        this.f71962b = kTypeParameter;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TypeVariable) || !Intrinsics.c(this.f71962b.getD(), ((TypeVariable) obj).getName())) {
            return false;
        }
        getGenericDeclaration();
        throw null;
    }

    @Override // java.lang.reflect.TypeVariable
    public final Type[] getBounds() {
        List upperBounds = this.f71962b.getUpperBounds();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(upperBounds, 10));
        Iterator it = upperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(TypesJVMKt.b((KType) it.next(), true));
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override // java.lang.reflect.TypeVariable
    public final GenericDeclaration getGenericDeclaration() {
        throw new UnsupportedOperationException("getGenericDeclaration() is not supported for type variables created from KType: " + this.f71962b + ".\nUpdate kotlin-reflect dependency to 2.3.20+.");
    }

    @Override // java.lang.reflect.TypeVariable
    public final String getName() {
        return this.f71962b.getD();
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return this.f71962b.getD();
    }

    public final int hashCode() {
        this.f71962b.getD().getClass();
        getGenericDeclaration();
        throw null;
    }

    public final String toString() {
        return this.f71962b.getD();
    }
}
