package com.networkbench.agent.impl.c;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char f36557a = '{';

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final char f36558b = '}';

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f36559c = "{}";
    private static final char d = '\\';

    public static final a a(String str, Object[] objArr) {
        int i2;
        Throwable thA = a(objArr);
        if (str == null) {
            return new a(null, objArr, thA);
        }
        if (objArr == null) {
            return new a(str);
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 50);
        int i3 = 0;
        int i4 = 0;
        while (i3 < objArr.length) {
            int iIndexOf = str.indexOf(f36559c, i4);
            if (iIndexOf == -1) {
                if (i4 == 0) {
                    return new a(str, objArr, thA);
                }
                stringBuffer.append(str.substring(i4, str.length()));
                return new a(stringBuffer.toString(), objArr, thA);
            }
            if (a(str, iIndexOf)) {
                if (b(str, iIndexOf)) {
                    stringBuffer.append(str.substring(i4, iIndexOf - 1));
                    a(stringBuffer, objArr[i3], new HashMap());
                } else {
                    i3--;
                    stringBuffer.append(str.substring(i4, iIndexOf - 1));
                    stringBuffer.append(f36557a);
                    i2 = iIndexOf + 1;
                }
                i4 = i2;
                i3++;
            } else {
                stringBuffer.append(str.substring(i4, iIndexOf));
                a(stringBuffer, objArr[i3], new HashMap());
            }
            i2 = iIndexOf + 2;
            i4 = i2;
            i3++;
        }
        stringBuffer.append(str.substring(i4, str.length()));
        return i3 < objArr.length + (-1) ? new a(stringBuffer.toString(), objArr, thA) : new a(stringBuffer.toString(), objArr, null);
    }

    public static final boolean b(String str, int i2) {
        return i2 >= 2 && str.charAt(i2 - 2) == '\\';
    }

    public static final a a(String str, Object obj, Object obj2) {
        return a(str, new Object[]{obj, obj2});
    }

    public static final Throwable a(Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            Object obj = objArr[objArr.length - 1];
            if (obj instanceof Throwable) {
                return (Throwable) obj;
            }
        }
        return null;
    }

    public static final a a(String str, Object obj) {
        return a(str, new Object[]{obj});
    }

    public static final boolean a(String str, int i2) {
        return i2 != 0 && str.charAt(i2 - 1) == '\\';
    }

    private static void a(StringBuffer stringBuffer, Object obj, Map<Object[], ?> map) {
        if (obj == null) {
            stringBuffer.append("null");
            return;
        }
        if (!obj.getClass().isArray()) {
            a(stringBuffer, obj);
            return;
        }
        if (obj instanceof boolean[]) {
            a(stringBuffer, (boolean[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            a(stringBuffer, (byte[]) obj);
            return;
        }
        if (obj instanceof char[]) {
            a(stringBuffer, (char[]) obj);
            return;
        }
        if (obj instanceof short[]) {
            a(stringBuffer, (short[]) obj);
            return;
        }
        if (obj instanceof int[]) {
            a(stringBuffer, (int[]) obj);
            return;
        }
        if (obj instanceof long[]) {
            a(stringBuffer, (long[]) obj);
            return;
        }
        if (obj instanceof float[]) {
            a(stringBuffer, (float[]) obj);
        } else if (obj instanceof double[]) {
            a(stringBuffer, (double[]) obj);
        } else {
            a(stringBuffer, (Object[]) obj, map);
        }
    }

    private static void a(StringBuffer stringBuffer, Object obj) {
        try {
            stringBuffer.append(obj.toString());
        } catch (Throwable th) {
            th.printStackTrace();
            stringBuffer.append("[FAILED toString()]");
        }
    }

    private static void a(StringBuffer stringBuffer, Object[] objArr, Map<Object[], ?> map) {
        stringBuffer.append('[');
        if (!map.containsKey(objArr)) {
            map.put(objArr, null);
            int length = objArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                a(stringBuffer, objArr[i2], map);
                if (i2 != length - 1) {
                    stringBuffer.append(", ");
                }
            }
            map.remove(objArr);
        } else {
            stringBuffer.append("...");
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, boolean[] zArr) {
        stringBuffer.append('[');
        int length = zArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(zArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, byte[] bArr) {
        stringBuffer.append('[');
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append((int) bArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, char[] cArr) {
        stringBuffer.append('[');
        int length = cArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(cArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, short[] sArr) {
        stringBuffer.append('[');
        int length = sArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append((int) sArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, int[] iArr) {
        stringBuffer.append('[');
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(iArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, long[] jArr) {
        stringBuffer.append('[');
        int length = jArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(jArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, float[] fArr) {
        stringBuffer.append('[');
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(fArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }

    private static void a(StringBuffer stringBuffer, double[] dArr) {
        stringBuffer.append('[');
        int length = dArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(dArr[i2]);
            if (i2 != length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(']');
    }
}
