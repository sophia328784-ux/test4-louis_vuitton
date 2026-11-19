package com.dynatrace.agent.storage.di;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.room.Room;
import com.dynatrace.agent.storage.db.OneAgentDatabase;
import defpackage.l01;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/di/StorageModule;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lkotlinx/coroutines/CoroutineScope;", "externalScope", "<init>", "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StorageModule {
    public static final /* synthetic */ KProperty[] d = {Reflection.f71922a.i(new PropertyReference2Impl(StorageModule.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f26927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PreferenceDataStoreSingletonDelegate f26928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OneAgentDatabase f26929c;

    public StorageModule(Context context, CoroutineScope coroutineScope) {
        context.getClass();
        coroutineScope.getClass();
        this.f26927a = context;
        this.f26928b = PreferenceDataStoreDelegateKt.a("dynatrace-preferences", new ReplaceFileCorruptionHandler(new l01(8)), null, coroutineScope, 4);
        this.f26929c = (OneAgentDatabase) Room.a(context, OneAgentDatabase.class, "dynatrace-database").b();
    }

    public final DataStore a(Context context) {
        return (DataStore) this.f26928b.b(context, d[0]);
    }
}
