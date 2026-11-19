package com.vuitton.android.data.dto.immersivearticle;

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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;", "theme", "", "title", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;", "cta", "<init>", "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleBannerDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleThemeDto f45790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleCtaDto f45792c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleBannerDto> serializer() {
            return ImmersiveArticleBannerDto$$serializer.f45793a;
        }
    }

    public /* synthetic */ ImmersiveArticleBannerDto(int i2, ImmersiveArticleThemeDto immersiveArticleThemeDto, String str, ImmersiveArticleCtaDto immersiveArticleCtaDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ImmersiveArticleBannerDto$$serializer.f45793a.getF19850b());
            throw null;
        }
        this.f45790a = immersiveArticleThemeDto;
        this.f45791b = str;
        if ((i2 & 4) == 0) {
            this.f45792c = null;
        } else {
            this.f45792c = immersiveArticleCtaDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleBannerDto)) {
            return false;
        }
        ImmersiveArticleBannerDto immersiveArticleBannerDto = (ImmersiveArticleBannerDto) obj;
        return Intrinsics.c(this.f45790a, immersiveArticleBannerDto.f45790a) && Intrinsics.c(this.f45791b, immersiveArticleBannerDto.f45791b) && Intrinsics.c(this.f45792c, immersiveArticleBannerDto.f45792c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f45790a.hashCode() * 31, 31, this.f45791b);
        ImmersiveArticleCtaDto immersiveArticleCtaDto = this.f45792c;
        return iB + (immersiveArticleCtaDto == null ? 0 : immersiveArticleCtaDto.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleBannerDto(theme=" + this.f45790a + ", title=" + this.f45791b + ", cta=" + this.f45792c + ")";
    }

    public ImmersiveArticleBannerDto(ImmersiveArticleThemeDto immersiveArticleThemeDto, String str, ImmersiveArticleCtaDto immersiveArticleCtaDto) {
        immersiveArticleThemeDto.getClass();
        str.getClass();
        this.f45790a = immersiveArticleThemeDto;
        this.f45791b = str;
        this.f45792c = immersiveArticleCtaDto;
    }

    public /* synthetic */ ImmersiveArticleBannerDto(ImmersiveArticleThemeDto immersiveArticleThemeDto, String str, ImmersiveArticleCtaDto immersiveArticleCtaDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(immersiveArticleThemeDto, str, (i2 & 4) != 0 ? null : immersiveArticleCtaDto);
    }
}
