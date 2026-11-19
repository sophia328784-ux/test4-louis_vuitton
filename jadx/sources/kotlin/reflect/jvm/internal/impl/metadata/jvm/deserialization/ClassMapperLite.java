package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.d21;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ClassMapperLite {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f73661a = CollectionsKt.K(CollectionsKt.P('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f73662b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listP = CollectionsKt.P("Boolean", "Z", "Char", "C", "Byte", NBSSpanMetricUnit.Byte, "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", "D");
        int iA = ProgressionUtilKt.a(0, listP.size() - 1, 2);
        if (iA >= 0) {
            int i2 = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f73661a;
                sb.append(str);
                sb.append('/');
                sb.append((String) listP.get(i2));
                int i3 = i2 + 1;
                linkedHashMap.put(sb.toString(), listP.get(i3));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append('/');
                linkedHashMap.put(n00.r((String) listP.get(i2), "Array", sb2), "[" + ((String) listP.get(i3)));
                if (i2 == iA) {
                    break;
                } else {
                    i2 += 2;
                }
            }
        }
        linkedHashMap.put(f73661a + "/Unit", "V");
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : CollectionsKt.P("String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum")) {
            a(linkedHashMap, str2, "java/lang/" + str2);
        }
        for (String str3 : CollectionsKt.P("Iterator", "Collection", "List", "Set", "Map", "ListIterator")) {
            a(linkedHashMap, tr.g("collections/", str3), "java/util/" + str3);
            a(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i4 = 0; i4 < 23; i4++) {
            String strK = pq0.k(i4, "Function");
            StringBuilder sb3 = new StringBuilder();
            String str4 = f73661a;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i4);
            a(linkedHashMap, strK, sb3.toString());
            a(linkedHashMap, "reflect/KFunction" + i4, str4 + "/reflect/KFunction");
        }
        for (String str5 : CollectionsKt.P("Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum")) {
            a(linkedHashMap, d21.j(str5, ".Companion"), tr.l(new StringBuilder(), f73661a, "/jvm/internal/", str5, "CompanionObject"));
        }
        f73662b = linkedHashMap;
    }

    public static final void a(LinkedHashMap linkedHashMap, String str, String str2) {
        linkedHashMap.put(f73661a + '/' + str, "L" + str2 + ';');
    }

    public static final String b(String str) {
        str.getClass();
        String str2 = (String) f73662b.get(str);
        if (str2 != null) {
            return str2;
        }
        StringBuilder sb = new StringBuilder("L");
        String strReplace = str.replace(JwtParser.SEPARATOR_CHAR, '$');
        strReplace.getClass();
        sb.append(strReplace);
        sb.append(';');
        return sb.toString();
    }
}
