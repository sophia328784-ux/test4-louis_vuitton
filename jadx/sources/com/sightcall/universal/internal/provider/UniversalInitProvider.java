package com.sightcall.universal.internal.provider;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.sightcall.capabilities.di.CapabilitiesComponentKt;
import com.sightcall.core.InitSightcallKt;
import com.sightcall.httpclient.di.HttpClientModule;
import com.sightcall.universal.Universal;
import com.sightcall.universal.di.DaggerSdkComponent;
import com.sightcall.universal.di.SDKInjectorI;
import com.sightcall.universal.di.SdkModule;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.util.Feature;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalInitProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (providerInfo == null) {
            r81.d("UniversalInitProvider providerInfo cannot be null");
        } else if ("com.sightcall.universal.universalinitprovider".equals(providerInfo.authority)) {
            md.k("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        } else {
            super.attachInfo(context, providerInfo);
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        InitSightcallKt.initSightcall((Application) context.getApplicationContext());
        SDKInjectorI.INSTANCE.create(DaggerSdkComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).capabilitiesComponent(CapabilitiesComponentKt.newCapabilitiesModuleComponent()).caseReportComponent(CaseReportComponentKt.getCaseReportComponent()).sdkModule(new SdkModule(context)).httpClientModule(new HttpClientModule("7.10.2 Build 800120953", 24225376)).build());
        Feature.ensureCompatibility(context);
        Universal.init(context);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
