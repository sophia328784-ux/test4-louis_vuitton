package com.google.i18n.phonenumbers.internal;

import defpackage.pq0;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class RegexCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LRUCache f35653a;

    public static class LRUCache<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f35654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f35655b;

        public LRUCache(int i2) {
            this.f35655b = i2;
            this.f35654a = new LinkedHashMap<K, V>(pq0.c(i2, 4, 3, 1)) { // from class: com.google.i18n.phonenumbers.internal.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                public final boolean removeEldestEntry(Map.Entry entry) {
                    return size() > LRUCache.this.f35655b;
                }
            };
        }
    }

    public RegexCache(int i2) {
        this.f35653a = new LRUCache(i2);
    }

    public final Pattern a(String str) {
        Object obj;
        LRUCache lRUCache = this.f35653a;
        synchronized (lRUCache) {
            obj = lRUCache.f35654a.get(str);
        }
        Pattern pattern = (Pattern) obj;
        if (pattern != null) {
            return pattern;
        }
        Pattern patternCompile = Pattern.compile(str);
        LRUCache lRUCache2 = this.f35653a;
        synchronized (lRUCache2) {
            lRUCache2.f35654a.put(str, patternCompile);
        }
        return patternCompile;
    }
}
