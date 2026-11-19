package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001d\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/google/android/gms/identitycredentials/Credential;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "", "type", "Landroid/os/Bundle;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class
public final class Credential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Credential> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f29556c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/gms/identitycredentials/Credential$Companion;", "", "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/Credential;", "CREATOR", "Landroid/os/Parcelable$Creator;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new CredentialCreator();
    }

    @SafeParcelable.Constructor
    public Credential(@SafeParcelable.Param String str, @SafeParcelable.Param Bundle bundle) {
        str.getClass();
        bundle.getClass();
        this.f29555b = str;
        this.f29556c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29555b, false);
        SafeParcelWriter.a(parcel, 2, this.f29556c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
