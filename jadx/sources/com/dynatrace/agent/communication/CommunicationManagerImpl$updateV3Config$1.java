package com.dynatrace.agent.communication;

import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$updateV3Config$1", f = "CommunicationManagerImpl.kt", l = {115}, m = "invokeSuspend")
final class CommunicationManagerImpl$updateV3Config$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26553c;
    public final /* synthetic */ ServerConfiguration d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$updateV3Config$1(CommunicationManagerImpl communicationManagerImpl, ServerConfiguration serverConfiguration, Continuation continuation) {
        super(2, continuation);
        this.f26553c = communicationManagerImpl;
        this.d = serverConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CommunicationManagerImpl$updateV3Config$1(this.f26553c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CommunicationManagerImpl$updateV3Config$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26552b;
        ServerConfiguration serverConfiguration = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            ServerDataMaintainer serverDataMaintainer = this.f26553c.l;
            if (serverDataMaintainer == null) {
                Intrinsics.h("serverDataMaintainer");
                throw null;
            }
            this.f26552b = 1;
            Object objA = serverDataMaintainer.a(serverConfiguration, false, this);
            if (objA != coroutineSingletons) {
                objA = Unit.f71739a;
            }
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        Utility.b("received external config v3 update: " + serverConfiguration);
        return Unit.f71739a;
    }
}
