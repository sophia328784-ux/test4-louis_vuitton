package com.google.common.base;

import io.jsonwebtoken.JwtParser;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CharMatcher implements Predicate<Character> {

    public static final class And extends CharMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CharMatcher f33460b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CharMatcher f33461c;

        public And(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f33460b = charMatcher;
            charMatcher2.getClass();
            this.f33461c = charMatcher2;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return j(((Character) obj).charValue());
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return this.f33460b.j(c2) && this.f33461c.j(c2);
        }

        public final String toString() {
            return this.f33460b + ".and(" + this.f33461c + ")";
        }
    }

    public static final class Any extends NamedFastMatcher {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CharMatcher f33462c = new Any("CharMatcher.any()");

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            charMatcher.getClass();
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public final int f(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public final int g(CharSequence charSequence, int i2) {
            int length = charSequence.length();
            Preconditions.n(i2, length);
            if (i2 == length) {
                return -1;
            }
            return i2;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean k(CharSequence charSequence) {
            charSequence.getClass();
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean l(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher m() {
            return None.f33474c;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher n(CharMatcher charMatcher) {
            charMatcher.getClass();
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public final String o(CharSequence charSequence) {
            throw null;
        }

        @Override // com.google.common.base.CharMatcher
        public final String p(String str) {
            char[] cArr = new char[str.length()];
            Arrays.fill(cArr, JwtParser.SEPARATOR_CHAR);
            return new String(cArr);
        }
    }

    public static final class AnyOf extends CharMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char[] f33463b;

        public AnyOf(String str) {
            char[] charArray = str.toString().toCharArray();
            this.f33463b = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return j(((Character) obj).charValue());
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return Arrays.binarySearch(this.f33463b, c2) >= 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c2 : this.f33463b) {
                sb.append(CharMatcher.a(c2));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    public static final class Ascii extends NamedFastMatcher {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CharMatcher f33464c = new Ascii("CharMatcher.ascii()");

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return c2 <= 127;
        }
    }

    public static abstract class FastMatcher extends CharMatcher {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return j(((Character) obj).charValue());
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher m() {
            return new NegatedFastMatcher(this);
        }
    }

    public static final class InRange extends FastMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char f33465b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final char f33466c;

        public InRange(char c2, char c3) {
            Preconditions.g(c3 >= c2);
            this.f33465b = c2;
            this.f33466c = c3;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return this.f33465b <= c2 && c2 <= this.f33466c;
        }

        public final String toString() {
            return "CharMatcher.inRange('" + CharMatcher.a(this.f33465b) + "', '" + CharMatcher.a(this.f33466c) + "')";
        }
    }

    public static final class Is extends FastMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char f33467b;

        public Is(char c2) {
            this.f33467b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            return charMatcher.j(this.f33467b) ? this : None.f33474c;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return c2 == this.f33467b;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher m() {
            return new IsNot(this.f33467b);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher n(CharMatcher charMatcher) {
            return charMatcher.j(this.f33467b) ? charMatcher : new Or(this, charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public final String p(String str) {
            return str.toString().replace(this.f33467b, JwtParser.SEPARATOR_CHAR);
        }

        public final String toString() {
            return "CharMatcher.is('" + CharMatcher.a(this.f33467b) + "')";
        }
    }

    public static final class IsEither extends FastMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char f33468b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final char f33469c;

        public IsEither(char c2, char c3) {
            this.f33468b = c2;
            this.f33469c = c3;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return c2 == this.f33468b || c2 == this.f33469c;
        }

        public final String toString() {
            return "CharMatcher.anyOf(\"" + CharMatcher.a(this.f33468b) + CharMatcher.a(this.f33469c) + "\")";
        }
    }

    public static final class IsNot extends FastMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char f33470b;

        public IsNot(char c2) {
            this.f33470b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            return charMatcher.j(this.f33470b) ? new And(this, charMatcher) : charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return c2 != this.f33470b;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher m() {
            return new Is(this.f33470b);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher n(CharMatcher charMatcher) {
            return charMatcher.j(this.f33470b) ? Any.f33462c : this;
        }

        public final String toString() {
            return "CharMatcher.isNot('" + CharMatcher.a(this.f33470b) + "')";
        }
    }

    public static final class JavaIsoControl extends NamedFastMatcher {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CharMatcher f33471c = new JavaIsoControl("CharMatcher.javaIsoControl()");

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            if (c2 > 31) {
                return c2 >= 127 && c2 <= 159;
            }
            return true;
        }
    }

    public static abstract class NamedFastMatcher extends FastMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f33472b;

        public NamedFastMatcher(String str) {
            this.f33472b = str;
        }

        public final String toString() {
            return this.f33472b;
        }
    }

    public static class Negated extends CharMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CharMatcher f33473b;

        public Negated(CharMatcher charMatcher) {
            this.f33473b = charMatcher;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return j(((Character) obj).charValue());
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return !this.f33473b.j(c2);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean k(CharSequence charSequence) {
            return this.f33473b.l(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean l(CharSequence charSequence) {
            return this.f33473b.k(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher m() {
            return this.f33473b;
        }

        public final String toString() {
            return this.f33473b + ".negate()";
        }
    }

    public static class NegatedFastMatcher extends Negated {
    }

    public static final class None extends NamedFastMatcher {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CharMatcher f33474c = new None("CharMatcher.none()");

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            charMatcher.getClass();
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public final int f(CharSequence charSequence) {
            charSequence.getClass();
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public final int g(CharSequence charSequence, int i2) {
            Preconditions.n(i2, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean k(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean l(CharSequence charSequence) {
            charSequence.getClass();
            return true;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher m() {
            return Any.f33462c;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher n(CharMatcher charMatcher) {
            charMatcher.getClass();
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public final String o(CharSequence charSequence) {
            throw null;
        }

        @Override // com.google.common.base.CharMatcher
        public final String p(String str) {
            return str.toString();
        }
    }

    public static final class Or extends CharMatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CharMatcher f33475b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CharMatcher f33476c;

        public Or(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f33475b = charMatcher;
            charMatcher2.getClass();
            this.f33476c = charMatcher2;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return j(((Character) obj).charValue());
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean j(char c2) {
            return this.f33475b.j(c2) || this.f33476c.j(c2);
        }

        public final String toString() {
            return this.f33475b + ".or(" + this.f33476c + ")";
        }
    }

    public static String a(char c2) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static CharMatcher c(String str) {
        int length = str.length();
        if (length == 0) {
            return None.f33474c;
        }
        if (length != 1) {
            return length != 2 ? new AnyOf(str) : new IsEither(str.charAt(0), str.charAt(1));
        }
        return new Is(str.charAt(0));
    }

    public static CharMatcher d() {
        return Ascii.f33464c;
    }

    public static CharMatcher e(char c2, char c3) {
        return new InRange(c2, c3);
    }

    public static CharMatcher h() {
        return new IsNot(' ');
    }

    public static CharMatcher i() {
        return JavaIsoControl.f33471c;
    }

    public CharMatcher b(CharMatcher charMatcher) {
        return new And(this, charMatcher);
    }

    public int f(CharSequence charSequence) {
        return g(charSequence, 0);
    }

    public int g(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        Preconditions.n(i2, length);
        while (i2 < length) {
            if (j(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public abstract boolean j(char c2);

    public boolean k(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!j(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean l(CharSequence charSequence) {
        return f(charSequence) == -1;
    }

    public CharMatcher m() {
        return new Negated(this);
    }

    public CharMatcher n(CharMatcher charMatcher) {
        return new Or(this, charMatcher);
    }

    public String o(CharSequence charSequence) {
        String string = ((String) charSequence).toString();
        int iF = f(string);
        if (iF == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        int i2 = 1;
        while (true) {
            iF++;
            while (iF != charArray.length) {
                if (j(charArray[iF])) {
                    i2++;
                } else {
                    charArray[iF - i2] = charArray[iF];
                    iF++;
                }
            }
            return new String(charArray, 0, iF - i2);
        }
    }

    public String p(String str) {
        String string = str.toString();
        int iF = f(string);
        if (iF == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        charArray[iF] = JwtParser.SEPARATOR_CHAR;
        while (true) {
            iF++;
            if (iF >= charArray.length) {
                return new String(charArray);
            }
            if (j(charArray[iF])) {
                charArray[iF] = JwtParser.SEPARATOR_CHAR;
            }
        }
    }
}
