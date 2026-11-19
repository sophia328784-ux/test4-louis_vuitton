package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface zzcp extends IInterface {
    void beginAdUnitExposure(String str, long j2);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j2);

    void endAdUnitExposure(String str, long j2);

    void generateEventId(zzcs zzcsVar);

    void getAppInstanceId(zzcs zzcsVar);

    void getCachedAppInstanceId(zzcs zzcsVar);

    void getConditionalUserProperties(String str, String str2, zzcs zzcsVar);

    void getCurrentScreenClass(zzcs zzcsVar);

    void getCurrentScreenName(zzcs zzcsVar);

    void getGmpAppId(zzcs zzcsVar);

    void getMaxUserProperties(String str, zzcs zzcsVar);

    void getSessionId(zzcs zzcsVar);

    void getTestFlag(zzcs zzcsVar, int i2);

    void getUserProperties(String str, String str2, boolean z, zzcs zzcsVar);

    void initForTests(Map map);

    void initialize(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j2);

    void initializeWithElapsedTime(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j2, long j3);

    void isDataCollectionEnabled(zzcs zzcsVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzcs zzcsVar, long j2);

    void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2, long j3);

    void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2);

    void onActivityCreatedByScionActivityInfo(zzdd zzddVar, Bundle bundle, long j2);

    void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2);

    void onActivityDestroyedByScionActivityInfo(zzdd zzddVar, long j2);

    void onActivityPaused(IObjectWrapper iObjectWrapper, long j2);

    void onActivityPausedByScionActivityInfo(zzdd zzddVar, long j2);

    void onActivityResumed(IObjectWrapper iObjectWrapper, long j2);

    void onActivityResumedByScionActivityInfo(zzdd zzddVar, long j2);

    void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcs zzcsVar, long j2);

    void onActivitySaveInstanceStateByScionActivityInfo(zzdd zzddVar, zzcs zzcsVar, long j2);

    void onActivityStarted(IObjectWrapper iObjectWrapper, long j2);

    void onActivityStartedByScionActivityInfo(zzdd zzddVar, long j2);

    void onActivityStopped(IObjectWrapper iObjectWrapper, long j2);

    void onActivityStoppedByScionActivityInfo(zzdd zzddVar, long j2);

    void performAction(Bundle bundle, zzcs zzcsVar, long j2);

    void registerOnMeasurementEventListener(zzcy zzcyVar);

    void resetAnalyticsData(long j2);

    void resetAnalyticsDataWithElapsedTime(long j2, long j3);

    void retrieveAndUploadBatches(zzcv zzcvVar);

    void setConditionalUserProperty(Bundle bundle, long j2);

    void setConsent(Bundle bundle, long j2);

    void setConsentThirdParty(Bundle bundle, long j2);

    void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2);

    void setCurrentScreenByScionActivityInfo(zzdd zzddVar, String str, String str2, long j2);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(zzcy zzcyVar);

    void setInstanceIdProvider(zzda zzdaVar);

    void setMeasurementEnabled(boolean z, long j2);

    void setMinimumSessionDuration(long j2);

    void setSessionTimeoutDuration(long j2);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j2);

    void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2);

    void unregisterOnMeasurementEventListener(zzcy zzcyVar);
}
