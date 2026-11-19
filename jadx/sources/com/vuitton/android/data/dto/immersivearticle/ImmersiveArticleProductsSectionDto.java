package com.vuitton.android.data.dto.immersivearticle;

import com.batch.android.s.b;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\t\u0010\u000e¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", b.a.f24015b, "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleProductsSectionDto extends ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f45905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45907c;
    public final ImmersiveArticleProductsDataDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleProductsSectionDto> serializer() {
            return ImmersiveArticleProductsSectionDto$$serializer.f45908a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImmersiveArticleProductsSectionDto(int i2, Integer num, String str, String str2, ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (6 != (i2 & 6)) {
            PluginExceptionsKt.b(i2, 6, ImmersiveArticleProductsSectionDto$$serializer.f45908a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45905a = null;
        } else {
            this.f45905a = num;
        }
        this.f45906b = str;
        this.f45907c = str2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleProductsDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductsSectionDto)) {
            return false;
        }
        ImmersiveArticleProductsSectionDto immersiveArticleProductsSectionDto = (ImmersiveArticleProductsSectionDto) obj;
        return Intrinsics.c(this.f45905a, immersiveArticleProductsSectionDto.f45905a) && Intrinsics.c(this.f45906b, immersiveArticleProductsSectionDto.f45906b) && Intrinsics.c(this.f45907c, immersiveArticleProductsSectionDto.f45907c) && Intrinsics.c(this.d, immersiveArticleProductsSectionDto.d);
    }

    public final int hashCode() {
        Integer num = this.f45905a;
        int iB = fc.b(fc.b((num == null ? 0 : num.hashCode()) * 31, 31, this.f45906b), 31, this.f45907c);
        ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto = this.d;
        return iB + (immersiveArticleProductsDataDto != null ? immersiveArticleProductsDataDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleProductsSectionDto(id=" + this.f45905a + ", key=" + this.f45906b + ", type=" + this.f45907c + ", data=" + this.d + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleProductsSectionDto(Integer num, String str, String str2, ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f45905a = num;
        this.f45906b = str;
        this.f45907c = str2;
        this.d = immersiveArticleProductsDataDto;
    }

    public /* synthetic */ ImmersiveArticleProductsSectionDto(Integer num, String str, String str2, ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, str, str2, (i2 & 8) != 0 ? null : immersiveArticleProductsDataDto);
    }
}
