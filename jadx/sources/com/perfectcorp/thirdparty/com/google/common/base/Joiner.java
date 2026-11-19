package com.perfectcorp.thirdparty.com.google.common.base;

import defpackage.md;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class Joiner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f42069a;

    public Joiner(String str) {
        str.getClass();
        this.f42069a = str;
    }

    public CharSequence a(Object obj) {
        obj.getClass();
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final String b(Iterable iterable) {
        Iterator it = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                while (true) {
                    sb.append(a(next));
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) this.f42069a);
                    next = it.next();
                }
            }
            return sb.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    public Joiner c() {
        return new f(this, this);
    }

    public Joiner(Joiner joiner) {
        this.f42069a = joiner.f42069a;
    }
}
