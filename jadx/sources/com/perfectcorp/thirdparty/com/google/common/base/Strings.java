package com.perfectcorp.thirdparty.com.google.common.base;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.pq0;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Strings {
    public static String a(String str, Object... objArr) {
        int iIndexOf;
        String string;
        int i2 = 0;
        for (int i3 = 0; i3 < objArr.length; i3++) {
            Object obj = objArr[i3];
            try {
                string = String.valueOf(obj);
            } catch (Exception e2) {
                String str2 = obj.getClass().getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(obj));
                Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for ".concat(str2), (Throwable) e2);
                StringBuilder sbR = pq0.r("<", str2, " threw ");
                sbR.append(e2.getClass().getName());
                sbR.append(">");
                string = sbR.toString();
            }
            objArr[i3] = string;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + str.length());
        int i4 = 0;
        while (i2 < objArr.length && (iIndexOf = str.indexOf("%s", i4)) != -1) {
            sb.append((CharSequence) str, i4, iIndexOf);
            sb.append(objArr[i2]);
            i4 = iIndexOf + 2;
            i2++;
        }
        sb.append((CharSequence) str, i4, str.length());
        if (i2 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb.append(", ");
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String b(String str) {
        int i2 = g.f42098a;
        return str == null ? "" : str;
    }
}
