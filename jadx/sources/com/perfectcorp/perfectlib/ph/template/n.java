package com.perfectcorp.perfectlib.ph.template;

import android.content.ContentValues;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f41699b;

    public n(String str, Collection<String> collection) {
        this.f41698a = str;
        this.f41699b = collection != null ? ImmutableList.u(collection) : Collections.EMPTY_LIST;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("Id", this.f41698a);
        contentValues.put("ReferencedIds", TemplatePaths.d(this.f41699b));
        return contentValues;
    }

    public n(String str, String str2) {
        this(str, Collections.singletonList(str2));
    }
}
