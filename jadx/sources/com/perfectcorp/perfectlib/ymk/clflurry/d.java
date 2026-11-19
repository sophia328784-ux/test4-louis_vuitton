package com.perfectcorp.perfectlib.ymk.clflurry;

import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
final enum d extends a.EnumC0197a {
    public d() {
        super("DEBUG", 0);
    }

    @Override // com.perfectcorp.uma.m
    public final int a(int i2, String str, String str2) {
        return Log.g(i2, str, str2);
    }

    @Override // com.perfectcorp.uma.m
    public final int a(String str, String str2, Throwable th) {
        return Log.j(str, str2, th);
    }
}
