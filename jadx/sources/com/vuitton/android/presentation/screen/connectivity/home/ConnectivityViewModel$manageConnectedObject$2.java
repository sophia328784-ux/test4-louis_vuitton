package com.vuitton.android.presentation.screen.connectivity.home;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$manageConnectedObject$2", f = "ConnectivityViewModel.kt", l = {104, 108}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$manageConnectedObject$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f56088c;
    public final /* synthetic */ ConnectivityViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$manageConnectedObject$2(ArrayList arrayList, ConnectivityViewModel connectivityViewModel, Continuation continuation) {
        super(2, continuation);
        this.f56088c = arrayList;
        this.d = connectivityViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$manageConnectedObject$2(this.f56088c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$manageConnectedObject$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
    
        if (r7.zc(r6, r1) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
    
        if (r7.zc(r6, r1) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f56087b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L18
            if (r1 == r3) goto L14
            if (r1 != r2) goto Ld
            goto L14
        Ld:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L14:
            kotlin.ResultKt.b(r7)
            goto L68
        L18:
            kotlin.ResultKt.b(r7)
            int r7 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel.o
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel r7 = r6.d
            r7.getClass()
            java.util.ArrayList r1 = new java.util.ArrayList
            com.linkplay.core.app.LPDeviceManager r4 = com.linkplay.core.app.LPDeviceManager.getInstance()
            java.util.List r4 = r4.getDevices()
            r4.getClass()
            java.util.ArrayList r4 = com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper.b(r4)
            r1.<init>(r4)
            boolean r4 = r1.isEmpty()
            java.util.ArrayList r5 = r6.f56088c
            if (r4 != 0) goto L46
            com.vuitton.android.presentation.screen.connectivity.TrunkSpeakerConnectivityItem r4 = new com.vuitton.android.presentation.screen.connectivity.TrunkSpeakerConnectivityItem
            r4.<init>(r1)
            r5.add(r4)
        L46:
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L5a
            bp r1 = new bp
            r1.<init>(r3)
            r6.f56087b = r3
            java.lang.Object r6 = r7.zc(r6, r1)
            if (r6 != r0) goto L68
            goto L67
        L5a:
            p6 r1 = new p6
            r1.<init>(r3, r5)
            r6.f56087b = r2
            java.lang.Object r6 = r7.zc(r6, r1)
            if (r6 != r0) goto L68
        L67:
            return r0
        L68:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$manageConnectedObject$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
