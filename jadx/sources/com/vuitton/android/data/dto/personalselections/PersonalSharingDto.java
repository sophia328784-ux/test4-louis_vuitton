package com.vuitton.android.data.dto.personalselections;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.ul0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fBa\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;", "", "", b.a.f24015b, "selectionId", "Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;", "selectionType", "title", "previewImageUrl", "creationDate", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PersonalSharingDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f46327h = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(20)), null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionTypeDto f46330c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46332f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PersonalSharingDto> serializer() {
            return PersonalSharingDto$$serializer.f46333a;
        }
    }

    public PersonalSharingDto(String str, String str2, SelectionTypeDto selectionTypeDto, String str3, String str4, String str5, String str6) {
        str.getClass();
        str2.getClass();
        selectionTypeDto.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.f46328a = str;
        this.f46329b = str2;
        this.f46330c = selectionTypeDto;
        this.d = str3;
        this.f46331e = str4;
        this.f46332f = str5;
        this.g = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSharingDto)) {
            return false;
        }
        PersonalSharingDto personalSharingDto = (PersonalSharingDto) obj;
        return Intrinsics.c(this.f46328a, personalSharingDto.f46328a) && Intrinsics.c(this.f46329b, personalSharingDto.f46329b) && this.f46330c == personalSharingDto.f46330c && Intrinsics.c(this.d, personalSharingDto.d) && Intrinsics.c(this.f46331e, personalSharingDto.f46331e) && Intrinsics.c(this.f46332f, personalSharingDto.f46332f) && Intrinsics.c(this.g, personalSharingDto.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + fc.b(fc.b(fc.b((this.f46330c.hashCode() + fc.b(this.f46328a.hashCode() * 31, 31, this.f46329b)) * 31, 31, this.d), 31, this.f46331e), 31, this.f46332f);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSharingDto(id=", this.f46328a, ", selectionId=", this.f46329b, ", selectionType=");
        sbS.append(this.f46330c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", previewImageUrl=");
        cj.C(sbS, this.f46331e, ", creationDate=", this.f46332f, ", description=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ PersonalSharingDto(int i2, String str, String str2, SelectionTypeDto selectionTypeDto, String str3, String str4, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i2 & CertificateBody.profileType)) {
            PluginExceptionsKt.b(i2, CertificateBody.profileType, PersonalSharingDto$$serializer.f46333a.getF19838b());
            throw null;
        }
        this.f46328a = str;
        this.f46329b = str2;
        this.f46330c = selectionTypeDto;
        this.d = str3;
        this.f46331e = str4;
        this.f46332f = str5;
        this.g = str6;
    }
}
