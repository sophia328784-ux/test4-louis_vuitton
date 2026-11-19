package com.google.android.gms.internal.vision;

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
abstract class zzkp {
    public static final String a(String str) {
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

    /* JADX WARN: Code duplicated, block: B:84:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ca  */
    public static void b(zzjb zzjbVar, StringBuilder sb, int i2) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzjbVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            boolean zBooleanValue = true;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strValueOf = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strG = o60.g(4, 1, strSubstring);
                String strConcat = strG.length() != 0 ? strValueOf.concat(strG) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    c(sb, i2, a(strConcat), zzjb.k(method2, zzjbVar, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strValueOf2 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strG2 = o60.g(3, 1, strSubstring);
                String strConcat2 = strG2.length() != 0 ? strValueOf2.concat(strG2) : new String(strValueOf2);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    c(sb, i2, a(strConcat2), zzjb.k(method3, zzjbVar, new Object[0]));
                }
            }
            if (((Method) map2.get(strSubstring.length() != 0 ? "set".concat(strSubstring) : new String("set"))) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    String strG3 = o60.g(5, 0, strSubstring);
                    if (!map.containsKey(strG3.length() != 0 ? "get".concat(strG3) : new String("get"))) {
                    }
                }
                String strValueOf3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strSubstring2 = strSubstring.substring(1);
                String strConcat3 = strSubstring2.length() != 0 ? strValueOf3.concat(strSubstring2) : new String(strValueOf3);
                Method method4 = (Method) map.get(strSubstring.length() != 0 ? "get".concat(strSubstring) : new String("get"));
                Method method5 = (Method) map.get(strSubstring.length() != 0 ? "has".concat(strSubstring) : new String("has"));
                if (method4 != null) {
                    Object objK = zzjb.k(method4, zzjbVar, new Object[0]);
                    if (method5 == null) {
                        if (objK instanceof Boolean) {
                            if (((Boolean) objK).booleanValue()) {
                                zEquals = false;
                            } else {
                                zEquals = true;
                            }
                        } else if (objK instanceof Integer) {
                            if (((Integer) objK).intValue() == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objK instanceof Float) {
                            if (((Float) objK).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objK instanceof Double) {
                            if (((Double) objK).doubleValue() == 0.0d) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objK instanceof String) {
                            zEquals = objK.equals("");
                        } else if (objK instanceof zzht) {
                            zEquals = objK.equals(zzht.f31188c);
                        } else if (!(objK instanceof zzkk) ? !((objK instanceof Enum) && ((Enum) objK).ordinal() == 0) : objK != ((zzkk) objK).O()) {
                            zEquals = false;
                        } else {
                            zEquals = true;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) zzjb.k(method5, zzjbVar, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        c(sb, i2, a(strConcat3), objK);
                    }
                }
            }
        }
        if (zzjbVar instanceof zzjb.zzc) {
            Iterator itJ = ((zzjb.zzc) zzjbVar).zzc.j();
            if (itJ.hasNext()) {
                ((Map.Entry) itJ.next()).getKey().getClass();
                r81.h();
                return;
            }
        }
        zzlx zzlxVar = zzjbVar.zzb;
        if (zzlxVar != null) {
            for (int i3 = 0; i3 < zzlxVar.f31281a; i3++) {
                c(sb, i2, String.valueOf(zzlxVar.f31282b[i3] >>> 3), zzlxVar.f31283c[i3]);
            }
        }
    }

    public static final void c(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                c(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                c(sb, i2, str, (Map.Entry) it2.next());
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
            zzht zzhtVar = zzht.f31188c;
            sb.append(zzlq.a(new zzid(((String) obj).getBytes(zzjf.f31225a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzht) {
            sb.append(": \"");
            sb.append(zzlq.a((zzht) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzjb) {
            sb.append(" {");
            b((zzjb) obj, sb, i2 + 2);
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
        c(sb, i5, ConfigurationName.KEY, entry.getKey());
        c(sb, i5, "value", entry.getValue());
        sb.append("\n");
        while (i3 < i2) {
            sb.append(' ');
            i3++;
        }
        sb.append("}");
    }
}
