package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$2$1", f = "AppLinkLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AppLinkLocalDataSource$upsertAppLinkExclusions$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppLinkLocalDataSource f44016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f44017c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkLocalDataSource$upsertAppLinkExclusions$2$1(AppLinkLocalDataSource appLinkLocalDataSource, List list, Continuation continuation) {
        super(2, continuation);
        this.f44016b = appLinkLocalDataSource;
        this.f44017c = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppLinkLocalDataSource$upsertAppLinkExclusions$2$1(this.f44016b, this.f44017c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppLinkLocalDataSource$upsertAppLinkExclusions$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AppLinkLocalDataSource appLinkLocalDataSource = this.f44016b;
        Json json = appLinkLocalDataSource.f43994c;
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        String strC = json.c(new ArrayListSerializer(StringSerializer.f75684a), this.f44017c);
        Object obj2 = appLinkLocalDataSource.f43993b.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
        editorEdit.putString("app_links_exclusion_list", strC);
        editorEdit.commit();
        return Unit.f71739a;
    }
}
