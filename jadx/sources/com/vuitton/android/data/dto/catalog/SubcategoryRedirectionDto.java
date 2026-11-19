package com.vuitton.android.data.dto.catalog;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import defpackage.o11;
import defpackage.o60;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBE\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;", "", "", "Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SubcategoryRedirectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkDto f45122c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SubcategoryRedirectionDto> serializer() {
            return SubcategoryRedirectionDto$$serializer.f45123a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new o11(15)), LazyKt.a(lazyThreadSafetyMode, new o11(16)), null};
    }

    public /* synthetic */ SubcategoryRedirectionDto(int i2, List list, List list2, ContributionLinkDto contributionLinkDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45120a = null;
        } else {
            this.f45120a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45121b = null;
        } else {
            this.f45121b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45122c = null;
        } else {
            this.f45122c = contributionLinkDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryRedirectionDto)) {
            return false;
        }
        SubcategoryRedirectionDto subcategoryRedirectionDto = (SubcategoryRedirectionDto) obj;
        return Intrinsics.c(this.f45120a, subcategoryRedirectionDto.f45120a) && Intrinsics.c(this.f45121b, subcategoryRedirectionDto.f45121b) && Intrinsics.c(this.f45122c, subcategoryRedirectionDto.f45122c);
    }

    public final int hashCode() {
        List list = this.f45120a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45121b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        ContributionLinkDto contributionLinkDto = this.f45122c;
        return iHashCode2 + (contributionLinkDto != null ? contributionLinkDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("SubcategoryRedirectionDto(plpEntries=", ", thematicPlpEntries=", ", link=", this.f45120a, this.f45121b);
        sbS.append(this.f45122c);
        sbS.append(")");
        return sbS.toString();
    }

    public SubcategoryRedirectionDto() {
        this((List) null, (List) null, (ContributionLinkDto) null, 7, (DefaultConstructorMarker) null);
    }

    public SubcategoryRedirectionDto(List<PLPEntryDto> list, List<PLPEntryDto> list2, ContributionLinkDto contributionLinkDto) {
        this.f45120a = list;
        this.f45121b = list2;
        this.f45122c = contributionLinkDto;
    }

    public /* synthetic */ SubcategoryRedirectionDto(List list, List list2, ContributionLinkDto contributionLinkDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : contributionLinkDto);
    }
}
