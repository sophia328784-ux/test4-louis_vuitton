package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.iq;
import java.util.List;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "", "type", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Data", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContributionLinkWishlistSharedDto extends ContributionLinkDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Data f46093b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContributionLinkWishlistSharedDto> serializer() {
            return ContributionLinkWishlistSharedDto$$serializer.f46094a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ContributionLinkWishlistSharedDto(int i2, String str, Data data, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ContributionLinkWishlistSharedDto$$serializer.f46094a.getF19838b());
            throw null;
        }
        this.f46092a = str;
        this.f46093b = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkWishlistSharedDto)) {
            return false;
        }
        ContributionLinkWishlistSharedDto contributionLinkWishlistSharedDto = (ContributionLinkWishlistSharedDto) obj;
        return Intrinsics.c(this.f46092a, contributionLinkWishlistSharedDto.f46092a) && Intrinsics.c(this.f46093b, contributionLinkWishlistSharedDto.f46093b);
    }

    public final int hashCode() {
        return this.f46093b.hashCode() + (this.f46092a.hashCode() * 31);
    }

    public final String toString() {
        return "ContributionLinkWishlistSharedDto(type=" + this.f46092a + ", data=" + this.f46093b + ")";
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;", "", "", "date", "", "skus", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Data {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f46095c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(11))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f46097b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Data> serializer() {
                return ContributionLinkWishlistSharedDto$Data$$serializer.f46098a;
            }
        }

        public /* synthetic */ Data(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ContributionLinkWishlistSharedDto$Data$$serializer.f46098a.getF19838b());
                throw null;
            }
            this.f46096a = str;
            this.f46097b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Data)) {
                return false;
            }
            Data data = (Data) obj;
            return Intrinsics.c(this.f46096a, data.f46096a) && Intrinsics.c(this.f46097b, data.f46097b);
        }

        public final int hashCode() {
            return this.f46097b.hashCode() + (this.f46096a.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("Data(date=", this.f46096a, ", skus=", this.f46097b, ")");
        }

        public Data(String str, List<String> list) {
            str.getClass();
            list.getClass();
            this.f46096a = str;
            this.f46097b = list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContributionLinkWishlistSharedDto(String str, Data data) {
        super(null);
        str.getClass();
        data.getClass();
        this.f46092a = str;
        this.f46093b = data;
    }
}
