package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.d21;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final class SignatureBuildingComponents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SignatureBuildingComponents f73262a = new SignatureBuildingComponents();

    public static String[] a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add("<init>(" + str + ")V");
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static LinkedHashSet b(String str, String... strArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str2 : strArr) {
            linkedHashSet.add(str + JwtParser.SEPARATOR_CHAR + str2);
        }
        return linkedHashSet;
    }

    public static LinkedHashSet c(String str, String... strArr) {
        str.getClass();
        return b("java/lang/".concat(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static LinkedHashSet d(String str, String... strArr) {
        return b("java/util/".concat(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static String e(String str, String str2, ArrayList arrayList) {
        str.getClass();
        str2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('(');
        sb.append(CollectionsKt.K(arrayList, "", null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str3 = (String) obj;
                str3.getClass();
                return str3.length() > 1 ? d21.d(';', "L", str3) : str3;
            }
        }, 30));
        sb.append(')');
        if (str2.length() > 1) {
            str2 = d21.d(';', "L", str2);
        }
        sb.append(str2);
        return sb.toString();
    }

    public static String f(String str, String str2) {
        str.getClass();
        return str + JwtParser.SEPARATOR_CHAR + str2;
    }
}
