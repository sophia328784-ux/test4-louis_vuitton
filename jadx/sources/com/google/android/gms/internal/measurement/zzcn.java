package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcn extends zzbl implements zzcp {
    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void beginAdUnitExposure(String str, long j2) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeLong(j2);
        G2(23, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        zzbn.b(parcelF2, bundle);
        G2(9, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void endAdUnitExposure(String str, long j2) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeLong(j2);
        G2(24, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void generateEventId(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(22, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getAppInstanceId(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(20, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCachedAppInstanceId(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(19, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getConditionalUserProperties(String str, String str2, zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        zzbn.c(parcelF2, zzcsVar);
        G2(10, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCurrentScreenClass(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(17, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCurrentScreenName(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(16, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getGmpAppId(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(21, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getMaxUserProperties(String str, zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        zzbn.c(parcelF2, zzcsVar);
        G2(6, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getSessionId(zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcsVar);
        G2(46, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getUserProperties(String str, String str2, boolean z, zzcs zzcsVar) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        ClassLoader classLoader = zzbn.f30586a;
        parcelF2.writeInt(z ? 1 : 0);
        zzbn.c(parcelF2, zzcsVar);
        G2(5, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void initialize(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, iObjectWrapper);
        zzbn.b(parcelF2, zzdbVar);
        parcelF2.writeLong(j2);
        G2(1, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void initializeWithElapsedTime(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j2, long j3) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, iObjectWrapper);
        zzbn.b(parcelF2, zzdbVar);
        parcelF2.writeLong(j2);
        parcelF2.writeLong(j3);
        G2(60, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2, long j3) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        zzbn.b(parcelF2, bundle);
        parcelF2.writeInt(z ? 1 : 0);
        parcelF2.writeInt(z2 ? 1 : 0);
        parcelF2.writeLong(j2);
        parcelF2.writeLong(j3);
        G2(59, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelF2 = F2();
        parcelF2.writeInt(5);
        parcelF2.writeString(str);
        zzbn.c(parcelF2, iObjectWrapper);
        zzbn.c(parcelF2, iObjectWrapper2);
        zzbn.c(parcelF2, iObjectWrapper3);
        G2(33, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityCreatedByScionActivityInfo(zzdd zzddVar, Bundle bundle, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        zzbn.b(parcelF2, bundle);
        parcelF2.writeLong(j2);
        G2(53, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityDestroyedByScionActivityInfo(zzdd zzddVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeLong(j2);
        G2(54, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityPausedByScionActivityInfo(zzdd zzddVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeLong(j2);
        G2(55, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityResumedByScionActivityInfo(zzdd zzddVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeLong(j2);
        G2(56, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivitySaveInstanceStateByScionActivityInfo(zzdd zzddVar, zzcs zzcsVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        zzbn.c(parcelF2, zzcsVar);
        parcelF2.writeLong(j2);
        G2(57, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStartedByScionActivityInfo(zzdd zzddVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeLong(j2);
        G2(51, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStoppedByScionActivityInfo(zzdd zzddVar, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeLong(j2);
        G2(52, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void registerOnMeasurementEventListener(zzcy zzcyVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcyVar);
        G2(35, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void retrieveAndUploadBatches(zzcv zzcvVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcvVar);
        G2(58, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setConditionalUserProperty(Bundle bundle, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, bundle);
        parcelF2.writeLong(j2);
        G2(8, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setConsentThirdParty(Bundle bundle, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, bundle);
        parcelF2.writeLong(j2);
        G2(45, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setCurrentScreenByScionActivityInfo(zzdd zzddVar, String str, String str2, long j2) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, zzddVar);
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        parcelF2.writeLong(j2);
        G2(50, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setDataCollectionEnabled(boolean z) {
        Parcel parcelF2 = F2();
        ClassLoader classLoader = zzbn.f30586a;
        parcelF2.writeInt(z ? 1 : 0);
        G2(39, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, bundle);
        G2(42, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setEventInterceptor(zzcy zzcyVar) {
        Parcel parcelF2 = F2();
        zzbn.c(parcelF2, zzcyVar);
        G2(34, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setMeasurementEnabled(boolean z, long j2) {
        Parcel parcelF2 = F2();
        ClassLoader classLoader = zzbn.f30586a;
        parcelF2.writeInt(z ? 1 : 0);
        parcelF2.writeLong(j2);
        G2(11, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setUserId(String str, long j2) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeLong(j2);
        G2(7, parcelF2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        zzbn.c(parcelF2, iObjectWrapper);
        parcelF2.writeInt(z ? 1 : 0);
        parcelF2.writeLong(j2);
        G2(4, parcelF2);
    }
}
