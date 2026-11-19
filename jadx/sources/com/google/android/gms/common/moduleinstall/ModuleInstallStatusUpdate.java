package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new zad();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29291c;
    public final Long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f29292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29293f;

    @Retention(RetentionPolicy.CLASS)
    public @interface InstallState {
    }

    public ModuleInstallStatusUpdate(int i2, int i3, Long l, Long l2, int i4) {
        this.f29290b = i2;
        this.f29291c = i3;
        this.d = l;
        this.f29292e = l2;
        this.f29293f = i4;
        if (l == null || l2 == null || l2.longValue() == 0 || l2.longValue() != 0) {
            return;
        }
        md.n("Given Long is zero");
        throw null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29290b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29291c);
        SafeParcelWriter.i(parcel, 3, this.d);
        SafeParcelWriter.i(parcel, 4, this.f29292e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29293f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
