package com.kakao.sdk.common.util;

import android.content.SharedPreferences;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/common/util/SharedPrefsWrapper;", "Lcom/kakao/sdk/common/util/PersistentKVStore;", "Landroid/content/SharedPreferences;", "appCache", "<init>", "(Landroid/content/SharedPreferences;)V", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SharedPrefsWrapper implements PersistentKVStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f35892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences.Editor f35893b;

    public SharedPrefsWrapper(SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        this.f35892a = sharedPreferences;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.getClass();
        this.f35893b = editorEdit;
    }

    public final SharedPrefsWrapper a() {
        this.f35893b.commit();
        return this;
    }

    @Override // com.kakao.sdk.common.util.PersistentKVStore
    public final String getString(String str) {
        return this.f35892a.getString(str, null);
    }

    @Override // com.kakao.sdk.common.util.PersistentKVStore
    public final SharedPrefsWrapper putString(String str, String str2) {
        str2.getClass();
        this.f35893b.putString(str, str2);
        return this;
    }
}
