package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.vuitton.android.data.analytics.HitTypeAnalyticMapperKt;
import com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SensorsDataAnalyticsRepositoryImpl$send$1", f = "SensorsDataAnalyticsRepositoryImpl.kt", l = {116}, m = "invokeSuspend", v = 2)
final class SensorsDataAnalyticsRepositoryImpl$send$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SensorsDataAnalyticsRepositoryImpl f48018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Hit f48019c;
    public Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SensorsDataAnalyticsRepositoryImpl f48021f;
    public final /* synthetic */ InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Hit f48022h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SensorsDataAnalyticsRepositoryImpl$send$1(SensorsDataAnalyticsRepositoryImpl sensorsDataAnalyticsRepositoryImpl, InAppDispatch inAppDispatch, Hit hit, Continuation continuation) {
        super(2, continuation);
        this.f48021f = sensorsDataAnalyticsRepositoryImpl;
        this.g = inAppDispatch;
        this.f48022h = hit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SensorsDataAnalyticsRepositoryImpl$send$1(this.f48021f, this.g, this.f48022h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SensorsDataAnalyticsRepositoryImpl$send$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SensorsDataAnalyticsRepositoryImpl sensorsDataAnalyticsRepositoryImpl;
        Map map;
        Hit hit;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48020e;
        if (i2 == 0) {
            ResultKt.b(obj);
            SensorsDataAnalyticsRepositoryImpl sensorsDataAnalyticsRepositoryImpl2 = this.f48021f;
            AnalyticsHitBuilder analyticsHitBuilder = sensorsDataAnalyticsRepositoryImpl2.f48011e;
            InAppDispatch inAppDispatch = this.g;
            Hit hit2 = this.f48022h;
            Map map2 = (Map) analyticsHitBuilder.a(inAppDispatch, hit2);
            if (map2 != null) {
                this.f48018b = sensorsDataAnalyticsRepositoryImpl2;
                this.f48019c = hit2;
                this.d = map2;
                this.f48020e = 1;
                Object objE = SensorsDataAnalyticsRepositoryImpl.e(sensorsDataAnalyticsRepositoryImpl2, this);
                if (objE == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objE;
                sensorsDataAnalyticsRepositoryImpl = sensorsDataAnalyticsRepositoryImpl2;
                map = map2;
                hit = hit2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        map = this.d;
        hit = this.f48019c;
        sensorsDataAnalyticsRepositoryImpl = this.f48018b;
        ResultKt.b(obj);
        String str = (String) obj;
        Map mapL = MapsKt.l(map, new Pair("atg_id", str));
        SensorsDataAPI.sharedInstance().profileSet("atg_id", str);
        SensorsDataAPI.sharedInstance().track(HitTypeAnalyticMapperKt.a(hit.getF66493a()), new JSONObject(mapL));
        Logger logger = sensorsDataAnalyticsRepositoryImpl.f48008a;
        mapL.toString();
        logger.getClass();
        return Unit.f71739a;
    }
}
