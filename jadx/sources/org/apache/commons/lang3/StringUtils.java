package org.apache.commons.lang3;

import defpackage.n00;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes5.dex */
public class StringUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f77543a = 0;

    static {
        Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    }

    @Deprecated
    public StringUtils() {
    }

    public static String a(String str) {
        CharSequence[] charSequenceArr = {str, "..."};
        if (Array.getLength(charSequenceArr) != 0) {
            for (int i2 = 0; i2 < 2; i2++) {
                CharSequence charSequence = charSequenceArr[i2];
                if (charSequence == null || charSequence.length() == 0) {
                    return str;
                }
            }
        }
        if (15 >= str.length()) {
            return str;
        }
        int length = str.length() - 6;
        StringBuilder sb = new StringBuilder();
        n00.A(0, 6, str, "...", sb);
        sb.append(str.substring(length));
        return sb.toString();
    }

    public static String b(String str) {
        int iCodePointAt;
        int titleCase;
        if (str == null || str.length() == 0 || iCodePointAt == (titleCase = Character.toTitleCase((iCodePointAt = str.codePointAt(0))))) {
            return str;
        }
        int[] array = str.codePoints().toArray();
        array[0] = titleCase;
        return new String(array, 0, array.length);
    }

    public static String[] c(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        String[] strArr = ArrayUtils.f77532b;
        if (length == 0) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            if (MvelScriptManager.SEPARATOR_CHARS.indexOf(str.charAt(i2)) >= 0) {
                if (z) {
                    int i5 = i4 + 1;
                    if (i4 == -1) {
                        i2 = length;
                    }
                    arrayList.add(str.substring(i3, i2));
                    i4 = i5;
                    z = false;
                }
                i3 = i2 + 1;
                i2 = i3;
            } else {
                i2++;
                z = true;
            }
        }
        if (z) {
            arrayList.add(str.substring(i3, i2));
        }
        return (String[]) arrayList.toArray(strArr);
    }

    public static String[] d(String str, char c2) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        String[] strArr = ArrayUtils.f77532b;
        if (length == 0) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == c2) {
                if (z) {
                    arrayList.add(str.substring(i3, i2));
                    z = false;
                }
                i3 = i2 + 1;
                i2 = i3;
            } else {
                i2++;
                z = true;
            }
        }
        if (z) {
            arrayList.add(str.substring(i3, i2));
        }
        return (String[]) arrayList.toArray(strArr);
    }
}
