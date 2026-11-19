package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteActionCompat implements VersionedParcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IconCompat f11987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f11988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f11989c;
    public PendingIntent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11991f;

    public RemoteActionCompat(IconCompat iconCompat, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        iconCompat.getClass();
        this.f11987a = iconCompat;
        charSequence.getClass();
        this.f11988b = charSequence;
        charSequence2.getClass();
        this.f11989c = charSequence2;
        pendingIntent.getClass();
        this.d = pendingIntent;
        this.f11990e = true;
        this.f11991f = true;
    }

    public RemoteActionCompat() {
    }

    public RemoteActionCompat(RemoteActionCompat remoteActionCompat) {
        remoteActionCompat.getClass();
        this.f11987a = remoteActionCompat.f11987a;
        this.f11988b = remoteActionCompat.f11988b;
        this.f11989c = remoteActionCompat.f11989c;
        this.d = remoteActionCompat.d;
        this.f11990e = remoteActionCompat.f11990e;
        this.f11991f = remoteActionCompat.f11991f;
    }
}
