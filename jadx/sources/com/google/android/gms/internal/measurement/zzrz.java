package com.google.android.gms.internal.measurement;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.cj;
import defpackage.d21;
import defpackage.tr;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzrz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f30893b = "files";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f30894c = "common";
    public final Account d = zzsa.f30900b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f30895e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmutableList.Builder f30896f;

    public zzrz(Context context) {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        this.f30896f = new ImmutableList.Builder();
        zzsq.a(context != null, "Context cannot be null", new Object[0]);
        this.f30892a = context.getPackageName();
    }

    public final void a(String str) {
        zzsq.a(zzsa.f30899a.matcher(str).matches(), "Module must match [a-z]+(_[a-z]+)*: %s", str);
        zzsq.a(!zzsa.f30901c.contains(str), "Module name is reserved and cannot be used: %s", str);
        this.f30894c = str;
    }

    public final void b(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        Pattern pattern = zzsa.f30899a;
        this.f30895e = str;
    }

    public final Uri c() {
        String strP;
        String str = this.f30893b;
        String str2 = this.f30894c;
        Account account = zzrv.f30886a;
        Account account2 = this.d;
        zzsq.a(account2.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        zzsq.a(account2.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        zzsq.a(account2.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (zzrv.f30886a.equals(account2)) {
            strP = "shared";
        } else {
            String str3 = account2.type;
            String str4 = account2.name;
            strP = d21.p(new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length()), str3, ":", str4);
        }
        String str5 = this.f30895e;
        StringBuilder sb = new StringBuilder(strP.length() + str2.length() + str.length() + 2 + 1 + 1 + String.valueOf(str5).length());
        cj.C(sb, "/", str, "/", str2);
        String strL = tr.l(sb, "/", strP, "/", str5);
        ImmutableList immutableListJ = this.f30896f.j();
        Pattern pattern = zzsp.f30911a;
        return new Uri.Builder().scheme(ReferenceApiV3ConstKt.OS_NAME).authority(this.f30892a).path(strL).encodedFragment(immutableListJ.isEmpty() ? null : "transform=".concat(new Joiner("+").b(immutableListJ))).build();
    }
}
