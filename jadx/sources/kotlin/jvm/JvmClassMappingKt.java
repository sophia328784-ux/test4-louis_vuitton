package kotlin.jvm;

import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class JvmClassMappingKt {
    public static final KClass a(Annotation annotation) {
        annotation.getClass();
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        clsAnnotationType.getClass();
        return Reflection.f71922a.b(clsAnnotationType);
    }

    public static final Class b(KClass kClass) {
        kClass.getClass();
        Class f71916b = ((ClassBasedDeclarationContainer) kClass).getF71916b();
        f71916b.getClass();
        return f71916b;
    }

    public static final Class c(KClass kClass) {
        kClass.getClass();
        Class f71916b = ((ClassBasedDeclarationContainer) kClass).getF71916b();
        if (!f71916b.isPrimitive()) {
            return f71916b;
        }
        String name = f71916b.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? f71916b : Double.class;
            case 104431:
                return !name.equals("int") ? f71916b : Integer.class;
            case 3039496:
                return !name.equals("byte") ? f71916b : Byte.class;
            case 3052374:
                return !name.equals("char") ? f71916b : Character.class;
            case 3327612:
                return !name.equals("long") ? f71916b : Long.class;
            case 3625364:
                return !name.equals("void") ? f71916b : Void.class;
            case 64711720:
                return !name.equals("boolean") ? f71916b : Boolean.class;
            case 97526364:
                return !name.equals("float") ? f71916b : Float.class;
            case 109413500:
                return !name.equals("short") ? f71916b : Short.class;
            default:
                return f71916b;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class d(KClass kClass) {
        kClass.getClass();
        Class f71916b = ((ClassBasedDeclarationContainer) kClass).getF71916b();
        if (f71916b.isPrimitive()) {
            return f71916b;
        }
        String name = f71916b.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    public static final KClass e(Class cls) {
        cls.getClass();
        return Reflection.f71922a.b(cls);
    }
}
