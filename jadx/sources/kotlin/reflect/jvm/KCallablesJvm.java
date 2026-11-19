package kotlin.reflect.jvm;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectKCallable;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KCallablesJvm {
    public static final boolean a(KCallable kCallable) {
        Caller callerX;
        Caller callerC;
        kCallable.getClass();
        if (kCallable instanceof KMutableProperty) {
            KProperty kProperty = (KProperty) kCallable;
            Field fieldA = ReflectJvmMapping.a(kProperty);
            if (!(fieldA != null ? fieldA.isAccessible() : true)) {
                return false;
            }
            Method methodB = ReflectJvmMapping.b(kProperty.getGetter());
            if (!(methodB != null ? methodB.isAccessible() : true)) {
                return false;
            }
            Method methodB2 = ReflectJvmMapping.b(((KMutableProperty) kCallable).getSetter());
            if (!(methodB2 != null ? methodB2.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KProperty) {
            KProperty kProperty2 = (KProperty) kCallable;
            Field fieldA2 = ReflectJvmMapping.a(kProperty2);
            if (!(fieldA2 != null ? fieldA2.isAccessible() : true)) {
                return false;
            }
            Method methodB3 = ReflectJvmMapping.b(kProperty2.getGetter());
            if (!(methodB3 != null ? methodB3.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KProperty.Getter) {
            Field fieldA3 = ReflectJvmMapping.a(((KProperty.Getter) kCallable).p());
            if (!(fieldA3 != null ? fieldA3.isAccessible() : true)) {
                return false;
            }
            Method methodB4 = ReflectJvmMapping.b((KFunction) kCallable);
            if (!(methodB4 != null ? methodB4.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KMutableProperty.Setter) {
            Field fieldA4 = ReflectJvmMapping.a(((KMutableProperty.Setter) kCallable).p());
            if (!(fieldA4 != null ? fieldA4.isAccessible() : true)) {
                return false;
            }
            Method methodB5 = ReflectJvmMapping.b((KFunction) kCallable);
            if (!(methodB5 != null ? methodB5.isAccessible() : true)) {
                return false;
            }
        } else {
            if (!(kCallable instanceof KFunction)) {
                StringBuilder sb = new StringBuilder("Unknown callable: ");
                sb.append(kCallable);
                Class<?> cls = kCallable.getClass();
                sb.append(" (");
                sb.append(cls);
                sb.append(')');
                throw new UnsupportedOperationException(sb.toString());
            }
            KFunction kFunction = (KFunction) kCallable;
            Method methodB6 = ReflectJvmMapping.b(kFunction);
            if (!(methodB6 != null ? methodB6.isAccessible() : true)) {
                return false;
            }
            ReflectKCallable reflectKCallableA = UtilKt.a(kCallable);
            Object objB = (reflectKCallableA == null || (callerC = reflectKCallableA.c()) == null) ? null : callerC.b();
            AccessibleObject accessibleObject = objB instanceof AccessibleObject ? (AccessibleObject) objB : null;
            if (!(accessibleObject != null ? accessibleObject.isAccessible() : true)) {
                return false;
            }
            ReflectKCallable reflectKCallableA2 = UtilKt.a(kFunction);
            Member memberB = (reflectKCallableA2 == null || (callerX = reflectKCallableA2.x()) == null) ? null : callerX.b();
            Constructor constructor = memberB instanceof Constructor ? (Constructor) memberB : null;
            if (!(constructor != null ? constructor.isAccessible() : true)) {
                return false;
            }
        }
        return true;
    }

    public static final void b(KCallable kCallable) {
        Caller callerX;
        Caller callerC;
        if (kCallable instanceof KMutableProperty) {
            KProperty kProperty = (KProperty) kCallable;
            Field fieldA = ReflectJvmMapping.a(kProperty);
            if (fieldA != null) {
                fieldA.setAccessible(true);
            }
            Method methodB = ReflectJvmMapping.b(kProperty.getGetter());
            if (methodB != null) {
                methodB.setAccessible(true);
            }
            Method methodB2 = ReflectJvmMapping.b(((KMutableProperty) kCallable).getSetter());
            if (methodB2 != null) {
                methodB2.setAccessible(true);
                return;
            }
            return;
        }
        if (kCallable instanceof KProperty) {
            KProperty kProperty2 = (KProperty) kCallable;
            Field fieldA2 = ReflectJvmMapping.a(kProperty2);
            if (fieldA2 != null) {
                fieldA2.setAccessible(true);
            }
            Method methodB3 = ReflectJvmMapping.b(kProperty2.getGetter());
            if (methodB3 != null) {
                methodB3.setAccessible(true);
                return;
            }
            return;
        }
        if (kCallable instanceof KProperty.Getter) {
            Field fieldA3 = ReflectJvmMapping.a(((KProperty.Getter) kCallable).p());
            if (fieldA3 != null) {
                fieldA3.setAccessible(true);
            }
            Method methodB4 = ReflectJvmMapping.b((KFunction) kCallable);
            if (methodB4 != null) {
                methodB4.setAccessible(true);
                return;
            }
            return;
        }
        if (kCallable instanceof KMutableProperty.Setter) {
            Field fieldA4 = ReflectJvmMapping.a(((KMutableProperty.Setter) kCallable).p());
            if (fieldA4 != null) {
                fieldA4.setAccessible(true);
            }
            Method methodB5 = ReflectJvmMapping.b((KFunction) kCallable);
            if (methodB5 != null) {
                methodB5.setAccessible(true);
                return;
            }
            return;
        }
        if (!(kCallable instanceof KFunction)) {
            StringBuilder sb = new StringBuilder("Unknown callable: ");
            sb.append(kCallable);
            Class<?> cls = kCallable.getClass();
            sb.append(" (");
            sb.append(cls);
            sb.append(')');
            throw new UnsupportedOperationException(sb.toString());
        }
        KFunction kFunction = (KFunction) kCallable;
        Method methodB6 = ReflectJvmMapping.b(kFunction);
        if (methodB6 != null) {
            methodB6.setAccessible(true);
        }
        ReflectKCallable reflectKCallableA = UtilKt.a(kCallable);
        Object objB = (reflectKCallableA == null || (callerC = reflectKCallableA.c()) == null) ? null : callerC.b();
        AccessibleObject accessibleObject = objB instanceof AccessibleObject ? (AccessibleObject) objB : null;
        if (accessibleObject != null) {
            accessibleObject.setAccessible(true);
        }
        ReflectKCallable reflectKCallableA2 = UtilKt.a(kFunction);
        Member memberB = (reflectKCallableA2 == null || (callerX = reflectKCallableA2.x()) == null) ? null : callerX.b();
        Constructor constructor = memberB instanceof Constructor ? (Constructor) memberB : null;
        if (constructor != null) {
            constructor.setAccessible(true);
        }
    }
}
