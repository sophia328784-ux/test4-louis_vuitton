package com.google.crypto.tink.shaded.protobuf;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import defpackage.r81;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class MessageLiteToString {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f34212a;

    static {
        char[] cArr = new char[80];
        f34212a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i2) {
        while (i2 > 0) {
            int i3 = 80;
            if (i2 <= 80) {
                i3 = i2;
            }
            sb.append(f34212a, 0, i3);
            i2 -= i3;
        }
    }

    public static void b(StringBuilder sb, int i2, String str, Object obj) {
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
        a(sb, i2);
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
        if (obj instanceof String) {
            sb.append(": \"");
            ByteString byteString = ByteString.f34141c;
            sb.append(TextFormatEscaper.a(new ByteString.LiteralByteString(((String) obj).getBytes(Internal.f34190a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof ByteString) {
            sb.append(": \"");
            sb.append(TextFormatEscaper.a((ByteString) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof GeneratedMessageLite) {
            sb.append(" {");
            c((GeneratedMessageLite) obj, sb, i2 + 2);
            sb.append("\n");
            a(sb, i2);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i2 + 2;
        b(sb, i4, ConfigurationName.KEY, entry.getKey());
        b(sb, i4, "value", entry.getValue());
        sb.append("\n");
        a(sb, i2);
        sb.append("}");
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x0187  */
    public static void c(GeneratedMessageLite generatedMessageLite, StringBuilder sb, int i2) {
        int i3;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = generatedMessageLite.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i4 = 0;
        while (true) {
            i3 = 3;
            if (i4 >= length) {
                break;
            }
            Method method3 = declaredMethods[i4];
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
            i4++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i3);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                b(sb, i2, o60.g(4, 0, strSubstring), GeneratedMessageLite.t(method2, generatedMessageLite, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb, i2, o60.g(3, 0, strSubstring), GeneratedMessageLite.t(method, generatedMessageLite, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objT = GeneratedMessageLite.t(method4, generatedMessageLite, new Object[0]);
                    if (method5 == null) {
                        zBooleanValue = true;
                        if (objT instanceof Boolean) {
                            zEquals = !((Boolean) objT).booleanValue();
                        } else if (objT instanceof Integer) {
                            if (((Integer) objT).intValue() == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objT instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objT).floatValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objT instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) objT).doubleValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objT instanceof String) {
                            zEquals = objT.equals("");
                        } else if (objT instanceof ByteString) {
                            zEquals = objT.equals(ByteString.f34141c);
                        } else if (!(objT instanceof MessageLite) ? !((objT instanceof Enum) && ((Enum) objT).ordinal() == 0) : objT != ((MessageLite) objT).f()) {
                            zEquals = false;
                        } else {
                            zEquals = true;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) GeneratedMessageLite.t(method5, generatedMessageLite, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        b(sb, i2, strSubstring, objT);
                    }
                }
            }
            i3 = 3;
        }
        if (generatedMessageLite instanceof GeneratedMessageLite.ExtendableMessage) {
            Iterator itI = ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions.i();
            if (itI.hasNext()) {
                ((Map.Entry) itI.next()).getKey().getClass();
                r81.h();
                return;
            }
        }
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != null) {
            for (int i5 = 0; i5 < unknownFieldSetLite.f34258a; i5++) {
                b(sb, i2, String.valueOf(unknownFieldSetLite.f34259b[i5] >>> 3), unknownFieldSetLite.f34260c[i5]);
            }
        }
    }
}
