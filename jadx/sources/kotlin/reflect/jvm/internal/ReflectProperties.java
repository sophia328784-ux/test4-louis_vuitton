package kotlin.reflect.jvm.internal;

import defpackage.md;
import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReflectProperties {

    public static class LazySoftVal<T> extends Val<T> implements Function0<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function0 f72166c;
        public volatile SoftReference d;

        public LazySoftVal(T t, Function0<T> function0) {
            if (function0 == null) {
                md.n("Argument for @NotNull parameter 'initializer' of kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal.<init> must not be null");
                throw null;
            }
            this.d = null;
            this.f72166c = function0;
            if (t != null) {
                this.d = new SoftReference(t);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Object obj;
            Object obj2 = Val.f72167b;
            SoftReference softReference = this.d;
            if (softReference != null && (obj = softReference.get()) != null) {
                if (obj == obj2) {
                    return null;
                }
                return obj;
            }
            Object objMo47invoke = this.f72166c.mo47invoke();
            if (objMo47invoke != null) {
                obj2 = objMo47invoke;
            }
            this.d = new SoftReference(obj2);
            return objMo47invoke;
        }
    }

    public static abstract class Val<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Object f72167b = new AnonymousClass1();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.ReflectProperties$Val$1, reason: invalid class name */
        public static class AnonymousClass1 {
        }
    }

    public static LazySoftVal a(CallableMemberDescriptor callableMemberDescriptor, Function0 function0) {
        if (function0 != null) {
            return new LazySoftVal(callableMemberDescriptor, function0);
        }
        md.n("Argument for @NotNull parameter 'initializer' of kotlin/reflect/jvm/internal/ReflectProperties.lazySoft must not be null");
        return null;
    }
}
