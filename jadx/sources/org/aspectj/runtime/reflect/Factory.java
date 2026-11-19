package org.aspectj.runtime.reflect;

import java.util.Hashtable;
import java.util.StringTokenizer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.MethodSignature;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes3.dex */
public final class Factory {
    public static final Hashtable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object[] f77558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static /* synthetic */ Class f77559f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassLoader f77560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77562c = 0;

    static {
        Hashtable hashtable = new Hashtable();
        d = hashtable;
        hashtable.put("void", Void.TYPE);
        hashtable.put("boolean", Boolean.TYPE);
        hashtable.put("byte", Byte.TYPE);
        hashtable.put("char", Character.TYPE);
        hashtable.put("short", Short.TYPE);
        hashtable.put("int", Integer.TYPE);
        hashtable.put("long", Long.TYPE);
        hashtable.put("float", Float.TYPE);
        hashtable.put("double", Double.TYPE);
        f77558e = new Object[0];
    }

    public Factory(String str, Class cls) {
        this.f77561b = str;
        this.f77560a = cls.getClassLoader();
    }

    /* JADX WARN: Unreachable blocks removed: 3, instructions: 5 */
    public static Class a(ClassLoader classLoader, String str) {
        if (str.equals(Browse.CAPS_WILDCARD)) {
            return null;
        }
        Class cls = (Class) d.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return classLoader == null ? Class.forName(str) : Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            Class<ClassNotFoundException> cls2 = f77559f;
            if (cls2 == null) {
                cls2 = ClassNotFoundException.class;
                f77559f = cls2;
            }
            return cls2;
        }
    }

    public static JoinPoint b(JoinPoint.StaticPart staticPart, Object obj, Object obj2) {
        return new JoinPointImpl(staticPart, obj, obj2, f77558e);
    }

    public static JoinPoint c(JoinPoint.StaticPart staticPart, Object obj, Object obj2, Object obj3) {
        return new JoinPointImpl(staticPart, obj, obj2, new Object[]{obj3});
    }

    public final MethodSignature d(String str, String str2, String str3, String str4, String str5) {
        int i2 = Integer.parseInt("1", 16);
        ClassLoader classLoader = this.f77560a;
        Class clsA = a(classLoader, str2);
        StringTokenizer stringTokenizer = new StringTokenizer(str3, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i3 = 0; i3 < iCountTokens; i3++) {
            clsArr[i3] = a(classLoader, stringTokenizer.nextToken());
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str4, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i4 = 0; i4 < iCountTokens2; i4++) {
            strArr[i4] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer("", ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i5 = 0; i5 < iCountTokens3; i5++) {
            clsArr2[i5] = a(classLoader, stringTokenizer3.nextToken());
        }
        Class clsA2 = a(classLoader, str5);
        MethodSignatureImpl methodSignatureImpl = new MethodSignatureImpl();
        methodSignatureImpl.g = null;
        methodSignatureImpl.f77571a = i2;
        methodSignatureImpl.f77572b = str;
        methodSignatureImpl.d = clsA;
        methodSignatureImpl.f77556i = clsArr;
        methodSignatureImpl.f77557j = clsArr2;
        methodSignatureImpl.f77569k = clsA2;
        return methodSignatureImpl;
    }

    public final JoinPoint.StaticPart e(Signature signature, int i2) {
        int i3 = this.f77562c;
        this.f77562c = i3 + 1;
        SourceLocationImpl sourceLocationImpl = new SourceLocationImpl();
        sourceLocationImpl.f77577a = this.f77561b;
        sourceLocationImpl.f77578b = i2;
        return new JoinPointImpl.StaticPartImpl(i3, "method-execution", signature, sourceLocationImpl);
    }
}
