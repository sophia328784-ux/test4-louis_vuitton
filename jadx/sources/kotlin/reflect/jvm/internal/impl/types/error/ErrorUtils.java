package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public final class ErrorUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ErrorModuleDescriptor f74310a = ErrorModuleDescriptor.f74297b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ErrorClassDescriptor f74311b = new ErrorClassDescriptor(Name.g(String.format(ErrorEntity.ERROR_CLASS.a(), Arrays.copyOf(new Object[]{"unknown class"}, 1))));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ErrorType f74312c = c(ErrorTypeKind.CYCLIC_SUPERTYPES, new String[0]);
    public static final ErrorType d = c(ErrorTypeKind.ERROR_PROPERTY_TYPE, new String[0]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Set f74313e = SetsKt.h(new ErrorPropertyDescriptor());

    public static final ErrorScope a(ErrorScopeKind errorScopeKind, boolean z, String... strArr) {
        errorScopeKind.getClass();
        return z ? new ThrowingScope(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length)) : new ErrorScope(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final ErrorScope b(ErrorScopeKind errorScopeKind, String... strArr) {
        errorScopeKind.getClass();
        return a(errorScopeKind, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final ErrorType c(ErrorTypeKind errorTypeKind, String... strArr) {
        errorTypeKind.getClass();
        EmptyList emptyList = EmptyList.f71768b;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        emptyList.getClass();
        return e(errorTypeKind, emptyList, d(errorTypeKind, (String[]) Arrays.copyOf(strArr2, strArr2.length)), (String[]) Arrays.copyOf(strArr2, strArr2.length));
    }

    public static ErrorTypeConstructor d(ErrorTypeKind errorTypeKind, String... strArr) {
        errorTypeKind.getClass();
        return new ErrorTypeConstructor(errorTypeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static ErrorType e(ErrorTypeKind errorTypeKind, List list, TypeConstructor typeConstructor, String... strArr) {
        errorTypeKind.getClass();
        list.getClass();
        return new ErrorType(typeConstructor, b(ErrorScopeKind.ERROR_TYPE_SCOPE, typeConstructor.toString()), errorTypeKind, list, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final boolean f(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            return (declarationDescriptor instanceof ErrorClassDescriptor) || (declarationDescriptor.d() instanceof ErrorClassDescriptor) || declarationDescriptor == f74310a;
        }
        return false;
    }
}
