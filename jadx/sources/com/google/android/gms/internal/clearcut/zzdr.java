package com.google.android.gms.internal.clearcut;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import defpackage.r81;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdr {
    /* JADX WARN: Code duplicated, block: B:101:0x0207  */
    /* JADX WARN: Code duplicated, block: B:103:0x020b  */
    /* JADX WARN: Code duplicated, block: B:104:0x020e  */
    /* JADX WARN: Code duplicated, block: B:116:0x022d  */
    /* JADX WARN: Code duplicated, block: B:117:0x022f  */
    /* JADX WARN: Code duplicated, block: B:146:0x013f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x023d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:49:0x012d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0132  */
    /* JADX WARN: Code duplicated, block: B:55:0x0147  */
    /* JADX WARN: Code duplicated, block: B:57:0x0152  */
    /* JADX WARN: Code duplicated, block: B:58:0x0157  */
    /* JADX WARN: Code duplicated, block: B:63:0x0178  */
    /* JADX WARN: Code duplicated, block: B:64:0x017d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0189  */
    /* JADX WARN: Code duplicated, block: B:68:0x018e  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:77:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:79:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:81:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:83:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01db  */
    /* JADX WARN: Code duplicated, block: B:90:0x01df  */
    /* JADX WARN: Code duplicated, block: B:93:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:95:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01fe  */
    public static void a(zzcg zzcgVar, StringBuilder sb, int i2) {
        String str;
        String strValueOf;
        String strSubstring;
        String str2;
        String str3;
        Method method;
        String str4;
        Method method2;
        Object objF;
        String strC;
        boolean zEquals;
        String strG;
        String str5;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method3 : zzcgVar.getClass().getDeclaredMethods()) {
            map2.put(method3.getName(), method3);
            if (method3.getParameterTypes().length == 0) {
                map.put(method3.getName(), method3);
                if (method3.getName().startsWith("get")) {
                    treeSet.add(method3.getName());
                }
            }
        }
        for (String str6 : treeSet) {
            Object obj = "";
            String strReplaceFirst = str6.replaceFirst("get", "");
            boolean zBooleanValue = true;
            if (!strReplaceFirst.endsWith("List") || strReplaceFirst.endsWith("OrBuilderList") || strReplaceFirst.equals("List")) {
                if (!strReplaceFirst.endsWith("Map") && !strReplaceFirst.equals("Map")) {
                    String strValueOf2 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                    String strG2 = o60.g(3, 1, strReplaceFirst);
                    String strConcat = strG2.length() != 0 ? strValueOf2.concat(strG2) : new String(strValueOf2);
                    Method method4 = (Method) map.get(str6);
                    if (method4 != null && method4.getReturnType().equals(Map.class) && !method4.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method4.getModifiers())) {
                        b(sb, i2, c(strConcat), zzcg.f(method4, zzcgVar, new Object[0]));
                    }
                }
                if (strReplaceFirst.length() != 0) {
                    str = "set".concat(strReplaceFirst);
                } else {
                    str = new String("set");
                }
                if (((Method) map2.get(str)) == null) {
                    if (strReplaceFirst.endsWith("Bytes")) {
                        strG = o60.g(5, 0, strReplaceFirst);
                        if (strG.length() != 0) {
                            str5 = "get".concat(strG);
                        } else {
                            str5 = new String("get");
                        }
                        if (!map.containsKey(str5)) {
                        }
                    }
                    strValueOf = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                    strSubstring = strReplaceFirst.substring(1);
                    if (strSubstring.length() != 0) {
                        str2 = strValueOf.concat(strSubstring);
                    } else {
                        str2 = new String(strValueOf);
                    }
                    if (strReplaceFirst.length() != 0) {
                        str3 = "get".concat(strReplaceFirst);
                    } else {
                        str3 = new String("get");
                    }
                    method = (Method) map.get(str3);
                    if (strReplaceFirst.length() != 0) {
                        str4 = "has".concat(strReplaceFirst);
                    } else {
                        str4 = new String("has");
                    }
                    method2 = (Method) map.get(str4);
                    if (method != null) {
                        objF = zzcg.f(method, zzcgVar, new Object[0]);
                        if (method2 == null) {
                            if (objF instanceof Boolean) {
                                if (((Boolean) objF).booleanValue()) {
                                    zEquals = false;
                                } else {
                                    zEquals = true;
                                }
                            } else if (objF instanceof Integer) {
                                if (((Integer) objF).intValue() == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objF instanceof Float) {
                                if (((Float) objF).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objF instanceof Double) {
                                if (!(objF instanceof String)) {
                                    if (objF instanceof zzbb) {
                                        obj = zzbb.f29654c;
                                    } else if ((objF instanceof zzdo) ? !((objF instanceof Enum) && ((Enum) objF).ordinal() == 0) : objF != ((zzdo) objF).d()) {
                                        zEquals = false;
                                    } else {
                                        zEquals = true;
                                    }
                                }
                                zEquals = objF.equals(obj);
                            } else if (((Double) objF).doubleValue() == 0.0d) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                            if (zEquals) {
                                zBooleanValue = false;
                            }
                        } else {
                            zBooleanValue = ((Boolean) zzcg.f(method2, zzcgVar, new Object[0])).booleanValue();
                        }
                        if (zBooleanValue) {
                            strC = c(str2);
                            b(sb, i2, strC, objF);
                        }
                    }
                }
            } else {
                String strValueOf3 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strG3 = o60.g(4, 1, strReplaceFirst);
                String strConcat2 = strG3.length() != 0 ? strValueOf3.concat(strG3) : new String(strValueOf3);
                Method method5 = (Method) map.get(str6);
                if (method5 == null || !method5.getReturnType().equals(List.class)) {
                    if (!strReplaceFirst.endsWith("Map")) {
                    }
                    if (strReplaceFirst.length() != 0) {
                        str = "set".concat(strReplaceFirst);
                    } else {
                        str = new String("set");
                    }
                    if (((Method) map2.get(str)) == null) {
                        if (strReplaceFirst.endsWith("Bytes")) {
                            strG = o60.g(5, 0, strReplaceFirst);
                            if (strG.length() != 0) {
                                str5 = "get".concat(strG);
                            } else {
                                str5 = new String("get");
                            }
                            if (!map.containsKey(str5)) {
                            }
                        }
                        strValueOf = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                        strSubstring = strReplaceFirst.substring(1);
                        if (strSubstring.length() != 0) {
                            str2 = strValueOf.concat(strSubstring);
                        } else {
                            str2 = new String(strValueOf);
                        }
                        if (strReplaceFirst.length() != 0) {
                            str3 = "get".concat(strReplaceFirst);
                        } else {
                            str3 = new String("get");
                        }
                        method = (Method) map.get(str3);
                        if (strReplaceFirst.length() != 0) {
                            str4 = "has".concat(strReplaceFirst);
                        } else {
                            str4 = new String("has");
                        }
                        method2 = (Method) map.get(str4);
                        if (method != null) {
                            objF = zzcg.f(method, zzcgVar, new Object[0]);
                            if (method2 == null) {
                                if (objF instanceof Boolean) {
                                    if (((Boolean) objF).booleanValue()) {
                                        zEquals = true;
                                    } else {
                                        zEquals = false;
                                    }
                                } else if (objF instanceof Integer) {
                                    if (((Integer) objF).intValue() == 0) {
                                        zEquals = true;
                                    } else {
                                        zEquals = false;
                                    }
                                } else if (objF instanceof Float) {
                                    if (((Float) objF).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        zEquals = true;
                                    } else {
                                        zEquals = false;
                                    }
                                } else if (objF instanceof Double) {
                                    if (!(objF instanceof String)) {
                                        if (objF instanceof zzbb) {
                                            obj = zzbb.f29654c;
                                        } else if (objF instanceof zzdo) {
                                            zEquals = false;
                                        } else {
                                            zEquals = false;
                                        }
                                    }
                                    zEquals = objF.equals(obj);
                                } else if (((Double) objF).doubleValue() == 0.0d) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                                if (zEquals) {
                                    zBooleanValue = false;
                                }
                            } else {
                                zBooleanValue = ((Boolean) zzcg.f(method2, zzcgVar, new Object[0])).booleanValue();
                            }
                            if (zBooleanValue) {
                                strC = c(str2);
                            }
                        }
                    }
                } else {
                    strC = c(strConcat2);
                    objF = zzcg.f(method5, zzcgVar, new Object[0]);
                }
                b(sb, i2, strC, objF);
            }
        }
        if (zzcgVar instanceof zzcg.zzd) {
            Iterator it = ((zzer) ((zzcg.zzd) zzcgVar).zzjv.f29666a.entrySet()).iterator();
            if (it.hasNext()) {
                ((Map.Entry) it.next()).getKey().getClass();
                r81.h();
                return;
            }
        }
        zzey zzeyVar = zzcgVar.zzjp;
        if (zzeyVar != null) {
            for (int i3 = 0; i3 < zzeyVar.f29738a; i3++) {
                b(sb, i2, String.valueOf(zzeyVar.f29739b[i3] >>> 3), zzeyVar.f29740c[i3]);
            }
        }
    }

    public static final void b(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            zzbb zzbbVar = zzbb.f29654c;
            sb.append(zzet.a(new zzbi(((String) obj).getBytes(zzci.f29677a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzbb) {
            sb.append(": \"");
            sb.append(zzet.a((zzbb) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzcg) {
            sb.append(" {");
            a((zzcg) obj, sb, i2 + 2);
            sb.append("\n");
            while (i3 < i2) {
                sb.append(' ');
                i3++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i5 = i2 + 2;
        b(sb, i5, ConfigurationName.KEY, entry.getKey());
        b(sb, i5, "value", entry.getValue());
        sb.append("\n");
        while (i3 < i2) {
            sb.append(' ');
            i3++;
        }
        sb.append("}");
    }

    public static final String c(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }
}
