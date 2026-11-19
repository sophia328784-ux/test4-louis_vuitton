package com.dynatrace.agent.storage.preference;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
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
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource$setVersion$2", f = "OneAgentConfigurationDiskDataSource.kt", l = {}, m = "invokeSuspend")
final class OneAgentConfigurationDiskDataSource$setVersion$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f27007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f27008c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentConfigurationDiskDataSource$setVersion$2(String str, Continuation continuation) {
        super(2, continuation);
        this.f27008c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OneAgentConfigurationDiskDataSource$setVersion$2 oneAgentConfigurationDiskDataSource$setVersion$2 = new OneAgentConfigurationDiskDataSource$setVersion$2(this.f27008c, continuation);
        oneAgentConfigurationDiskDataSource$setVersion$2.f27007b = obj;
        return oneAgentConfigurationDiskDataSource$setVersion$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentConfigurationDiskDataSource$setVersion$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.f27007b;
        Preferences.Key key = OneAgentConfigurationDiskDataSource.Keys.f26997a;
        mutablePreferences.e(OneAgentConfigurationDiskDataSource.Keys.f26997a, this.f27008c);
        return Unit.f71739a;
    }
}
