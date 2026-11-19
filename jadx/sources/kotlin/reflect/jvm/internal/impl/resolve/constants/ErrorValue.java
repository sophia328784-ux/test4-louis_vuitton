package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ErrorValue extends ConstantValue<Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73873b = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class ErrorValueWithMessage extends ErrorValue {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f73874c;

        public ErrorValueWithMessage(String str) {
            str.getClass();
            this.f73874c = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
        public final KotlinType a(ModuleDescriptor moduleDescriptor) {
            moduleDescriptor.getClass();
            return ErrorUtils.c(ErrorTypeKind.ERROR_CONSTANT_VALUE, this.f73874c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
        public final String toString() {
            return this.f73874c;
        }
    }

    public ErrorValue() {
        super(Unit.f71739a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final Object b() {
        throw new UnsupportedOperationException();
    }
}
