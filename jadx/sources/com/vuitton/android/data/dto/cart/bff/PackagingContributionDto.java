package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;", "", "", "title", "description", "image", "article", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PackagingContributionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45057c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PackagingContributionDto> serializer() {
            return PackagingContributionDto$$serializer.f45058a;
        }
    }

    public /* synthetic */ PackagingContributionDto(int i2, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, PackagingContributionDto$$serializer.f45058a.getF19838b());
            throw null;
        }
        this.f45055a = str;
        this.f45056b = str2;
        this.f45057c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PackagingContributionDto)) {
            return false;
        }
        PackagingContributionDto packagingContributionDto = (PackagingContributionDto) obj;
        return Intrinsics.c(this.f45055a, packagingContributionDto.f45055a) && Intrinsics.c(this.f45056b, packagingContributionDto.f45056b) && Intrinsics.c(this.f45057c, packagingContributionDto.f45057c) && Intrinsics.c(this.d, packagingContributionDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f45055a.hashCode() * 31, 31, this.f45056b), 31, this.f45057c);
    }

    public final String toString() {
        return tr.l(fc.s("PackagingContributionDto(title=", this.f45055a, ", description=", this.f45056b, ", image="), this.f45057c, ", article=", this.d, ")");
    }

    public PackagingContributionDto(String str, String str2, String str3, String str4) {
        d21.y(str, str2, str3, str4);
        this.f45055a = str;
        this.f45056b = str2;
        this.f45057c = str3;
        this.d = str4;
    }
}
