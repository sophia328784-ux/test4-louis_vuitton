package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import defpackage.kp;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"}, d2 = {"<anonymous>", "", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$unpairWatch$1", f = "WatchSettingsViewModel.kt", l = {38}, m = "invokeSuspend", v = 2)
final class WatchSettingsViewModel$unpairWatch$1 extends SuspendLambda implements Function2<Exception, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56778c;
    public final /* synthetic */ WatchSettingsViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchSettingsViewModel$unpairWatch$1(WatchSettingsViewModel watchSettingsViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = watchSettingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WatchSettingsViewModel$unpairWatch$1 watchSettingsViewModel$unpairWatch$1 = new WatchSettingsViewModel$unpairWatch$1(this.d, continuation);
        watchSettingsViewModel$unpairWatch$1.f56778c = obj;
        return watchSettingsViewModel$unpairWatch$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchSettingsViewModel$unpairWatch$1) create((Exception) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Exception exc = (Exception) this.f56778c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56777b;
        if (i2 == 0) {
            ResultKt.b(obj);
            kp kpVar = new kp(5, exc);
            this.f56778c = null;
            this.f56777b = 1;
            int i3 = WatchSettingsViewModel.l;
            if (this.d.zc(this, kpVar) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
