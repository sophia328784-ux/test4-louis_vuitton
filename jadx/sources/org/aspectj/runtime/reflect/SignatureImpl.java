package org.aspectj.runtime.reflect;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import org.aspectj.lang.Signature;

/* JADX INFO: loaded from: classes3.dex */
abstract class SignatureImpl implements Signature {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f77570h = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f77572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f77573c;
    public Class d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CacheImpl f77574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f77575f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f77571a = -1;
    public ClassLoader g = null;

    public interface Cache {
    }

    public static final class CacheImpl implements Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SoftReference f77576a = new SoftReference(new String[3]);
    }

    public SignatureImpl(String str) {
        this.f77575f = str;
    }

    public abstract String a();

    public final String b(int i2) {
        String str = this.f77575f;
        int iIndexOf = str.indexOf(45);
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            i3 = iIndexOf + 1;
            iIndexOf = str.indexOf(45, i3);
            i2 = i4;
        }
        if (iIndexOf == -1) {
            iIndexOf = str.length();
        }
        return str.substring(i3, iIndexOf);
    }

    public final Class[] c(int i2) {
        StringTokenizer stringTokenizer = new StringTokenizer(b(i2), ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i3 = 0; i3 < iCountTokens; i3++) {
            String strNextToken = stringTokenizer.nextToken();
            if (this.g == null) {
                this.g = getClass().getClassLoader();
            }
            clsArr[i3] = Factory.a(this.g, strNextToken);
        }
        return clsArr;
    }

    public final String d() {
        StringMaker stringMaker = StringMaker.f77579e;
        String strA = null;
        if (f77570h) {
            CacheImpl cacheImpl = this.f77574e;
            if (cacheImpl == null) {
                try {
                    this.f77574e = new CacheImpl();
                } catch (Throwable unused) {
                    f77570h = false;
                }
            } else {
                String[] strArr = (String[]) cacheImpl.f77576a.get();
                if (strArr != null) {
                    strA = strArr[0];
                }
            }
        }
        if (strA == null) {
            strA = a();
        }
        if (f77570h) {
            CacheImpl cacheImpl2 = this.f77574e;
            String[] strArr2 = (String[]) cacheImpl2.f77576a.get();
            if (strArr2 == null) {
                strArr2 = new String[3];
                cacheImpl2.f77576a = new SoftReference(strArr2);
            }
            strArr2[0] = strA;
        }
        return strA;
    }

    public final String toString() {
        StringMaker stringMaker = StringMaker.f77579e;
        return d();
    }
}
