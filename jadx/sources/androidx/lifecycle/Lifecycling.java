package androidx.lifecycle;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.r81;
import defpackage.x1;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/Lifecycling;", "", "lifecycle-common"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Lifecycling {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f13459a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f13460b = new HashMap();

    public static GeneratedAdapter a(Constructor constructor, LifecycleObserver lifecycleObserver) {
        try {
            Object objNewInstance = constructor.newInstance(lifecycleObserver);
            objNewInstance.getClass();
            return (GeneratedAdapter) objNewInstance;
        } catch (IllegalAccessException e2) {
            x1.m(e2);
            return null;
        } catch (InstantiationException e3) {
            x1.m(e3);
            return null;
        } catch (InvocationTargetException e4) {
            x1.m(e4);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:70:0x0129  */
    public static int b(Class cls) {
        Constructor<?> declaredConstructor;
        boolean zBooleanValue;
        Class<?>[] interfaces;
        HashMap map = f13459a;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i2 = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r5 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r5 != null ? r5.getName() : "";
                name.getClass();
                if (name.length() != 0) {
                    canonicalName.getClass();
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                canonicalName.getClass();
                String strConcat = StringsKt.J(canonicalName, FileUtils.HIDDEN_PREFIX, "_").concat("_LifecycleAdapter");
                if (name.length() != 0) {
                    strConcat = name + FileUtils.HIDDEN_PREFIX + strConcat;
                }
                declaredConstructor = Class.forName(strConcat).getDeclaredConstructor(cls);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                declaredConstructor = null;
            } catch (NoSuchMethodException e2) {
                x1.m(e2);
                return 0;
            }
            HashMap map2 = f13460b;
            if (declaredConstructor != null) {
                map2.put(cls, CollectionsKt.O(declaredConstructor));
            } else {
                ClassesInfoCache classesInfoCache = ClassesInfoCache.f13407c;
                HashMap map3 = classesInfoCache.f13409b;
                Boolean bool = (Boolean) map3.get(cls);
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                map3.put(cls, Boolean.FALSE);
                                zBooleanValue = false;
                                break;
                            }
                            if (((OnLifecycleEvent) declaredMethods[i3].getAnnotation(OnLifecycleEvent.class)) != null) {
                                classesInfoCache.a(cls, declaredMethods);
                                zBooleanValue = true;
                                break;
                            }
                            i3++;
                        }
                    } catch (NoClassDefFoundError e3) {
                        r81.j("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e3);
                        return 0;
                    }
                }
                if (!zBooleanValue) {
                    Class superclass = cls.getSuperclass();
                    if (superclass == null || !LifecycleObserver.class.isAssignableFrom(superclass)) {
                        interfaces = cls.getInterfaces();
                        interfaces.getClass();
                        for (Class<?> cls2 : interfaces) {
                            if (cls2 == null && LifecycleObserver.class.isAssignableFrom(cls2)) {
                                cls2.getClass();
                                if (b(cls2) != 1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    Object obj = map2.get(cls2);
                                    obj.getClass();
                                    arrayList.addAll((Collection) obj);
                                }
                            }
                        }
                        if (arrayList != null) {
                            map2.put(cls, arrayList);
                        }
                    } else {
                        superclass.getClass();
                        if (b(superclass) != 1) {
                            Object obj2 = map2.get(superclass);
                            obj2.getClass();
                            arrayList = new ArrayList((Collection) obj2);
                            interfaces = cls.getInterfaces();
                            interfaces.getClass();
                            while (i < r8) {
                                if (cls2 == null) {
                                }
                            }
                            if (arrayList != null) {
                                map2.put(cls, arrayList);
                            }
                        }
                    }
                }
            }
            i2 = 2;
        }
        map.put(cls, Integer.valueOf(i2));
        return i2;
    }
}
