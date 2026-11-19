package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1", f = "ConfigsVersionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConfigsVersionLocalDataSource f44030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfigsVersion f44031c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1(ConfigsVersionLocalDataSource configsVersionLocalDataSource, ConfigsVersion configsVersion, Continuation continuation) {
        super(2, continuation);
        this.f44030b = configsVersionLocalDataSource;
        this.f44031c = configsVersion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1(this.f44030b, this.f44031c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ConfigsVersionLocalDataSource configsVersionLocalDataSource = this.f44030b;
        String strC = configsVersionLocalDataSource.f44021c.c(ConfigsVersion.INSTANCE.serializer(), this.f44031c);
        Object obj2 = configsVersionLocalDataSource.f44020b.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
        editorEdit.putString("configs_version", strC);
        editorEdit.commit();
        return Unit.f71739a;
    }
}
