package com.google.common.net;

import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.Immutable;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.o60;
import io.jsonwebtoken.JwtParser;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class InternetDomainName {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CharMatcher f33761c = CharMatcher.c(".。．｡");
    public static final Splitter d = Splitter.a(JwtParser.SEPARATOR_CHAR);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CharMatcher f33762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CharMatcher f33763f;
    public static final CharMatcher g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f33765b;

    static {
        CharMatcher charMatcherC = CharMatcher.c("-_");
        f33762e = charMatcherC;
        CharMatcher charMatcherE = CharMatcher.e('0', '9');
        f33763f = charMatcherE;
        g = charMatcherE.n(CharMatcher.e('a', 'z').n(CharMatcher.e('A', Matrix.MATRIX_TYPE_ZERO))).n(charMatcherC);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InternetDomainName(String str) {
        String strC = Ascii.c(f33761c.p(str));
        boolean z = true;
        strC = strC.endsWith(FileUtils.HIDDEN_PREFIX) ? o60.g(1, 0, strC) : strC;
        Preconditions.e(strC, "Domain name too long: '%s':", strC.length() <= 253);
        this.f33764a = strC;
        ImmutableList immutableListS = ImmutableList.s(d.c(strC));
        this.f33765b = immutableListS;
        Preconditions.e(strC, "Domain has too many parts: '%s'", immutableListS.size() <= 127);
        int size = immutableListS.size() - 1;
        if (!a((String) immutableListS.get(size), true)) {
            z = false;
            break;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (!a((String) immutableListS.get(i2), false)) {
                z = false;
                break;
            }
        }
        Preconditions.e(strC, "Not a valid domain name: '%s'", z);
    }

    public static boolean a(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (g.k(CharMatcher.d().m().o(str))) {
                char cCharAt = str.charAt(0);
                CharMatcher charMatcher = f33762e;
                if (!charMatcher.j(cCharAt) && !charMatcher.j(str.charAt(str.length() - 1)) && (!z || !f33763f.j(str.charAt(0)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.f33764a.equals(((InternetDomainName) obj).f33764a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f33764a.hashCode();
    }

    public final String toString() {
        return this.f33764a;
    }
}
