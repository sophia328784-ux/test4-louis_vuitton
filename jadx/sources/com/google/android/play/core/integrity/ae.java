package com.google.android.play.core.integrity;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.play.integrity.internal.n;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ae implements com.google.android.play.integrity.internal.z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ae f33281a = new ae();

    @Override // com.google.android.play.integrity.internal.z
    public final n a(IBinder iBinder) {
        int i2 = com.google.android.play.integrity.internal.m.f33332a;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        return iInterfaceQueryLocalInterface instanceof n ? (n) iInterfaceQueryLocalInterface : new com.google.android.play.integrity.internal.l(iBinder);
    }
}
