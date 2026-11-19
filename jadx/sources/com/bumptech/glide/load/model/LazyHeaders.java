package com.bumptech.glide.load.model;

import android.text.TextUtils;
import defpackage.n00;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyHeaders implements Headers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f24662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Map f24663c;

    public static final class Builder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Map f24664b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map f24665a = f24664b;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i2 = 0; i2 < length; i2++) {
                    char cCharAt = property.charAt(i2);
                    if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                        sb.append(cCharAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                map.put("User-Agent", Collections.singletonList(new StringHeaderFactory(property)));
            }
            f24664b = Collections.unmodifiableMap(map);
        }
    }

    public static final class StringHeaderFactory implements LazyHeaderFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f24666a;

        public StringHeaderFactory(String str) {
            this.f24666a = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public final String a() {
            return this.f24666a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof StringHeaderFactory) {
                return this.f24666a.equals(((StringHeaderFactory) obj).f24666a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f24666a.hashCode();
        }

        public final String toString() {
            return n00.r(this.f24666a, "'}", new StringBuilder("StringHeaderFactory{value='"));
        }
    }

    public LazyHeaders(Map map) {
        this.f24662b = Collections.unmodifiableMap(map);
    }

    @Override // com.bumptech.glide.load.model.Headers
    public final Map a() {
        if (this.f24663c == null) {
            synchronized (this) {
                try {
                    if (this.f24663c == null) {
                        this.f24663c = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f24663c;
    }

    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f24662b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                String strA = ((LazyHeaderFactory) list.get(i2)).a();
                if (!TextUtils.isEmpty(strA)) {
                    sb.append(strA);
                    if (i2 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put((String) entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LazyHeaders) {
            return this.f24662b.equals(((LazyHeaders) obj).f24662b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f24662b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f24662b + '}';
    }
}
