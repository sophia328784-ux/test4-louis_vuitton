package com.vuitton.android.data.dto.catalog;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import defpackage.fj;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBU\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;", "", "", "Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto;", "subcategoryGroups", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CategoryRedirectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45097e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45100c;
    public final ContributionLinkDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CategoryRedirectionDto> serializer() {
            return CategoryRedirectionDto$$serializer.f45101a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45097e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new fj(21)), LazyKt.a(lazyThreadSafetyMode, new fj(22)), LazyKt.a(lazyThreadSafetyMode, new fj(23)), null};
    }

    public /* synthetic */ CategoryRedirectionDto(int i2, List list, List list2, List list3, ContributionLinkDto contributionLinkDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45098a = null;
        } else {
            this.f45098a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45099b = null;
        } else {
            this.f45099b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45100c = null;
        } else {
            this.f45100c = list3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = contributionLinkDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryRedirectionDto)) {
            return false;
        }
        CategoryRedirectionDto categoryRedirectionDto = (CategoryRedirectionDto) obj;
        return Intrinsics.c(this.f45098a, categoryRedirectionDto.f45098a) && Intrinsics.c(this.f45099b, categoryRedirectionDto.f45099b) && Intrinsics.c(this.f45100c, categoryRedirectionDto.f45100c) && Intrinsics.c(this.d, categoryRedirectionDto.d);
    }

    public final int hashCode() {
        List list = this.f45098a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45099b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f45100c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        ContributionLinkDto contributionLinkDto = this.d;
        return iHashCode3 + (contributionLinkDto != null ? contributionLinkDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("CategoryRedirectionDto(plpEntries=", ", thematicPlpEntries=", ", subcategoryGroups=", this.f45098a, this.f45099b);
        sbS.append(this.f45100c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public CategoryRedirectionDto() {
        this((List) null, (List) null, (List) null, (ContributionLinkDto) null, 15, (DefaultConstructorMarker) null);
    }

    public CategoryRedirectionDto(List<PLPEntryDto> list, List<PLPEntryDto> list2, List<SubcategoryGroupsDto> list3, ContributionLinkDto contributionLinkDto) {
        this.f45098a = list;
        this.f45099b = list2;
        this.f45100c = list3;
        this.d = contributionLinkDto;
    }

    public /* synthetic */ CategoryRedirectionDto(List list, List list2, List list3, ContributionLinkDto contributionLinkDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : contributionLinkDto);
    }
}
