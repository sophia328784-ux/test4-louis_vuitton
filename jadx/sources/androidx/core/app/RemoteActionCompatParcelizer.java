package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        VersionedParcelable versionedParcelableN = remoteActionCompat.f11987a;
        if (versionedParcel.i(1)) {
            versionedParcelableN = versionedParcel.n();
        }
        remoteActionCompat.f11987a = (IconCompat) versionedParcelableN;
        CharSequence charSequenceH = remoteActionCompat.f11988b;
        if (versionedParcel.i(2)) {
            charSequenceH = versionedParcel.h();
        }
        remoteActionCompat.f11988b = charSequenceH;
        CharSequence charSequenceH2 = remoteActionCompat.f11989c;
        if (versionedParcel.i(3)) {
            charSequenceH2 = versionedParcel.h();
        }
        remoteActionCompat.f11989c = charSequenceH2;
        Parcelable parcelableL = remoteActionCompat.d;
        if (versionedParcel.i(4)) {
            parcelableL = versionedParcel.l();
        }
        remoteActionCompat.d = (PendingIntent) parcelableL;
        boolean zF = remoteActionCompat.f11990e;
        if (versionedParcel.i(5)) {
            zF = versionedParcel.f();
        }
        remoteActionCompat.f11990e = zF;
        boolean zF2 = remoteActionCompat.f11991f;
        if (versionedParcel.i(6)) {
            zF2 = versionedParcel.f();
        }
        remoteActionCompat.f11991f = zF2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        IconCompat iconCompat = remoteActionCompat.f11987a;
        versionedParcel.o(1);
        versionedParcel.w(iconCompat);
        CharSequence charSequence = remoteActionCompat.f11988b;
        versionedParcel.o(2);
        versionedParcel.r(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f11989c;
        versionedParcel.o(3);
        versionedParcel.r(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.d;
        versionedParcel.o(4);
        versionedParcel.u(pendingIntent);
        boolean z = remoteActionCompat.f11990e;
        versionedParcel.o(5);
        versionedParcel.p(z);
        boolean z2 = remoteActionCompat.f11991f;
        versionedParcel.o(6);
        versionedParcel.p(z2);
    }
}
