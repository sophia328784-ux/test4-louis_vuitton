package com.dynatrace.agent;

import com.dynatrace.agent.metrics.SessionInformationMetrics;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1", f = "OneAgentStartupEventDispatcher.kt", l = {91}, m = "invokeSuspend")
final class OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26476c;
    public final /* synthetic */ OneAgentStartupEventDispatcher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SessionInformationMetrics f26477e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1(OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher, SessionInformationMetrics sessionInformationMetrics, Continuation continuation) {
        super(2, continuation);
        this.d = oneAgentStartupEventDispatcher;
        this.f26477e = sessionInformationMetrics;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1 oneAgentStartupEventDispatcher$dispatchNativeEvent$1$1 = new OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1(this.d, this.f26477e, continuation);
        oneAgentStartupEventDispatcher$dispatchNativeEvent$1$1.f26476c = obj;
        return oneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26475b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.f26476c;
                long j2 = this.d.f26468a;
                this.f26476c = coroutineScope2;
                this.f26475b = 1;
                if (DelayKt.b(j2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                coroutineScope = coroutineScope2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                coroutineScope = (CoroutineScope) this.f26476c;
                ResultKt.b(obj);
            }
            OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher = this.d;
            SessionInformationMetrics sessionInformationMetrics = this.f26477e;
            synchronized (oneAgentStartupEventDispatcher) {
                try {
                    JSONObject jSONObject = oneAgentStartupEventDispatcher.f26472f;
                    if (jSONObject != null && CoroutineScopeKt.e(coroutineScope)) {
                        if (sessionInformationMetrics.g) {
                            BuildersKt.c(oneAgentStartupEventDispatcher.f26469b, null, null, new OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1(oneAgentStartupEventDispatcher, jSONObject, sessionInformationMetrics, null), 3);
                        } else {
                            Utility.b("startup shouldn't be collected, DataCollectionLevel is Off");
                        }
                    }
                    oneAgentStartupEventDispatcher.f26472f = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
