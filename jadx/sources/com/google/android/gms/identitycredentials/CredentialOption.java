package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0001\fBE\b\u0007\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0003\u0010\b\u001a\u00020\u0002\u0012\b\b\u0003\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/google/android/gms/identitycredentials/CredentialOption;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "", "type", "Landroid/os/Bundle;", "credentialRetrievalData", "candidateQueryData", "requestMatcher", "requestType", "protocolType", "<init>", "(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class
public final class CredentialOption extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialOption> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f29558c;
    public final Bundle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29560f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;", "", "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/CredentialOption;", "CREATOR", "Landroid/os/Parcelable$Creator;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new CredentialOptionCreator();
    }

    @SafeParcelable.Constructor
    public CredentialOption(@SafeParcelable.Param String str, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param Bundle bundle2, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4) {
        str.getClass();
        bundle.getClass();
        bundle2.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.f29557b = str;
        this.f29558c = bundle;
        this.d = bundle2;
        this.f29559e = str2;
        this.f29560f = str3;
        this.g = str4;
        boolean z = (StringsKt.w(str3) || StringsKt.w(str4)) ? false : true;
        boolean z2 = !StringsKt.w(str) && str3.length() == 0 && str4.length() == 0;
        if (z || z2) {
            return;
        }
        md.n(n00.r(str4, " must be specified, but at least one contains an invalid blank value.", fc.s("Either type: ", str, ", or requestType: ", str3, " and protocolType: ")));
        throw null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29557b, false);
        SafeParcelWriter.a(parcel, 2, this.f29558c);
        SafeParcelWriter.a(parcel, 3, this.d);
        SafeParcelWriter.k(parcel, 4, this.f29559e, false);
        SafeParcelWriter.k(parcel, 5, this.f29560f, false);
        SafeParcelWriter.k(parcel, 6, this.g, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
