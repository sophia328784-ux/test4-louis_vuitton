package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbd extends zzd implements zzbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f29971a = 0;

    public zzbd() {
        super("com.google.android.gms.tagmanager.internal.ITagManagerService");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        zzbb zzazVar = null;
        if (i2 == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            zze.b(parcel);
            ((zzcz) this).c0(string, string2, string3, null);
        } else if (i2 == 2) {
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
                zzazVar = iInterfaceQueryLocalInterface instanceof zzbb ? (zzbb) iInterfaceQueryLocalInterface : new zzaz(strongBinder, "com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
            }
            zze.b(parcel);
            ((zzcz) this).c0(string4, string5, string6, zzazVar);
        } else if (i2 == 3) {
            ((zzcz) this).c();
        } else if (i2 == 101) {
            String string7 = parcel.readString();
            Bundle bundle = (Bundle) zze.a(parcel, Bundle.CREATOR);
            String string8 = parcel.readString();
            long j2 = parcel.readLong();
            boolean z = parcel.readInt() != 0;
            zze.b(parcel);
            ((zzcz) this).S(string7, bundle, string8, j2, z);
        } else {
            if (i2 != 102) {
                return false;
            }
            ((zzcz) this).h0();
        }
        parcel2.writeNoException();
        return true;
    }
}
