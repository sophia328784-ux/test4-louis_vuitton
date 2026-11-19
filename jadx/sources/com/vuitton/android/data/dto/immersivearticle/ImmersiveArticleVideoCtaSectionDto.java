package com.vuitton.android.data.dto.immersivearticle;

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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleVideoCtaSectionDto extends ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleCtaDataDto f45949c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleVideoCtaSectionDto> serializer() {
            return ImmersiveArticleVideoCtaSectionDto$$serializer.f45950a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImmersiveArticleVideoCtaSectionDto(int i2, String str, String str2, ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ImmersiveArticleVideoCtaSectionDto$$serializer.f45950a.getF19850b());
            throw null;
        }
        this.f45947a = str;
        this.f45948b = str2;
        if ((i2 & 4) == 0) {
            this.f45949c = null;
        } else {
            this.f45949c = immersiveArticleCtaDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleVideoCtaSectionDto)) {
            return false;
        }
        ImmersiveArticleVideoCtaSectionDto immersiveArticleVideoCtaSectionDto = (ImmersiveArticleVideoCtaSectionDto) obj;
        return Intrinsics.c(this.f45947a, immersiveArticleVideoCtaSectionDto.f45947a) && Intrinsics.c(this.f45948b, immersiveArticleVideoCtaSectionDto.f45948b) && Intrinsics.c(this.f45949c, immersiveArticleVideoCtaSectionDto.f45949c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f45947a.hashCode() * 31, 31, this.f45948b);
        ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto = this.f45949c;
        return iB + (immersiveArticleCtaDataDto == null ? 0 : immersiveArticleCtaDataDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleVideoCtaSectionDto(key=", this.f45947a, ", type=", this.f45948b, ", data=");
        sbS.append(this.f45949c);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleVideoCtaSectionDto(String str, String str2, ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f45947a = str;
        this.f45948b = str2;
        this.f45949c = immersiveArticleCtaDataDto;
    }

    public /* synthetic */ ImmersiveArticleVideoCtaSectionDto(String str, String str2, ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : immersiveArticleCtaDataDto);
    }
}
