package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PropertiesConventionUtilKt {
    public static Name a(Name name, String str, String str2, int i2) {
        char cCharAt;
        char cCharAt2;
        Object next;
        boolean z = (i2 & 4) != 0;
        if ((i2 & 8) != 0) {
            str2 = null;
        }
        if (!name.f73688c) {
            String strC = name.c();
            if (StringsKt.P(strC, str, false) && strC.length() != str.length() && ('a' > (cCharAt = strC.charAt(str.length())) || cCharAt >= '{')) {
                if (str2 != null) {
                    return Name.e(str2.concat(StringsKt.E(strC, str)));
                }
                if (!z) {
                    return name;
                }
                String strE = StringsKt.E(strC, str);
                if (strE.length() != 0 && CapitalizeDecapitalizeKt.b(0, strE)) {
                    if (strE.length() != 1 && CapitalizeDecapitalizeKt.b(1, strE)) {
                        Iterator<Integer> it = new IntRange(0, strE.length() - 1).iterator();
                        do {
                            if (!((IntProgressionIterator) it).d) {
                                next = null;
                                break;
                            }
                            next = ((IntIterator) it).next();
                        } while (CapitalizeDecapitalizeKt.b(((Number) next).intValue(), strE));
                        Integer num = (Integer) next;
                        if (num != null) {
                            int iIntValue = num.intValue() - 1;
                            strE = CapitalizeDecapitalizeKt.c(strE.substring(0, iIntValue)).concat(strE.substring(iIntValue));
                        } else {
                            strE = CapitalizeDecapitalizeKt.c(strE);
                        }
                    } else if (strE.length() != 0 && 'A' <= (cCharAt2 = strE.charAt(0)) && cCharAt2 < '[') {
                        strE = Character.toLowerCase(cCharAt2) + strE.substring(1);
                    }
                }
                if (Name.f(strE)) {
                    return Name.e(strE);
                }
            }
        }
        return null;
    }
}
