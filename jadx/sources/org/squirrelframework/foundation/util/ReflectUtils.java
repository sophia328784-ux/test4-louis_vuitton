package org.squirrelframework.foundation.util;

import com.google.common.collect.Sets;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.exception.ErrorCodes;
import org.squirrelframework.foundation.exception.SquirrelRuntimeException;

/* JADX INFO: loaded from: classes5.dex */
public class ReflectUtils {
    private static final Logger logger = LoggerFactory.getLogger(ReflectUtils.class);

    public interface FieldCallback {
        void doWith(Field field);
    }

    public interface FieldFilter {
        boolean matches(Field field);
    }

    public interface MethodCallback {
        void doWith(Method method);
    }

    public interface MethodFilter {
        boolean matches(Method method);
    }

    private ReflectUtils() {
    }

    public static void doWithFields(Class<?> cls, FieldCallback fieldCallback, FieldFilter fieldFilter) throws IllegalArgumentException {
        do {
            for (Field field : cls.getDeclaredFields()) {
                if (fieldFilter == null || fieldFilter.matches(field)) {
                    fieldCallback.doWith(field);
                }
            }
            cls = cls.getSuperclass();
            if (cls == null) {
                return;
            }
        } while (cls != Object.class);
    }

    public static void doWithMethods(Class<?> cls, MethodCallback methodCallback, MethodFilter methodFilter) throws IllegalArgumentException {
        for (Method method : cls.getDeclaredMethods()) {
            if (methodFilter == null || methodFilter.matches(method)) {
                methodCallback.doWith(method);
            }
        }
        if (cls.getSuperclass() != null) {
            doWithMethods(cls.getSuperclass(), methodCallback, methodFilter);
            return;
        }
        if (cls.isInterface()) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                doWithMethods(cls2, methodCallback, methodFilter);
            }
        }
    }

    public static Object get(Field field, Object obj) {
        if (field == null) {
            throw new SquirrelRuntimeException(ErrorCodes.FIELD_NULL);
        }
        boolean zIsAccessible = field.isAccessible();
        try {
            try {
                field.setAccessible(true);
                Object obj2 = field.get(obj);
                Logger logger2 = logger;
                if (logger2.isTraceEnabled()) {
                    logger2.trace("got value '" + obj2 + "' from field '" + field.getName() + "'");
                }
                field.setAccessible(zIsAccessible);
                return obj2;
            } catch (Exception e2) {
                throw new SquirrelRuntimeException(e2, ErrorCodes.CANNOT_GET_FIELD_VALUE, field.getName());
            }
        } catch (Throwable th) {
            field.setAccessible(zIsAccessible);
            throw th;
        }
    }

    public static Set<Field> getAllDeclaredFields(Class<?> cls) {
        HashSet hashSet = new HashSet();
        while (cls != null) {
            Field[] declaredFields = cls.getDeclaredFields();
            HashSet hashSetE = Sets.e(declaredFields.length);
            Collections.addAll(hashSetE, declaredFields);
            hashSet.addAll(hashSetE);
            cls = cls.getSuperclass();
        }
        return hashSet;
    }

    public static Field[] getAnnotatedFields(Class<?> cls, Class<? extends Annotation> cls2) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (!shouldInspectClass(cls)) {
                return (Field[]) arrayList.toArray(new Field[0]);
            }
            for (Field field : cls.getFields()) {
                if (field.getAnnotation(cls2) != null) {
                    arrayList.add(field);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static List<Method> getAnnotatedMethods(Class<?> cls, Class<? extends Annotation> cls2) {
        ArrayList arrayList = new ArrayList();
        for (Method method : cls.getMethods()) {
            if (method.getAnnotation(cls2) != null) {
                arrayList.add(method);
            }
        }
        if (shouldInspectClass(cls.getSuperclass())) {
            arrayList.addAll(getAnnotatedMethods(cls.getSuperclass(), cls2));
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            arrayList.addAll(getAnnotatedMethods(cls3, cls2));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Annotation> T getAnnotation(Class<?> cls, Class<T> cls2) {
        if (cls.isAnnotationPresent(cls2)) {
            return (T) cls.getAnnotation(cls2);
        }
        T t = shouldInspectClass(cls.getSuperclass()) ? (T) getAnnotation(cls.getSuperclass(), cls2) : null;
        if (t == null) {
            for (Class<?> cls3 : cls.getInterfaces()) {
                t = (T) getAnnotation(cls3, cls2);
                if (t != null) {
                    return t;
                }
            }
        }
        return t;
    }

    public static Class<?> getClass(String str) {
        if (str == null || str.length() == 0) {
            throw new SquirrelRuntimeException(ErrorCodes.ILLEGAL_CLASS_NAME);
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new SquirrelRuntimeException(e2, ErrorCodes.CLASS_NOT_FOUND, str);
        }
    }

    private static String getClassNameSafe(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        return cls.getName();
    }

    public static <T> Constructor<T> getConstructor(Class<T> cls, Class<?>[] clsArr) {
        try {
            return cls.getDeclaredConstructor(clsArr);
        } catch (NoSuchMethodException e2) {
            throw new SquirrelRuntimeException(e2, ErrorCodes.CONSTRUCTOR_NOT_FOUND, cls.getName(), Arrays.toString(clsArr));
        }
    }

    private static Field getField(Class<?> cls, String str, Class<?> cls2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            Logger logger2 = logger;
            if (!logger2.isTraceEnabled()) {
                return declaredField;
            }
            logger2.trace("found field " + str + " in " + getClassNameSafe(cls));
            return declaredField;
        } catch (NoSuchFieldException e2) {
            if (cls.getSuperclass() != null) {
                return getField(cls.getSuperclass(), str, cls2);
            }
            throw new SquirrelRuntimeException(e2, ErrorCodes.FIELD_NOT_FOUND, cls2.getName(), str);
        } catch (SecurityException e3) {
            throw new SquirrelRuntimeException(e3, ErrorCodes.NOT_ALLOW_ACCESS_FIELD, getClassNameSafe(cls), str);
        }
    }

    public static Method getFirstMethodOfName(Class<?> cls, String str) {
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str)) {
                return method;
            }
        }
        return null;
    }

    private static Method getMethod(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            Logger logger2 = logger;
            if (!logger2.isTraceEnabled()) {
                return declaredMethod;
            }
            logger2.trace("found method " + getClassNameSafe(cls) + FileUtils.HIDDEN_PREFIX + str + "(" + Arrays.toString(clsArr) + ")");
            return declaredMethod;
        } catch (NoSuchMethodException e2) {
            if (cls.getSuperclass() != null) {
                return getMethod(cls.getSuperclass(), str, clsArr, cls2);
            }
            throw new SquirrelRuntimeException(e2, ErrorCodes.METHOD_NOT_FOUND, cls2.getName(), str, getParameterTypesText(clsArr));
        } catch (SecurityException e3) {
            throw new SquirrelRuntimeException(e3, ErrorCodes.NOT_ALLOW_ACCESS_METHOD, getClassNameSafe(cls), str, getParameterTypesText(clsArr));
        }
    }

    public static String getPackageName(String str) {
        if (str == null || str.length() == 0) {
            throw new SquirrelRuntimeException(ErrorCodes.ILLEGAL_CLASS_NAME);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf != -1 ? str.substring(0, iLastIndexOf) : "";
    }

    private static String getParameterTypesText(Class<?>[] clsArr) {
        if (clsArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < clsArr.length; i2++) {
            sb.append(clsArr[i2].getName());
            if (i2 != clsArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static Object getStatic(Field field) {
        return get(field, null);
    }

    public static Class<?>[] getSuperclasses(Class<?> cls) {
        int i2 = 0;
        int i3 = 0;
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            i3++;
        }
        Class<?>[] clsArr = new Class[i3];
        while (true) {
            cls = cls.getSuperclass();
            if (cls == null) {
                return clsArr;
            }
            clsArr[i2] = cls;
            i2++;
        }
    }

    public static boolean hasAnnotation(Class<?> cls, Class<? extends Annotation> cls2) {
        return getAnnotation(cls, cls2) != null;
    }

    public static Object invoke(Method method, Object obj, Object[] objArr) {
        if (method == null) {
            throw new SquirrelRuntimeException(ErrorCodes.METHOD_NULL);
        }
        boolean zIsAccessible = method.isAccessible();
        try {
            try {
                Logger logger2 = logger;
                if (logger2.isTraceEnabled()) {
                    logger2.trace("invoking '" + method.getName() + "' on '" + obj + "' with " + Arrays.toString(objArr));
                }
                if (!method.isAccessible()) {
                    logger2.trace("making method accessible");
                    method.setAccessible(true);
                }
                Object objInvoke = method.invoke(obj, objArr);
                method.setAccessible(zIsAccessible);
                return objInvoke;
            } catch (InvocationTargetException e2) {
                Throwable targetException = e2.getTargetException();
                throw new SquirrelRuntimeException(targetException, ErrorCodes.METHOD_INVOKE_ERROR, method, Arrays.toString(objArr), obj, targetException.getCause());
            } catch (Exception e3) {
                throw new SquirrelRuntimeException(e3, ErrorCodes.METHOD_INVOKE_ERROR, method, Arrays.toString(objArr), obj, e3.getMessage());
            }
        } catch (Throwable th) {
            method.setAccessible(zIsAccessible);
            throw th;
        }
    }

    public static Object invokeStatic(Method method) {
        return invoke(method, null, new Object[0]);
    }

    public static boolean isAnnotatedWith(Object obj, Class<? extends Annotation> cls) {
        if (obj instanceof Class) {
            return hasAnnotation((Class) obj, cls);
        }
        if (obj instanceof Field) {
            return ((Field) obj).getAnnotation(cls) != null;
        }
        return (obj instanceof Method) && ((Method) obj).getAnnotation(cls) != null;
    }

    public static boolean isBeanProperty(Method method) {
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (name.startsWith("get") && !name.equals("getClass")) {
            return returnType != null && parameterTypes.length == 0;
        }
        if (name.startsWith("is")) {
            return returnType != null && parameterTypes.length == 0;
        }
        return name.startsWith("set") && parameterTypes.length == 1;
    }

    public static boolean isUserDefinedMethod(Method method) {
        return method.getDeclaringClass() != Object.class;
    }

    public static String logMethod(Method method) {
        StringBuilder sb = new StringBuilder(method.getDeclaringClass().getSimpleName());
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(method.getName());
        sb.append('(');
        if (method.getParameterTypes() != null) {
            int length = method.getParameterTypes().length;
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(method.getParameterTypes()[i2].getSimpleName());
            }
        }
        sb.append(')');
        return sb.toString();
    }

    private static <T> T newInstance(Class<T> cls, Constructor<T> constructor, Object[] objArr) {
        if (cls == null && constructor == null) {
            md.n("can't create new instance without clazz or constructor");
            return null;
        }
        Logger logger2 = logger;
        if (logger2.isTraceEnabled()) {
            logger2.trace("creating new instance for class '" + getClassNameSafe(cls) + "' with args " + Arrays.toString(objArr));
        }
        if (constructor == null) {
            if (logger2.isTraceEnabled()) {
                logger2.trace("getting default constructor");
            }
            constructor = getConstructor(cls, null);
        }
        boolean zIsAccessible = constructor.isAccessible();
        try {
            if (!constructor.isAccessible()) {
                if (logger2.isTraceEnabled()) {
                    logger2.trace("making constructor accessible");
                }
                constructor.setAccessible(true);
            }
            T tNewInstance = constructor.newInstance(objArr);
            constructor.setAccessible(zIsAccessible);
            return tNewInstance;
        } catch (Throwable th) {
            th = th;
            try {
                if (th instanceof InvocationTargetException) {
                    th = ((InvocationTargetException) th).getTargetException();
                }
                throw new SquirrelRuntimeException(th, ErrorCodes.CONSTRUCT_NEW_INSTANCE_ERROR, getClassNameSafe(cls), Arrays.toString(objArr));
            } catch (Throwable th2) {
                constructor.setAccessible(zIsAccessible);
                throw th2;
            }
        }
    }

    public static void set(Field field, Object obj, Object obj2) {
        if (field == null) {
            throw new SquirrelRuntimeException(ErrorCodes.FIELD_NULL);
        }
        boolean zIsAccessible = field.isAccessible();
        try {
            try {
                Logger logger2 = logger;
                if (logger2.isTraceEnabled()) {
                    logger2.trace("setting field '" + field.getName() + "' to value '" + obj2 + "'");
                }
                if (!zIsAccessible) {
                    if (logger2.isTraceEnabled()) {
                        logger2.trace("making field accessible");
                    }
                    field.setAccessible(true);
                }
                field.set(obj, obj2);
                field.setAccessible(zIsAccessible);
            } catch (Exception e2) {
                throw new SquirrelRuntimeException(e2, ErrorCodes.CANNOT_SET_FIELD_VALUE, field.getName(), obj2);
            }
        } catch (Throwable th) {
            field.setAccessible(zIsAccessible);
            throw th;
        }
    }

    public static void setStatic(Field field, Object obj) {
        set(field, null, obj);
    }

    private static boolean shouldInspectClass(Class<?> cls) {
        return (Object.class.equals(cls) || cls == null) ? false : true;
    }

    public static Object invokeStatic(Method method, Object[] objArr) {
        return invoke(method, null, objArr);
    }

    public static void doWithFields(Class<?> cls, FieldCallback fieldCallback) throws IllegalArgumentException {
        doWithFields(cls, fieldCallback, null);
    }

    public static void doWithMethods(Class<?> cls, MethodCallback methodCallback) throws IllegalArgumentException {
        doWithMethods(cls, methodCallback, null);
    }

    public static Field getField(Class<?> cls, String str) {
        return getField(cls, str, cls);
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        return getMethod(cls, str, clsArr, cls);
    }

    public static Object invoke(Method method, Object obj) {
        return invoke(method, obj, new Object[0]);
    }

    public static <T> T newInstance(Class<T> cls) {
        return (T) newInstance(cls, null, null);
    }

    public static <T> T newInstance(Constructor<T> constructor) {
        return (T) newInstance(null, constructor, null);
    }

    public static <T> T newInstance(Constructor<T> constructor, Object[] objArr) {
        return (T) newInstance(null, constructor, objArr);
    }

    public static <T> T newInstance(String str) {
        return (T) newInstance(getClass(str), null, null);
    }
}
