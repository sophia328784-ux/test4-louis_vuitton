package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import defpackage.md;
import defpackage.tf;
import defpackage.wo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiViewModelImpl$checkDeviceAvailability$1", f = "ConnectToWifiViewModelImpl.kt", l = {31}, m = "invokeSuspend", v = 2)
final class ConnectToWifiViewModelImpl$checkDeviceAvailability$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f56629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56630c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f56631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ wo f56632f;
    public final /* synthetic */ tf g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectToWifiViewModelImpl$checkDeviceAvailability$1(String str, wo woVar, tf tfVar, Continuation continuation) {
        super(2, continuation);
        this.f56631e = str;
        this.f56632f = woVar;
        this.g = tfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConnectToWifiViewModelImpl$checkDeviceAvailability$1 connectToWifiViewModelImpl$checkDeviceAvailability$1 = new ConnectToWifiViewModelImpl$checkDeviceAvailability$1(this.f56631e, this.f56632f, this.g, continuation);
        connectToWifiViewModelImpl$checkDeviceAvailability$1.d = obj;
        return connectToWifiViewModelImpl$checkDeviceAvailability$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectToWifiViewModelImpl$checkDeviceAvailability$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long jCurrentTimeMillis;
        CoroutineScope coroutineScope = (CoroutineScope) this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56630c;
        if (i2 == 0) {
            ResultKt.b(obj);
            jCurrentTimeMillis = System.currentTimeMillis();
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            jCurrentTimeMillis = this.f56629b;
            ResultKt.b(obj);
        }
        while (CoroutineScopeKt.e(coroutineScope)) {
            LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.f56631e);
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (lPDeviceDeviceForID != null && jCurrentTimeMillis2 - jCurrentTimeMillis > 130000) {
                this.f56632f.mo47invoke();
                return Unit.f71739a;
            }
            this.d = coroutineScope;
            this.f56629b = jCurrentTimeMillis;
            this.f56630c = 1;
            if (DelayKt.b(1000L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.g.mo47invoke();
        return Unit.f71739a;
    }
}
