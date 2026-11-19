package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000eB9\b\u0007\u0012\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "Lcom/google/android/gms/common/internal/ReflectedParcelable;", "", "Lcom/google/android/gms/identitycredentials/CredentialOption;", "credentialOptions", "Landroid/os/Bundle;", DbParams.KEY_DATA, "", "origin", "Landroid/os/ResultReceiver;", "resultReceiver", "<init>", "(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/ResultReceiver;)V", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class
public final class GetCredentialRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GetCredentialRequest> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f29562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f29563c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResultReceiver f29564e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/gms/identitycredentials/GetCredentialRequest$Companion;", "", "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "CREATOR", "Landroid/os/Parcelable$Creator;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new GetCredentialRequestCreator();
    }

    @SafeParcelable.Constructor
    public GetCredentialRequest(@SafeParcelable.Param List<CredentialOption> list, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param String str, @SafeParcelable.Param ResultReceiver resultReceiver) {
        list.getClass();
        bundle.getClass();
        resultReceiver.getClass();
        this.f29562b = list;
        this.f29563c = bundle;
        this.d = str;
        this.f29564e = resultReceiver;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f29562b, false);
        SafeParcelWriter.a(parcel, 2, this.f29563c);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.j(parcel, 4, this.f29564e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
