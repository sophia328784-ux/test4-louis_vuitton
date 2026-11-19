package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.DevelopmentPlatformProvider;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AppData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f34495c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f34496e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f34497f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DevelopmentPlatformProvider f34498h;

    public AppData(String str, String str2, List<BuildIdInfo> list, String str3, String str4, String str5, String str6, DevelopmentPlatformProvider developmentPlatformProvider) {
        this.f34493a = str;
        this.f34494b = str2;
        this.f34495c = list;
        this.d = str3;
        this.f34496e = str4;
        this.f34497f = str5;
        this.g = str6;
        this.f34498h = developmentPlatformProvider;
    }
}
