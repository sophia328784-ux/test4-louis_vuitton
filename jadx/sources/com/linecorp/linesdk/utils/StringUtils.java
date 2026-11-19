package com.linecorp.linesdk.utils;

import java.security.SecureRandom;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StringUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f36291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SecureRandom f36292b;

    static {
        String strB = b('a', 'z');
        String strB2 = b('A', Matrix.MATRIX_TYPE_ZERO);
        f36291a = strB.concat(strB2).concat(b('0', '9'));
        f36292b = new SecureRandom();
    }

    public static String a(int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            SecureRandom secureRandom = f36292b;
            String str = f36291a;
            sb.append(str.charAt(secureRandom.nextInt(str.length())));
        }
        return sb.toString();
    }

    public static String b(char c2, char c3) {
        StringBuilder sb = new StringBuilder();
        while (c2 <= c3) {
            sb.append(c2);
            c2 = (char) (c2 + 1);
        }
        return sb.toString();
    }
}
