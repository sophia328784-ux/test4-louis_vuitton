package com.perfectcorp.common.utility;

/* JADX INFO: loaded from: classes3.dex */
final enum m extends Log.c {
    public m() {
        super("DEFAULT", 0);
    }

    @Override // com.perfectcorp.common.utility.Log.b
    public final int a(int i2, String str, String str2) {
        try {
            return android.util.Log.println(i2, str, str2);
        } catch (Throwable unused) {
            System.err.println(str + ":" + str2);
            return 0;
        }
    }

    @Override // com.perfectcorp.common.utility.Log.b
    public final int a(String str, String str2, Throwable th) {
        return android.util.Log.e(str, str2, th);
    }
}
