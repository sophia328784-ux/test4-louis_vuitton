package com.perfectcorp.perfectlib.ph.template;

import android.content.ContentValues;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f41608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f41609c;
    public final long d;

    public a(String str, Collection<String> collection, long j2, long j3) {
        this.f41607a = str;
        this.f41608b = collection != null ? ImmutableList.u(collection) : Collections.EMPTY_LIST;
        this.f41609c = j2;
        this.d = j3;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("Id", this.f41607a);
        contentValues.put("ReferencedIds", TemplatePaths.d(this.f41608b));
        contentValues.put("Size", Long.valueOf(this.f41609c));
        contentValues.put("LastModified", Long.valueOf(this.d));
        return contentValues;
    }

    public a(String str, String str2, long j2) {
        this(str, Collections.singletonList(str2), j2);
    }

    public a(String str, Collection<String> collection, long j2) {
        this(str, collection, 0L, j2);
    }

    public a(String str) {
        this(str, Collections.EMPTY_LIST, 0L);
    }
}
