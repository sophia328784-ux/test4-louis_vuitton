package com.dynatrace.agent.storage.preference;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl$setEndPointInfo$2", f = "EndPointInfoDataSourceImpl.kt", l = {}, m = "invokeSuspend")
final class EndPointInfoDataSourceImpl$setEndPointInfo$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndPointInfo f26964c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndPointInfoDataSourceImpl$setEndPointInfo$2(EndPointInfo endPointInfo, Continuation continuation) {
        super(2, continuation);
        this.f26964c = endPointInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        EndPointInfoDataSourceImpl$setEndPointInfo$2 endPointInfoDataSourceImpl$setEndPointInfo$2 = new EndPointInfoDataSourceImpl$setEndPointInfo$2(this.f26964c, continuation);
        endPointInfoDataSourceImpl$setEndPointInfo$2.f26963b = obj;
        return endPointInfoDataSourceImpl$setEndPointInfo$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EndPointInfoDataSourceImpl$setEndPointInfo$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.f26963b;
        Preferences.Key key = EndPointInfoDataSourceImpl.Keys.f26947a;
        Preferences.Key key2 = EndPointInfoDataSourceImpl.Keys.f26947a;
        EndPointInfo endPointInfo = this.f26964c;
        mutablePreferences.e(key2, endPointInfo.f26894a);
        mutablePreferences.e(EndPointInfoDataSourceImpl.Keys.f26948b, endPointInfo.f26895b);
        return Unit.f71739a;
    }
}
