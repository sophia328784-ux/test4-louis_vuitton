package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.a;
import defpackage.fc;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fBA\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0005\u0012\u000e\b\u0003\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/google/android/gms/identitycredentials/RegistrationRequest;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "", "credentials", "matcher", "", "type", "requestType", "", "protocolTypes", "<init>", "([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class
public final class RegistrationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegistrationRequest> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f29570c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f29572f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/android/gms/identitycredentials/RegistrationRequest$Companion;", "", "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/RegistrationRequest;", "CREATOR", "Landroid/os/Parcelable$Creator;", "", "TAG", "Ljava/lang/String;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new RegistrationRequestCreator();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c A[EDGE_INSN: B:10:0x003c->B:17:0x0055 BREAK  A[LOOP:0: B:12:0x0042->B:33:?]] */
    @SafeParcelable.Constructor
    public RegistrationRequest(@SafeParcelable.Param byte[] bArr, @SafeParcelable.Param byte[] bArr2, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param List<String> list) {
        boolean z;
        bArr.getClass();
        bArr2.getClass();
        str.getClass();
        str2.getClass();
        list.getClass();
        this.f29569b = bArr;
        this.f29570c = bArr2;
        this.d = str;
        this.f29571e = str2;
        this.f29572f = list;
        if (!StringsKt.w(str2) && !list.isEmpty()) {
            List<String> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (!StringsKt.w((String) it.next())) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
        } else {
            z = false;
            break;
        }
        boolean z2 = !StringsKt.w(this.d) && this.f29571e.length() == 0 && this.f29572f.isEmpty();
        if (z || z2) {
            return;
        }
        md.n(a.o(fc.s("Either type: ", this.d, ", or requestType: ", this.f29571e, " and protocolTypes: "), this.f29572f, " must be specified, but all were blank, or for protocolTypes, empty or full of blank elements."));
        throw null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 1, this.f29569b, false);
        SafeParcelWriter.b(parcel, 2, this.f29570c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f29571e, false);
        SafeParcelWriter.m(parcel, 5, this.f29572f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
