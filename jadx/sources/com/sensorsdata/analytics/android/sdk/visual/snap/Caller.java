package com.sensorsdata.analytics.android.sdk.visual.snap;

import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sightcall.universal.media.offline.FileUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class Caller {
    private static final String TAG = "SA.Caller";
    private final Object[] mMethodArgs;
    private final String mMethodName;
    private final Class<?> mMethodResultType;
    private final Class<?> mTargetClass;
    private final Method mTargetMethod;

    public Caller(Class<?> cls, String str, Object[] objArr, Class<?> cls2) throws NoSuchMethodException {
        this.mMethodName = str;
        this.mMethodArgs = objArr;
        this.mMethodResultType = cls2;
        Method methodPickMethod = pickMethod(cls);
        this.mTargetMethod = methodPickMethod;
        if (methodPickMethod != null) {
            this.mTargetClass = methodPickMethod.getDeclaringClass();
            methodPickMethod.setAccessible(true);
            return;
        }
        throw new NoSuchMethodException("Method " + cls.getName() + FileUtils.HIDDEN_PREFIX + str + " doesn't exit");
    }

    private static Class<?> assignableArgType(Class<?> cls) {
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        return cls == Character.class ? Character.TYPE : cls;
    }

    private Method pickMethod(Class<?> cls) {
        Class[] clsArr = new Class[this.mMethodArgs.length];
        int i2 = 0;
        while (true) {
            Object[] objArr = this.mMethodArgs;
            if (i2 >= objArr.length) {
                break;
            }
            clsArr[i2] = objArr[i2].getClass();
            i2++;
        }
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (name.equals(this.mMethodName) && parameterTypes.length == this.mMethodArgs.length && assignableArgType(this.mMethodResultType).isAssignableFrom(assignableArgType(method.getReturnType()))) {
                boolean zIsAssignableFrom = true;
                for (int i3 = 0; i3 < parameterTypes.length && zIsAssignableFrom; i3++) {
                    zIsAssignableFrom = assignableArgType(parameterTypes[i3]).isAssignableFrom(assignableArgType(clsArr[i3]));
                }
                if (zIsAssignableFrom) {
                    return method;
                }
            }
        }
        return null;
    }

    public Object applyMethod(View view) {
        return applyMethodWithArguments(view, this.mMethodArgs);
    }

    public Object applyMethodWithArguments(View view, Object[] objArr) {
        if (!this.mTargetClass.isAssignableFrom(view.getClass())) {
            return null;
        }
        try {
            return this.mTargetMethod.invoke(view, objArr);
        } catch (IllegalAccessException e2) {
            SALog.i(TAG, "Method " + this.mTargetMethod.getName() + " appears not to be public", e2);
            return null;
        } catch (IllegalArgumentException e3) {
            SALog.i(TAG, "Method " + this.mTargetMethod.getName() + " called with arguments of the wrong type", e3);
            return null;
        } catch (InvocationTargetException e4) {
            SALog.i(TAG, "Method " + this.mTargetMethod.getName() + " threw an exception", e4);
            return null;
        }
    }

    public boolean argsAreApplicable(Object[] objArr) {
        Class<?>[] parameterTypes = this.mTargetMethod.getParameterTypes();
        if (objArr.length != parameterTypes.length) {
            return false;
        }
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Class<?> clsAssignableArgType = assignableArgType(parameterTypes[i2]);
            Object obj = objArr[i2];
            if (obj == null) {
                if (clsAssignableArgType == Byte.TYPE || clsAssignableArgType == Short.TYPE || clsAssignableArgType == Integer.TYPE || clsAssignableArgType == Long.TYPE || clsAssignableArgType == Float.TYPE || clsAssignableArgType == Double.TYPE || clsAssignableArgType == Boolean.TYPE || clsAssignableArgType == Character.TYPE) {
                    return false;
                }
            } else if (!clsAssignableArgType.isAssignableFrom(assignableArgType(obj.getClass()))) {
                return false;
            }
        }
        return true;
    }

    public Object[] getArgs() {
        return this.mMethodArgs;
    }

    public String toString() {
        return "[Caller " + this.mMethodName + "(" + this.mMethodArgs + ")]";
    }
}
