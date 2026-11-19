package com.google.firebase.sessions.settings;

import android.util.Log;
import defpackage.md;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lorg/json/JSONObject;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {126}, m = "invokeSuspend")
final class RemoteSettings$updateSettings$2$1 extends SuspendLambda implements Function2<JSONObject, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f35572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f35573c;
    public final /* synthetic */ RemoteSettings d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, Continuation continuation) {
        super(2, continuation);
        this.d = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.d, continuation);
        remoteSettings$updateSettings$2$1.f35573c = obj;
        return remoteSettings$updateSettings$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RemoteSettings$updateSettings$2$1) create((JSONObject) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        Boolean bool;
        Double d;
        Integer num;
        int iIntValue;
        JSONException jSONException;
        Integer num2;
        Double d2;
        Boolean bool2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f35572b;
        Integer num3 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            JSONObject jSONObject = (JSONObject) this.f35573c;
            Objects.toString(jSONObject);
            if (jSONObject.has("app_quality")) {
                Object obj2 = jSONObject.get("app_quality");
                obj2.getClass();
                JSONObject jSONObject2 = (JSONObject) obj2;
                try {
                    bool2 = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                    try {
                        d2 = jSONObject2.has("sampling_rate") ? (Double) jSONObject2.get("sampling_rate") : null;
                        try {
                            num2 = jSONObject2.has("session_timeout_seconds") ? (Integer) jSONObject2.get("session_timeout_seconds") : null;
                            try {
                                if (jSONObject2.has("cache_duration")) {
                                    num3 = (Integer) jSONObject2.get("cache_duration");
                                }
                            } catch (JSONException e2) {
                                jSONException = e2;
                                new Integer(Log.e("FirebaseSessions", "Error parsing the configs remotely fetched: ", jSONException));
                            }
                        } catch (JSONException e3) {
                            jSONException = e3;
                            num2 = null;
                        }
                    } catch (JSONException e4) {
                        jSONException = e4;
                        num2 = null;
                        d2 = null;
                    }
                } catch (JSONException e5) {
                    jSONException = e5;
                    num2 = null;
                    d2 = null;
                    bool2 = null;
                }
                num = num2;
                d = d2;
                bool = bool2;
            } else {
                bool = null;
                d = null;
                num = null;
            }
            RemoteSettings remoteSettings = this.d;
            SettingsCache settingsCache = remoteSettings.f35567e;
            if (num3 != null) {
                iIntValue = num3.intValue();
            } else {
                RemoteSettings.g.getClass();
                iIntValue = RemoteSettings.f35562h;
            }
            SessionConfigs sessionConfigs = new SessionConfigs(bool, d, num, new Integer(iIntValue), new Long(remoteSettings.f35564a.a().f35539c));
            this.f35572b = 1;
            if (settingsCache.b(sessionConfigs, this) == coroutineSingletons) {
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
