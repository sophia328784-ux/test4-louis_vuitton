package com.vuitton.android.data.dto.linktype;

import com.networkbench.agent.impl.harvest.ConfigurationName;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "", "type", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Data", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContributionLinkOtherDto extends ContributionLinkDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Data f46048b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContributionLinkOtherDto> serializer() {
            return ContributionLinkOtherDto$$serializer.f46049a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ContributionLinkOtherDto(int i2, String str, Data data, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ContributionLinkOtherDto$$serializer.f46049a.getF19850b());
            throw null;
        }
        this.f46047a = str;
        this.f46048b = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkOtherDto)) {
            return false;
        }
        ContributionLinkOtherDto contributionLinkOtherDto = (ContributionLinkOtherDto) obj;
        return Intrinsics.c(this.f46047a, contributionLinkOtherDto.f46047a) && Intrinsics.c(this.f46048b, contributionLinkOtherDto.f46048b);
    }

    public final int hashCode() {
        int iHashCode = this.f46047a.hashCode() * 31;
        Data data = this.f46048b;
        return iHashCode + (data == null ? 0 : data.f46050a.hashCode());
    }

    public final String toString() {
        return "ContributionLinkOtherDto(type=" + this.f46047a + ", data=" + this.f46048b + ")";
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Data {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46050a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Data> serializer() {
                return ContributionLinkOtherDto$Data$$serializer.f46051a;
            }
        }

        public /* synthetic */ Data(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f46050a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLinkOtherDto$Data$$serializer.f46051a.getF19850b());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Data) && Intrinsics.c(this.f46050a, ((Data) obj).f46050a);
        }

        public final int hashCode() {
            return this.f46050a.hashCode();
        }

        public final String toString() {
            return fc.h("Data(url=", this.f46050a, ")");
        }

        public Data(String str) {
            str.getClass();
            this.f46050a = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContributionLinkOtherDto(String str, Data data) {
        super(null);
        str.getClass();
        this.f46047a = str;
        this.f46048b = data;
    }
}
