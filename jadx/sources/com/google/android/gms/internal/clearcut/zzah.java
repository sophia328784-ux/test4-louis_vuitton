package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.net.Uri;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzah implements zzam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29641a;

    public zzah(String str) {
        this.f29641a = str;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    @Override // com.google.android.gms.internal.clearcut.zzam
    public final Object d() {
        Object obj;
        boolean zBooleanValue;
        String str = this.f29641a;
        ContentResolver contentResolver = zzae.g.getContentResolver();
        Uri uri = zzy.f29791a;
        synchronized (zzy.class) {
            zzy.c(contentResolver);
            obj = zzy.f29799k;
        }
        HashMap map = zzy.g;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = (Boolean) zzy.a(map, str, bool);
        if (bool2 != null) {
            zBooleanValue = bool2.booleanValue();
        } else {
            String strB = zzy.b(contentResolver, str);
            boolean z = false;
            if (strB == null || strB.equals("")) {
                bool = bool2;
            } else if (zzy.f29793c.matcher(strB).matches()) {
                bool = Boolean.TRUE;
                z = true;
            } else if (!zzy.d.matcher(strB).matches()) {
                bool = bool2;
            }
            zzy.d(obj, map, str, bool);
            zBooleanValue = z;
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
