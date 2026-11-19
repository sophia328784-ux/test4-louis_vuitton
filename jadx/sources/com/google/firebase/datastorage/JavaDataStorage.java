package com.google.firebase.datastorage;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.Preferences;
import defpackage.l00;
import defpackage.x20;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/datastorage/JavaDataStorage;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "name", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class JavaDataStorage {
    public static final /* synthetic */ KProperty[] d = {Reflection.f71922a.i(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadLocal f35073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataStore f35074c;

    public JavaDataStorage(Context context, String str) {
        context.getClass();
        str.getClass();
        this.f35072a = str;
        this.f35073b = new ThreadLocal();
        this.f35074c = (DataStore) PreferenceDataStoreDelegateKt.a(str, new ReplaceFileCorruptionHandler(new x20(this)), new l00(this, 9), null, 8).b(context, d[0]);
    }

    public final void a(Function1 function1) {
    }

    public final Map b() {
        return (Map) BuildersKt.e(EmptyCoroutineContext.f71840b, new JavaDataStorage$getAllSync$1(this, null));
    }

    public final Object c(Preferences.Key key, Long l) {
        key.getClass();
        return BuildersKt.e(EmptyCoroutineContext.f71840b, new JavaDataStorage$getSync$1(this, key, l, null));
    }

    public final void d(Preferences.Key key, Long l) {
        key.getClass();
    }
}
