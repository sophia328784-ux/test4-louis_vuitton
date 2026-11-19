package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.r81;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class VersionedParcel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayMap f20118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f20119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayMap f20120c;

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.f20118a = arrayMap;
        this.f20119b = arrayMap2;
        this.f20120c = arrayMap3;
    }

    public abstract void a();

    public abstract VersionedParcel b();

    public final Class c(Class cls) throws ClassNotFoundException {
        String name = cls.getName();
        ArrayMap arrayMap = this.f20120c;
        Class cls2 = (Class) arrayMap.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(d21.k(cls.getPackage().getName(), FileUtils.HIDDEN_PREFIX, cls.getSimpleName(), "Parcelizer"), false, cls.getClassLoader());
        arrayMap.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method d(String str) throws NoSuchMethodException {
        ArrayMap arrayMap = this.f20118a;
        Method method = (Method) arrayMap.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        arrayMap.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Method e(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        String name = cls.getName();
        ArrayMap arrayMap = this.f20119b;
        Method method = (Method) arrayMap.get(name);
        if (method != null) {
            return method;
        }
        Class clsC = c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsC.getDeclaredMethod("write", cls, VersionedParcel.class);
        arrayMap.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean f();

    public abstract byte[] g();

    public abstract CharSequence h();

    public abstract boolean i(int i2);

    public abstract int j();

    public final int k(int i2, int i3) {
        return !i(i3) ? i2 : j();
    }

    public abstract Parcelable l();

    public abstract String m();

    public final VersionedParcelable n() {
        String strM = m();
        if (strM == null) {
            return null;
        }
        try {
            return (VersionedParcelable) d(strM).invoke(null, b());
        } catch (ClassNotFoundException e2) {
            r81.g("VersionedParcel encountered ClassNotFoundException", e2);
            return null;
        } catch (IllegalAccessException e3) {
            r81.g("VersionedParcel encountered IllegalAccessException", e3);
            return null;
        } catch (NoSuchMethodException e4) {
            r81.g("VersionedParcel encountered NoSuchMethodException", e4);
            return null;
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            r81.g("VersionedParcel encountered InvocationTargetException", e5);
            return null;
        }
    }

    public abstract void o(int i2);

    public abstract void p(boolean z);

    public abstract void q(byte[] bArr);

    public abstract void r(CharSequence charSequence);

    public abstract void s(int i2);

    public final void t(int i2, int i3) {
        o(i3);
        s(i2);
    }

    public abstract void u(Parcelable parcelable);

    public abstract void v(String str);

    public final void w(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            v(null);
            return;
        }
        try {
            v(c(versionedParcelable.getClass()).getName());
            VersionedParcel versionedParcelB = b();
            try {
                e(versionedParcelable.getClass()).invoke(null, versionedParcelable, versionedParcelB);
                versionedParcelB.a();
            } catch (ClassNotFoundException e2) {
                r81.g("VersionedParcel encountered ClassNotFoundException", e2);
            } catch (IllegalAccessException e3) {
                r81.g("VersionedParcel encountered IllegalAccessException", e3);
            } catch (NoSuchMethodException e4) {
                r81.g("VersionedParcel encountered NoSuchMethodException", e4);
            } catch (InvocationTargetException e5) {
                if (e5.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e5.getCause());
                }
                r81.g("VersionedParcel encountered InvocationTargetException", e5);
            }
        } catch (ClassNotFoundException e6) {
            r81.g(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), e6);
        }
    }
}
