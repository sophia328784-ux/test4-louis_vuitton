package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "", "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;", "type", "", "value", "trackingName", "<init>", "(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContributionLinkLegacyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkTypeDto f46030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46032c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContributionLinkLegacyDto> serializer() {
            return ContributionLinkLegacyDto$$serializer.f46033a;
        }
    }

    public /* synthetic */ ContributionLinkLegacyDto(int i2, LinkTypeDto linkTypeDto, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ContributionLinkLegacyDto$$serializer.f46033a.a());
            throw null;
        }
        this.f46030a = linkTypeDto;
        if ((i2 & 2) == 0) {
            this.f46031b = null;
        } else {
            this.f46031b = str;
        }
        if ((i2 & 4) == 0) {
            this.f46032c = null;
        } else {
            this.f46032c = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkLegacyDto)) {
            return false;
        }
        ContributionLinkLegacyDto contributionLinkLegacyDto = (ContributionLinkLegacyDto) obj;
        return this.f46030a == contributionLinkLegacyDto.f46030a && Intrinsics.c(this.f46031b, contributionLinkLegacyDto.f46031b) && Intrinsics.c(this.f46032c, contributionLinkLegacyDto.f46032c);
    }

    public final int hashCode() {
        int iHashCode = this.f46030a.hashCode() * 31;
        String str = this.f46031b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46032c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContributionLinkLegacyDto(type=");
        sb.append(this.f46030a);
        sb.append(", value=");
        sb.append(this.f46031b);
        sb.append(", trackingName=");
        return n00.r(this.f46032c, ")", sb);
    }

    public ContributionLinkLegacyDto(LinkTypeDto linkTypeDto, String str, String str2) {
        linkTypeDto.getClass();
        this.f46030a = linkTypeDto;
        this.f46031b = str;
        this.f46032c = str2;
    }

    public /* synthetic */ ContributionLinkLegacyDto(LinkTypeDto linkTypeDto, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(linkTypeDto, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2);
    }
}
