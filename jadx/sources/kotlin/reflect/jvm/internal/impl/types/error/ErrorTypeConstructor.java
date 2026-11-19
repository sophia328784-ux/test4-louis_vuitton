package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public final class ErrorTypeConstructor implements TypeConstructor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ErrorTypeKind f74308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f74309c;
    public final String d;

    public ErrorTypeConstructor(ErrorTypeKind errorTypeKind, String... strArr) {
        errorTypeKind.getClass();
        strArr.getClass();
        this.f74308b = errorTypeKind;
        this.f74309c = strArr;
        String strA = ErrorEntity.ERROR_TYPE.a();
        String strA2 = errorTypeKind.a();
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        this.d = String.format(strA, Arrays.copyOf(new Object[]{String.format(strA2, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length))}, 1));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean A() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns g() {
        DefaultBuiltIns.g.getClass();
        return (DefaultBuiltIns) DefaultBuiltIns.f72240h.getF71699b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection i() {
        return EmptyList.f71768b;
    }

    public final String toString() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final ClassifierDescriptor y() {
        ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
        return ErrorUtils.f74311b;
    }
}
