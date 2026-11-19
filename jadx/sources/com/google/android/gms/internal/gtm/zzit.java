package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class zzit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30104c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f30105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f30106f;

    public zzit(String str, String str2, String str3, boolean z, String str4, String str5) {
        Preconditions.h(str);
        this.f30102a = str;
        this.f30103b = str2;
        this.f30104c = str3;
        this.d = z;
        this.f30105e = str4;
        this.f30106f = "";
    }

    public final String a() {
        String str = this.f30104c;
        String str2 = this.f30102a;
        return str != null ? tr.h(str, "_", str2) : str2;
    }
}
