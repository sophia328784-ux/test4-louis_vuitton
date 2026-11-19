package com.perfectcorp.perfectlib;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class VtoObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40008c;

    public interface Callback<T extends VtoObject> {
        void onFailure(Throwable th);

        void onSuccess(List<T> list);
    }

    public VtoObject(String str, String str2, String str3) {
        Objects.requireNonNull(str);
        this.f40006a = str;
        Objects.requireNonNull(str2);
        this.f40007b = str2;
        Objects.requireNonNull(str3);
        this.f40008c = str3;
    }

    public final String getGuid() {
        return this.f40006a;
    }

    public final String getName() {
        return this.f40007b;
    }

    public final String getThumbnailUrl() {
        return this.f40008c;
    }
}
