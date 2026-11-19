package com.google.common.base;

import defpackage.md;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Joiner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33478a;

    public static final class MapJoiner {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Joiner f33479a;

        public MapJoiner(Joiner joiner) {
            this.f33479a = joiner;
        }

        public final void a(StringBuilder sb, Iterator it) {
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                sb.append(Joiner.c(entry.getKey()));
                sb.append("=");
                sb.append(Joiner.c(entry.getValue()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.f33479a.f33478a);
                    Map.Entry entry2 = (Map.Entry) it.next();
                    sb.append(Joiner.c(entry2.getKey()));
                    sb.append("=");
                    sb.append(Joiner.c(entry2.getValue()));
                }
            }
        }
    }

    public Joiner(String str) {
        str.getClass();
        this.f33478a = str;
    }

    public static CharSequence c(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final void a(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                sb.append(c(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.f33478a);
                    sb.append(c(it.next()));
                }
            }
        } catch (IOException e2) {
            md.h(e2);
        }
    }

    public final String b(List list) {
        Iterator it = list.iterator();
        StringBuilder sb = new StringBuilder();
        a(sb, it);
        return sb.toString();
    }
}
