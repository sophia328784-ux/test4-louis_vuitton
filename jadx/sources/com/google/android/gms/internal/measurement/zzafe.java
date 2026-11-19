package com.google.android.gms.internal.measurement;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.r81;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzafe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f30434a;

    static {
        char[] cArr = new char[80];
        f30434a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i2, String str, Object obj) {
        String strReplace;
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        c(sb, i2);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i3 = 1; i3 < str.length(); i3++) {
                char cCharAt = str.charAt(i3);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (!(obj instanceof String)) {
            if (obj instanceof zzacr) {
                sb.append(": \"");
                sb.append(zzafx.a(((zzacr) obj).q()));
                sb.append('\"');
                return;
            }
            if (obj instanceof zzadu) {
                sb.append(" {");
                b((zzadu) obj, sb, i2 + 2);
                sb.append("\n");
                c(sb, i2);
                sb.append("}");
                return;
            }
            if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj);
                return;
            }
            int i4 = i2 + 2;
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            a(sb, i4, ConfigurationName.KEY, entry.getKey());
            a(sb, i4, "value", entry.getValue());
            sb.append("\n");
            c(sb, i2);
            sb.append("}");
            return;
        }
        sb.append(": \"");
        String strReplace2 = (String) obj;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i5 = 0; i5 < strReplace2.length(); i5++) {
            char cCharAt2 = strReplace2.charAt(i5);
            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                strReplace = zzafx.a(strReplace2.getBytes(StandardCharsets.UTF_8));
                sb.append(strReplace);
                sb.append('\"');
            } else {
                if (cCharAt2 == '\"') {
                    z3 = true;
                } else if (cCharAt2 == '\'') {
                    z2 = true;
                } else if (cCharAt2 == '\\') {
                    z = true;
                }
            }
        }
        if (z) {
            strReplace2 = strReplace2.replace("\\", "\\\\");
        }
        strReplace = z2 ? strReplace2.replace("'", "\\'") : strReplace2;
        if (z3) {
            strReplace = strReplace.replace("\"", "\\\"");
        }
        sb.append(strReplace);
        sb.append('\"');
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:67:0x0180  */
    public static void b(zzadu zzaduVar, StringBuilder sb, int i2) {
        int i3;
        int i4;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzaduVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i5 = 0;
        while (true) {
            i3 = 3;
            if (i5 >= length) {
                break;
            }
            Method method3 = declaredMethods[i5];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i5++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i3);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method2 = (Method) entry.getValue()) == null) {
                i4 = i3;
            } else {
                i4 = i3;
                if (method2.getReturnType().equals(List.class)) {
                    a(sb, i2, strSubstring.substring(0, strSubstring.length() - 4), zzadu.w(method2, zzaduVar, new Object[0]));
                }
                i3 = i4;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i2, strSubstring.substring(0, strSubstring.length() - 3), zzadu.w(method, zzaduVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objW = zzadu.w(method4, zzaduVar, new Object[0]);
                    if (method5 != null) {
                        zBooleanValue = ((Boolean) zzadu.w(method5, zzaduVar, new Object[0])).booleanValue();
                    } else if (objW instanceof Boolean) {
                        if (((Boolean) objW).booleanValue()) {
                            zBooleanValue = true;
                        } else {
                            zBooleanValue = false;
                        }
                    } else if (objW instanceof Integer) {
                        if (((Integer) objW).intValue() == 0) {
                            zBooleanValue = false;
                        } else {
                            zBooleanValue = true;
                        }
                    } else if (objW instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) objW).floatValue()) == 0) {
                            zBooleanValue = false;
                        } else {
                            zBooleanValue = true;
                        }
                    } else if (!(objW instanceof Double)) {
                        if (objW instanceof String) {
                            zEquals = objW.equals("");
                        } else if (objW instanceof zzacr) {
                            zEquals = objW.equals(zzacr.f30367c);
                        } else if (!(objW instanceof zzafc) ? !((objW instanceof Enum) && ((Enum) objW).ordinal() == 0) : objW != ((zzafc) objW).a()) {
                            zBooleanValue = true;
                        } else {
                            zBooleanValue = false;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        } else {
                            zBooleanValue = true;
                        }
                    } else if (Double.doubleToRawLongBits(((Double) objW).doubleValue()) == 0) {
                        zBooleanValue = false;
                    } else {
                        zBooleanValue = true;
                    }
                    if (zBooleanValue) {
                        a(sb, i2, strSubstring, objW);
                    }
                }
            }
            i3 = i4;
        }
        if (zzaduVar instanceof zzadr) {
            Iterator itB = ((zzadr) zzaduVar).zzb.b();
            if (itB.hasNext()) {
                ((Map.Entry) itB.next()).getKey().getClass();
                r81.h();
                return;
            }
        }
        zzaga zzagaVar = zzaduVar.zzc;
        if (zzagaVar != null) {
            for (int i6 = 0; i6 < zzagaVar.f30471a; i6++) {
                a(sb, i2, String.valueOf(zzagaVar.f30472b[i6] >>> 3), zzagaVar.f30473c[i6]);
            }
        }
    }

    public static void c(StringBuilder sb, int i2) {
        while (i2 > 0) {
            int i3 = 80;
            if (i2 <= 80) {
                i3 = i2;
            }
            sb.append(f30434a, 0, i3);
            i2 -= i3;
        }
    }
}
