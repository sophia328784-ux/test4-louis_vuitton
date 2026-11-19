package com.vuitton.android.data.datasource.analytic;

import android.content.SharedPreferences;
import dagger.Lazy;
import java.util.UUID;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource$getOrCreate$2", f = "DeviceIdLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class DeviceIdLocalDataSource$getOrCreate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DeviceIdLocalDataSource f43765b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceIdLocalDataSource$getOrCreate$2(DeviceIdLocalDataSource deviceIdLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43765b = deviceIdLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeviceIdLocalDataSource$getOrCreate$2(this.f43765b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeviceIdLocalDataSource$getOrCreate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Lazy lazy = this.f43765b.f43763a;
        String string = ((SharedPreferences) lazy.get()).getString("lvapp_device_id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        Object obj2 = lazy.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
        editorEdit.putString("lvapp_device_id", string2);
        editorEdit.commit();
        string2.getClass();
        return string2;
    }
}
