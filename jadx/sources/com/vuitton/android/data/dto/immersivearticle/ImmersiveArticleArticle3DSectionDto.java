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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\t\u0010\u000e¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", b.a.f24015b, "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticle3DDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticle3DDataDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticle3DDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleArticle3DSectionDto extends ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f45764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45766c;
    public final ImmersiveArticle3DDataDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleArticle3DSectionDto> serializer() {
            return ImmersiveArticleArticle3DSectionDto$$serializer.f45767a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImmersiveArticleArticle3DSectionDto(int i2, Integer num, String str, String str2, ImmersiveArticle3DDataDto immersiveArticle3DDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (6 != (i2 & 6)) {
            PluginExceptionsKt.b(i2, 6, ImmersiveArticleArticle3DSectionDto$$serializer.f45767a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45764a = null;
        } else {
            this.f45764a = num;
        }
        this.f45765b = str;
        this.f45766c = str2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticle3DDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleArticle3DSectionDto)) {
            return false;
        }
        ImmersiveArticleArticle3DSectionDto immersiveArticleArticle3DSectionDto = (ImmersiveArticleArticle3DSectionDto) obj;
        return Intrinsics.c(this.f45764a, immersiveArticleArticle3DSectionDto.f45764a) && Intrinsics.c(this.f45765b, immersiveArticleArticle3DSectionDto.f45765b) && Intrinsics.c(this.f45766c, immersiveArticleArticle3DSectionDto.f45766c) && Intrinsics.c(this.d, immersiveArticleArticle3DSectionDto.d);
    }

    public final int hashCode() {
        Integer num = this.f45764a;
        int iB = fc.b(fc.b((num == null ? 0 : num.hashCode()) * 31, 31, this.f45765b), 31, this.f45766c);
        ImmersiveArticle3DDataDto immersiveArticle3DDataDto = this.d;
        return iB + (immersiveArticle3DDataDto != null ? immersiveArticle3DDataDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleArticle3DSectionDto(id=" + this.f45764a + ", key=" + this.f45765b + ", type=" + this.f45766c + ", data=" + this.d + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleArticle3DSectionDto(Integer num, String str, String str2, ImmersiveArticle3DDataDto immersiveArticle3DDataDto) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f45764a = num;
        this.f45765b = str;
        this.f45766c = str2;
        this.d = immersiveArticle3DDataDto;
    }

    public /* synthetic */ ImmersiveArticleArticle3DSectionDto(Integer num, String str, String str2, ImmersiveArticle3DDataDto immersiveArticle3DDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, str, str2, (i2 & 8) != 0 ? null : immersiveArticle3DDataDto);
    }
}
