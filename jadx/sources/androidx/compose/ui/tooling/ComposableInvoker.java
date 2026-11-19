package androidx.compose.ui.tooling;

import androidx.compose.runtime.Composer;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/tooling/ComposableInvoker;", "", "ui-tooling"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ComposableInvoker {
    /* JADX WARN: Code duplicated, block: B:31:0x0090 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x0091  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    public static Method a(Method[] methodArr, String str, Class... clsArr) throws NoSuchMethodException {
        Method method;
        ?? r11;
        boolean z;
        int length = methodArr.length;
        boolean z2 = false;
        int i2 = 0;
        while (i2 < length) {
            method = methodArr[i2];
            if (str.equals(method.getName()) || StringsKt.P(method.getName(), str.concat("-"), z2)) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                Class<?>[] clsArr2 = (Class[]) Arrays.copyOf(clsArr, clsArr.length);
                if (parameterTypes.length == clsArr2.length) {
                    ArrayList arrayList = new ArrayList(parameterTypes.length);
                    int length2 = parameterTypes.length;
                    boolean z3 = z2;
                    ?? r12 = z3;
                    while (r11 < length2) {
                        Class<?> cls = parameterTypes[r11];
                        int i3 = r12 + 1;
                        Class<?> cls2 = clsArr2[r12];
                        if (JvmClassMappingKt.e(cls).equals(JvmClassMappingKt.e(cls2)) || cls.isAssignableFrom(cls2)) {
                            r11 = z3;
                            r11 = z3;
                            z = true;
                        } else {
                            r11 = z3;
                            z = false;
                        }
                        arrayList.add(Boolean.valueOf(z));
                        r12 = i3;
                        r11++;
                    }
                    r11 = z3;
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        do {
                            if (it.hasNext()) {
                            }
                        } while (((Boolean) it.next()).booleanValue());
                    }
                    if (method != null) {
                        return method;
                    }
                    throw new NoSuchMethodException(str.concat(" not found"));
                }
                continue;
            }
            i2++;
            z2 = false;
        }
        method = null;
        if (method != null) {
            return method;
        }
        throw new NoSuchMethodException(str.concat(" not found"));
    }

    public static Method b(Class cls, String str, Object... objArr) {
        ArrayList arrayList = new ArrayList();
        int length = objArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            Class<?> cls2 = obj != null ? obj.getClass() : null;
            if (cls2 != null) {
                arrayList.add(cls2);
            }
            i2++;
        }
        Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
        try {
            try {
                int length2 = clsArr.length;
                int iCeil = length2 == 0 ? 1 : (int) Math.ceil(((double) length2) / 10.0d);
                Class cls3 = Integer.TYPE;
                IntRange intRangeJ = RangesKt.j(0, iCeil);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(intRangeJ, 10));
                Iterator<Integer> it = intRangeJ.iterator();
                while (((IntProgressionIterator) it).d) {
                    ((IntIterator) it).nextInt();
                    arrayList2.add(cls3);
                }
                Class[] clsArr2 = (Class[]) arrayList2.toArray(new Class[0]);
                Method[] declaredMethods = cls.getDeclaredMethods();
                SpreadBuilder spreadBuilder = new SpreadBuilder(3);
                ArrayList arrayList3 = spreadBuilder.f71925a;
                spreadBuilder.b(clsArr);
                spreadBuilder.a(Composer.class);
                spreadBuilder.b(clsArr2);
                return a(declaredMethods, str, (Class[]) arrayList3.toArray(new Class[arrayList3.size()]));
            } catch (ReflectiveOperationException unused) {
                return null;
            }
        } catch (ReflectiveOperationException unused2) {
            for (Method method : cls.getDeclaredMethods()) {
                if (!Intrinsics.c(method.getName(), str)) {
                    if (!StringsKt.P(method.getName(), str + '-', false)) {
                    }
                }
                return method;
            }
            return null;
        }
    }

    public static void c(String str, String str2, Composer composer, Object... objArr) throws Exception {
        try {
            Class<?> cls = Class.forName(str);
            Method methodB = b(cls, str2, Arrays.copyOf(objArr, objArr.length));
            if (methodB != null) {
                methodB.setAccessible(true);
                if (Modifier.isStatic(methodB.getModifiers())) {
                    d(methodB, null, composer, Arrays.copyOf(objArr, objArr.length));
                    return;
                } else {
                    d(methodB, cls.getConstructor(null).newInstance(null), composer, Arrays.copyOf(objArr, objArr.length));
                    return;
                }
            }
            throw new NoSuchMethodException("Composable " + str + JwtParser.SEPARATOR_CHAR + str2 + " not found");
        } catch (Exception e2) {
            PreviewLogger.f10997a.getClass();
            throw e2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:63:0x00da  */
    /* JADX WARN: Code duplicated, block: B:69:0x00eb  */
    public static void d(Method method, Object obj, Composer composer, Object... objArr) throws IllegalAccessException, InvocationTargetException {
        Object objValueOf;
        Class<?>[] parameterTypes = method.getParameterTypes();
        int i2 = -1;
        int length = parameterTypes.length - 1;
        if (length >= 0) {
            while (true) {
                int i3 = length - 1;
                if (Intrinsics.c(parameterTypes[length], Composer.class)) {
                    i2 = length;
                    break;
                } else if (i3 < 0) {
                    break;
                } else {
                    length = i3;
                }
            }
        }
        int i4 = i2 + 1;
        int iCeil = (i2 != 0 ? (int) Math.ceil(((double) ((obj != null ? 1 : 0) + i2)) / 10.0d) : 1) + i4;
        int length2 = method.getParameterTypes().length;
        if ((length2 != iCeil ? (int) Math.ceil(((double) i2) / 31.0d) : 0) + iCeil != length2) {
            md.k("params don't add up to total params");
            return;
        }
        Object[] objArr2 = new Object[length2];
        for (int i5 = 0; i5 < length2; i5++) {
            if (i5 < 0 || i5 >= i2) {
                if (i5 == i2) {
                    objValueOf = composer;
                } else if (i4 <= i5 && i5 < iCeil) {
                    objValueOf = 0;
                } else {
                    if (iCeil > i5 || i5 >= length2) {
                        md.k("Unexpected index");
                        return;
                    }
                    objValueOf = 2097151;
                }
            } else if (i5 < 0 || i5 >= objArr.length) {
                switch (method.getParameterTypes()[i5].getName()) {
                    case "double":
                        objValueOf = Double.valueOf(0.0d);
                        break;
                    case "int":
                        objValueOf = 0;
                        break;
                    case "byte":
                        objValueOf = (byte) 0;
                        break;
                    case "char":
                        objValueOf = (char) 0;
                        break;
                    case "long":
                        objValueOf = 0L;
                        break;
                    case "boolean":
                        objValueOf = Boolean.FALSE;
                        break;
                    case "float":
                        objValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        break;
                    case "short":
                        objValueOf = (short) 0;
                        break;
                    default:
                        objValueOf = null;
                        break;
                }
            } else {
                objValueOf = objArr[i5];
            }
            objArr2[i5] = objValueOf;
        }
        method.invoke(obj, Arrays.copyOf(objArr2, length2));
    }
}
