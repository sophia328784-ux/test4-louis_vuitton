package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "", "type", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Data", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContributionLinkAppointmentCreateDto extends ContributionLinkDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Data f45997b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContributionLinkAppointmentCreateDto> serializer() {
            return ContributionLinkAppointmentCreateDto$$serializer.f45998a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ContributionLinkAppointmentCreateDto(int i2, String str, Data data, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ContributionLinkAppointmentCreateDto$$serializer.f45998a.getF19850b());
            throw null;
        }
        this.f45996a = str;
        this.f45997b = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkAppointmentCreateDto)) {
            return false;
        }
        ContributionLinkAppointmentCreateDto contributionLinkAppointmentCreateDto = (ContributionLinkAppointmentCreateDto) obj;
        return Intrinsics.c(this.f45996a, contributionLinkAppointmentCreateDto.f45996a) && Intrinsics.c(this.f45997b, contributionLinkAppointmentCreateDto.f45997b);
    }

    public final int hashCode() {
        int iHashCode = this.f45996a.hashCode() * 31;
        Data data = this.f45997b;
        return iHashCode + (data == null ? 0 : data.hashCode());
    }

    public final String toString() {
        return "ContributionLinkAppointmentCreateDto(type=" + this.f45996a + ", data=" + this.f45997b + ")";
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;", "", "", "reason", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Data {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f45999a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Data> serializer() {
                return ContributionLinkAppointmentCreateDto$Data$$serializer.f46000a;
            }
        }

        public /* synthetic */ Data(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i2 & 1) == 0) {
                this.f45999a = null;
            } else {
                this.f45999a = str;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Data) && Intrinsics.c(this.f45999a, ((Data) obj).f45999a);
        }

        public final int hashCode() {
            String str = this.f45999a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Data(reason=", this.f45999a, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Data() {
            this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public Data(String str) {
            this.f45999a = str;
        }

        public /* synthetic */ Data(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContributionLinkAppointmentCreateDto(String str, Data data) {
        super(null);
        str.getClass();
        this.f45996a = str;
        this.f45997b = data;
    }
}
