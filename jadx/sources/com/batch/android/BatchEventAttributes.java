package com.batch.android;

import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BatchEventAttributes {
    public static final String LABEL_KEY = "$label";
    public static final String TAGS_KEY = "$tags";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, com.batch.android.o.f> f22752a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set<String> f22753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22754c;

    private BatchEventAttributes a(String str, com.batch.android.o.f fVar) {
        this.f22752a.put(str.toLowerCase(Locale.US), fVar);
        return this;
    }

    public Map<String, com.batch.android.o.f> getAttributes() {
        return this.f22752a;
    }

    public String getLabel() {
        return this.f22754c;
    }

    public Set<String> getTags() {
        return this.f22753b;
    }

    public BatchEventAttributes put(String str, String str2) {
        if (!LABEL_KEY.equals(str)) {
            return a(str, new com.batch.android.o.f(str2, com.batch.android.l1.a.STRING));
        }
        this.f22754c = str2;
        return this;
    }

    public BatchEventAttributes putObjectList(String str, List<BatchEventAttributes> list) {
        return a(str, new com.batch.android.o.f(new ArrayList(list), com.batch.android.l1.a.OBJECT_ARRAY));
    }

    public BatchEventAttributes putStringList(String str, List<String> list) {
        if (!TAGS_KEY.equals(str)) {
            return a(str, new com.batch.android.o.f(new ArrayList(list), com.batch.android.l1.a.STRING_ARRAY));
        }
        this.f22753b = new LinkedHashSet(list);
        return this;
    }

    public List<String> validateEventAttributes() {
        return com.batch.android.o.d.a(this);
    }

    public BatchEventAttributes put(String str, URI uri) {
        return a(str, new com.batch.android.o.f(uri, com.batch.android.l1.a.URL));
    }

    public BatchEventAttributes put(String str, float f2) {
        return a(str, new com.batch.android.o.f(Float.valueOf(f2), com.batch.android.l1.a.DOUBLE));
    }

    public BatchEventAttributes put(String str, double d) {
        return a(str, new com.batch.android.o.f(Double.valueOf(d), com.batch.android.l1.a.DOUBLE));
    }

    public BatchEventAttributes put(String str, int i2) {
        return a(str, new com.batch.android.o.f(Integer.valueOf(i2), com.batch.android.l1.a.LONG));
    }

    public BatchEventAttributes put(String str, long j2) {
        return a(str, new com.batch.android.o.f(Long.valueOf(j2), com.batch.android.l1.a.LONG));
    }

    public BatchEventAttributes put(String str, boolean z) {
        return a(str, new com.batch.android.o.f(Boolean.valueOf(z), com.batch.android.l1.a.BOOL));
    }

    public BatchEventAttributes put(String str, Date date) {
        return a(str, new com.batch.android.o.f(Long.valueOf(date.getTime()), com.batch.android.l1.a.DATE));
    }

    public BatchEventAttributes put(String str, BatchEventAttributes batchEventAttributes) {
        return a(str, new com.batch.android.o.f(batchEventAttributes, com.batch.android.l1.a.OBJECT));
    }
}
