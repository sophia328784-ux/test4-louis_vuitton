package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzaj extends zzae<Boolean> {
    @Override // com.google.android.gms.internal.clearcut.zzae
    public final /* synthetic */ Object c(String str) {
        if (zzy.f29793c.matcher(str).matches()) {
            return Boolean.TRUE;
        }
        if (zzy.d.matcher(str).matches()) {
            return Boolean.FALSE;
        }
        new StringBuilder(str.length() + String.valueOf(this.f29635b).length() + 28);
        return null;
    }
}
