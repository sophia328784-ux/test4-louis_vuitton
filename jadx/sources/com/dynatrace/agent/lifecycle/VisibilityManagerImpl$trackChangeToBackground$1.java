package com.dynatrace.agent.lifecycle;

import com.dynatrace.agent.events.enrichment.JsonObjectExtensionsKt;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.NavigationEvent;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.lifecycle.VisibilityManagerImpl$trackChangeToBackground$1", f = "VisibilityManagerImpl.kt", l = {}, m = "invokeSuspend")
final class VisibilityManagerImpl$trackChangeToBackground$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VisibilityManagerImpl f26853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JSONObject f26854c;
    public final /* synthetic */ SessionInformationMetrics d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f26855e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisibilityManagerImpl$trackChangeToBackground$1(VisibilityManagerImpl visibilityManagerImpl, JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics, long j2, Continuation continuation) {
        super(1, continuation);
        this.f26853b = visibilityManagerImpl;
        this.f26854c = jSONObject;
        this.d = sessionInformationMetrics;
        this.f26855e = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new VisibilityManagerImpl$trackChangeToBackground$1(this.f26853b, this.f26854c, this.d, this.f26855e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((VisibilityManagerImpl$trackChangeToBackground$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        JSONObject jSONObjectA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f26853b.f26849f.a() != null) {
            this.f26853b.f26849f.c();
        }
        NavigationEvent navigationEvent = (NavigationEvent) this.f26853b.f26848e.f27216b.get();
        if (navigationEvent != null) {
            navigationEvent.g = true;
            jSONObjectA = navigationEvent.a();
        } else {
            jSONObjectA = null;
        }
        JSONObject jSONObject = this.f26854c;
        if (jSONObjectA != null) {
            JsonObjectExtensionsKt.f(jSONObject, jSONObjectA, EmptyList.f71768b);
        } else {
            jSONObject.put("start_time", this.f26855e);
            jSONObject.put("duration", 0);
        }
        this.f26853b.f26846b.f(jSONObject, this.d);
        UserActionController userActionController = this.f26853b.g;
        if (userActionController.f27077c.getF27010b().f27048h) {
            ReentrantLock reentrantLock = userActionController.f27079f;
            reentrantLock.lock();
            try {
                userActionController.f27081i.b();
            } finally {
                reentrantLock.unlock();
            }
        } else {
            Utility.b("onBackground: uaEnable=false, ignoring");
        }
        return Unit.f71739a;
    }
}
