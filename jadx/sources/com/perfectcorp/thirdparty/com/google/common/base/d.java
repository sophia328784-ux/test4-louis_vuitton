package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d implements Predicate<Character> {

    public static abstract class a extends d {
        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return c(((Character) obj).charValue());
        }
    }

    public static final class b extends a {
        @Override // com.perfectcorp.thirdparty.com.google.common.base.d
        public final boolean c(char c2) {
            return c2 == ',';
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.is('");
            char[] cArr = new char[6];
            cArr[0] = '\\';
            cArr[1] = 'u';
            cArr[2] = 0;
            cArr[3] = 0;
            cArr[4] = 0;
            cArr[5] = 0;
            char c2 = ',';
            for (int i2 = 0; i2 < 4; i2++) {
                cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
                c2 = (char) (c2 >> 4);
            }
            sb.append(String.copyValueOf(cArr));
            sb.append("')");
            return sb.toString();
        }
    }

    public static abstract class c extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f42092b;

        public c(String str) {
            this.f42092b = str;
        }

        public final String toString() {
            return this.f42092b;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.base.d$d, reason: collision with other inner class name */
    public static final class C0205d extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final C0205d f42093c = new C0205d("CharMatcher.none()");

        @Override // com.perfectcorp.thirdparty.com.google.common.base.d
        public final boolean c(char c2) {
            return false;
        }
    }

    public static final class e extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f42094c = Integer.numberOfLeadingZeros(31);
        public static final e d = new e("CharMatcher.whitespace()");

        @Override // com.perfectcorp.thirdparty.com.google.common.base.d
        public final boolean c(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> f42094c) == c2;
        }
    }

    public static d a() {
        return new b();
    }

    public static d b() {
        return e.d;
    }

    public abstract boolean c(char c2);
}
