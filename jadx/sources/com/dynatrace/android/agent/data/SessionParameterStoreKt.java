package com.dynatrace.android.agent.data;

import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import defpackage.av0;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"agent.core_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SessionParameterStoreKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f27504a = {Reflection.f71922a.h(new PropertyReference1Impl(SessionParameterStoreKt.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PreferenceDataStoreSingletonDelegate f27505b = PreferenceDataStoreDelegateKt.a("dynatrace-legacy-preferences", new ReplaceFileCorruptionHandler(new av0(7)), null, null, 12);
}
