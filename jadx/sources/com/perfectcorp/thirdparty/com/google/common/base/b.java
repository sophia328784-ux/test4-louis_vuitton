package com.perfectcorp.thirdparty.com.google.common.base;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
abstract class b<T> implements Iterator<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f42086c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f42087a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f42088b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f42089c = 3;
        public static final int d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ int[] f42090e = {1, 2, 3, 4};

        public static void a() throws CloneNotSupportedException {
            f42090e.clone();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        d dVar;
        int i2 = this.f42085b;
        int i3 = a.d;
        Preconditions.i(i2 != i3);
        int i4 = c.f42091a[this.f42085b - 1];
        if (i4 == 1) {
            return true;
        }
        if (i4 != 2) {
            this.f42085b = i3;
            m.a aVar = (m.a) this;
            int i5 = aVar.f42103f;
            while (true) {
                int length = aVar.f42103f;
                if (length == -1) {
                    aVar.f42085b = a.f42089c;
                    string = null;
                    break;
                }
                o oVar = (o) aVar;
                d dVar2 = oVar.f42105h.f42104a;
                CharSequence charSequence = oVar.d;
                int length2 = charSequence.length();
                Preconditions.e(length, length2);
                while (true) {
                    if (length >= length2) {
                        length = -1;
                        break;
                    }
                    if (dVar2.c(charSequence.charAt(length))) {
                        break;
                    }
                    length++;
                }
                CharSequence charSequence2 = aVar.d;
                if (length == -1) {
                    length = charSequence2.length();
                    aVar.f42103f = -1;
                } else {
                    aVar.f42103f = length + 1;
                }
                int i6 = aVar.f42103f;
                if (i6 != i5) {
                    while (true) {
                        dVar = aVar.f42102e;
                        if (i5 >= length || !dVar.c(charSequence2.charAt(i5))) {
                            break;
                        }
                        i5++;
                    }
                    while (length > i5 && dVar.c(charSequence2.charAt(length - 1))) {
                        length--;
                    }
                    int i7 = aVar.g;
                    if (i7 == 1) {
                        length = charSequence2.length();
                        aVar.f42103f = -1;
                        while (length > i5 && dVar.c(charSequence2.charAt(length - 1))) {
                            length--;
                        }
                    } else {
                        aVar.g = i7 - 1;
                    }
                    string = charSequence2.subSequence(i5, length).toString();
                    break;
                }
                int i8 = i6 + 1;
                aVar.f42103f = i8;
                if (i8 > charSequence2.length()) {
                    aVar.f42103f = -1;
                }
            }
            this.f42086c = string;
            if (this.f42085b != a.f42089c) {
                this.f42085b = a.f42087a;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f42085b = a.f42088b;
        String str = this.f42086c;
        this.f42086c = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
