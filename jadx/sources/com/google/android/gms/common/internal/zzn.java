package com.google.android.gms.common.internal;

import android.content.ComponentName;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComponentName f29267c;
    public final boolean d;

    public zzn(String str, String str2, int i2, boolean z) {
        Preconditions.e(str);
        this.f29265a = str;
        Preconditions.e(str2);
        this.f29266b = str2;
        this.f29267c = null;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return Objects.a(this.f29265a, zznVar.f29265a) && Objects.a(this.f29266b, zznVar.f29266b) && Objects.a(this.f29267c, zznVar.f29267c) && this.d == zznVar.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29265a, this.f29266b, this.f29267c, 4225, Boolean.valueOf(this.d)});
    }

    public final String toString() {
        String str = this.f29265a;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.f29267c;
        Preconditions.h(componentName);
        return componentName.flattenToString();
    }

    public zzn(String str, int i2, boolean z) {
        this(str, "com.google.android.gms", 4225, false);
    }

    public zzn(ComponentName componentName, int i2) {
        this.f29265a = null;
        this.f29266b = null;
        Preconditions.h(componentName);
        this.f29267c = componentName;
        this.d = false;
    }
}
