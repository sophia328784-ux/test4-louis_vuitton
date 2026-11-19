package org.aspectj.runtime.reflect;

import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes3.dex */
class StringMaker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final StringMaker f77579e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f77580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f77581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f77582c;
    public boolean d;

    static {
        StringMaker stringMaker = new StringMaker();
        stringMaker.f77580a = true;
        stringMaker.f77581b = true;
        stringMaker.f77582c = false;
        stringMaker.d = false;
        f77579e = stringMaker;
        stringMaker.f77580a = true;
        stringMaker.f77581b = true;
        stringMaker.f77582c = false;
        stringMaker.d = false;
    }

    public static String a(Class cls, String str, boolean z) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(a(componentType, componentType.getName(), z));
            stringBuffer.append("[]");
            return stringBuffer.toString();
        }
        if (!z) {
            return str.replace('$', JwtParser.SEPARATOR_CHAR);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            str = str.substring(iLastIndexOf + 1);
        }
        return str.replace('$', JwtParser.SEPARATOR_CHAR);
    }
}
