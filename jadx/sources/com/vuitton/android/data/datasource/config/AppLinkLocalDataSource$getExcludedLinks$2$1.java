package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$getExcludedLinks$2$1", f = "AppLinkLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AppLinkLocalDataSource$getExcludedLinks$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends String>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppLinkLocalDataSource f44006b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkLocalDataSource$getExcludedLinks$2$1(AppLinkLocalDataSource appLinkLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44006b = appLinkLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppLinkLocalDataSource$getExcludedLinks$2$1(this.f44006b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppLinkLocalDataSource$getExcludedLinks$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AppLinkLocalDataSource appLinkLocalDataSource = this.f44006b;
        String string = ((SharedPreferences) appLinkLocalDataSource.f43993b.get()).getString("app_links_exclusion_list", null);
        if (string == null) {
            return EmptyList.f71768b;
        }
        Json json = appLinkLocalDataSource.f43994c;
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        return (List) json.b(new ArrayListSerializer(StringSerializer.f75684a), string);
    }
}
