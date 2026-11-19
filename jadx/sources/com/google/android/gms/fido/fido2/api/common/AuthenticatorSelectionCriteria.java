package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.lc0;
import defpackage.n00;
import defpackage.pq0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Attachment f29435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f29436c;
    public final UserVerificationRequirement d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResidentKeyRequirement f29437e;

    /* JADX INFO: loaded from: classes.dex */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Attachment f29438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Boolean f29439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ResidentKeyRequirement f29440c;
    }

    public AuthenticatorSelectionCriteria(String str, String str2, String str3, Boolean bool) {
        Attachment attachmentA;
        if (str == null) {
            attachmentA = null;
        } else {
            try {
                attachmentA = Attachment.a(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzbc e2) {
                lc0.u(e2);
                throw null;
            }
        }
        this.f29435b = attachmentA;
        this.f29436c = bool;
        this.d = str2 == null ? null : UserVerificationRequirement.a(str2);
        this.f29437e = str3 == null ? null : ResidentKeyRequirement.a(str3);
    }

    public final ResidentKeyRequirement W1() {
        ResidentKeyRequirement residentKeyRequirement = this.f29437e;
        if (residentKeyRequirement == null) {
            residentKeyRequirement = null;
            Boolean bool = this.f29436c;
            if (bool != null) {
                if (bool.booleanValue()) {
                    return ResidentKeyRequirement.RESIDENT_KEY_REQUIRED;
                }
                return null;
            }
        }
        return residentKeyRequirement;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        return Objects.a(this.f29435b, authenticatorSelectionCriteria.f29435b) && Objects.a(this.f29436c, authenticatorSelectionCriteria.f29436c) && Objects.a(this.d, authenticatorSelectionCriteria.d) && Objects.a(W1(), authenticatorSelectionCriteria.W1());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29435b, this.f29436c, this.d, W1()});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f29435b);
        String strValueOf2 = String.valueOf(this.d);
        String strValueOf3 = String.valueOf(this.f29437e);
        StringBuilder sbR = pq0.r("AuthenticatorSelectionCriteria{\n attachment=", strValueOf, ", \n requireResidentKey=");
        sbR.append(this.f29436c);
        sbR.append(", \n requireUserVerification=");
        sbR.append(strValueOf2);
        sbR.append(", \n residentKeyRequirement=");
        return n00.r(strValueOf3, "\n }", sbR);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        Attachment attachment = this.f29435b;
        SafeParcelWriter.k(parcel, 2, attachment == null ? null : attachment.toString(), false);
        Boolean bool = this.f29436c;
        if (bool != null) {
            SafeParcelWriter.p(parcel, 3, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        UserVerificationRequirement userVerificationRequirement = this.d;
        SafeParcelWriter.k(parcel, 4, userVerificationRequirement == null ? null : userVerificationRequirement.toString(), false);
        ResidentKeyRequirement residentKeyRequirementW1 = W1();
        SafeParcelWriter.k(parcel, 5, residentKeyRequirementW1 != null ? residentKeyRequirementW1.toString() : null, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
