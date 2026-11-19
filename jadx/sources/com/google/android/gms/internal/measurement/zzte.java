package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import defpackage.cj;

/* JADX INFO: loaded from: classes2.dex */
final class zzte extends zztr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f30924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzafc f30925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Optional f30926c;
    public final ImmutableList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzuj f30927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f30928f;

    public zzte(Uri uri, zzafc zzafcVar, Optional optional, ImmutableList immutableList, zzuj zzujVar, boolean z) {
        this.f30924a = uri;
        this.f30925b = zzafcVar;
        this.f30926c = optional;
        this.d = immutableList;
        this.f30927e = zzujVar;
        this.f30928f = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zztr)) {
            return false;
        }
        zzte zzteVar = (zzte) ((zztr) obj);
        return this.f30924a.equals(zzteVar.f30924a) && this.f30925b.equals(zzteVar.f30925b) && this.f30926c.equals(zzteVar.f30926c) && this.d.equals(zzteVar.d) && this.f30927e.equals(zzteVar.f30927e) && this.f30928f == zzteVar.f30928f;
    }

    public final int hashCode() {
        return (((true != this.f30928f ? 1237 : 1231) ^ ((((((((((this.f30924a.hashCode() ^ 1000003) * 1000003) ^ this.f30925b.hashCode()) * 1000003) ^ this.f30926c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f30927e.hashCode()) * 1000003)) * 1000003) ^ 1237;
    }

    public final String toString() {
        String string = this.f30924a.toString();
        int length = string.length();
        String string2 = this.f30925b.toString();
        int length2 = string2.length();
        String strValueOf = String.valueOf(this.f30926c);
        String strValueOf2 = String.valueOf(this.d);
        String string3 = this.f30927e.toString();
        int length3 = strValueOf.length();
        int length4 = strValueOf2.length();
        int length5 = string3.length();
        boolean z = this.f30928f;
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 10 + length3 + 13 + length4 + 16 + length5 + 32 + String.valueOf(z).length() + 22);
        cj.C(sb, "ProtoDataStoreConfig{uri=", string, ", schema=", string2);
        cj.C(sb, ", handler=", strValueOf, ", migrations=", strValueOf2);
        sb.append(", variantConfig=");
        sb.append(string3);
        sb.append(", useGeneratedExtensionRegistry=");
        sb.append(z);
        sb.append(", enableTracing=false}");
        return sb.toString();
    }
}
