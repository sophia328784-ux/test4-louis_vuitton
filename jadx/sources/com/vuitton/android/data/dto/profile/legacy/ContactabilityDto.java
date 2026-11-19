package com.vuitton.android.data.dto.profile.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;", "", "", "mail", "phone", "sms", "newsletter", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContactabilityDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f46692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f46693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f46694c;
    public final Boolean d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContactabilityDto> serializer() {
            return ContactabilityDto$$serializer.f46695a;
        }
    }

    public /* synthetic */ ContactabilityDto(int i2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, SerializationConstructorMarker serializationConstructorMarker) {
        this.f46692a = (i2 & 1) == 0 ? Boolean.FALSE : bool;
        if ((i2 & 2) == 0) {
            this.f46693b = Boolean.FALSE;
        } else {
            this.f46693b = bool2;
        }
        if ((i2 & 4) == 0) {
            this.f46694c = Boolean.FALSE;
        } else {
            this.f46694c = bool3;
        }
        if ((i2 & 8) == 0) {
            this.d = Boolean.FALSE;
        } else {
            this.d = bool4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContactabilityDto)) {
            return false;
        }
        ContactabilityDto contactabilityDto = (ContactabilityDto) obj;
        return Intrinsics.c(this.f46692a, contactabilityDto.f46692a) && Intrinsics.c(this.f46693b, contactabilityDto.f46693b) && Intrinsics.c(this.f46694c, contactabilityDto.f46694c) && Intrinsics.c(this.d, contactabilityDto.d);
    }

    public final int hashCode() {
        Boolean bool = this.f46692a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f46693b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f46694c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        return iHashCode3 + (bool4 != null ? bool4.hashCode() : 0);
    }

    public final String toString() {
        return "ContactabilityDto(mail=" + this.f46692a + ", phone=" + this.f46693b + ", sms=" + this.f46694c + ", newsletter=" + this.d + ")";
    }

    public ContactabilityDto() {
        this((Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, 15, (DefaultConstructorMarker) null);
    }

    public ContactabilityDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4) {
        this.f46692a = bool;
        this.f46693b = bool2;
        this.f46694c = bool3;
        this.d = bool4;
    }

    public /* synthetic */ ContactabilityDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Boolean.FALSE : bool, (i2 & 2) != 0 ? Boolean.FALSE : bool2, (i2 & 4) != 0 ? Boolean.FALSE : bool3, (i2 & 8) != 0 ? Boolean.FALSE : bool4);
    }
}
