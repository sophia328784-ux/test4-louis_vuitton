package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.l30;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "", "Companion", "FULLSCREEN", "RATIO_16_9", "RATIO_9_16", "RATIO_2_3", "RATIO_4_5", "RATIO_1_1", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class ImmersiveArticleSizeCardDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleSizeCardDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final ImmersiveArticleSizeCardDto FULLSCREEN;

    @SerialName
    public static final ImmersiveArticleSizeCardDto RATIO_16_9;

    @SerialName
    public static final ImmersiveArticleSizeCardDto RATIO_1_1;

    @SerialName
    public static final ImmersiveArticleSizeCardDto RATIO_2_3;

    @SerialName
    public static final ImmersiveArticleSizeCardDto RATIO_4_5;

    @SerialName
    public static final ImmersiveArticleSizeCardDto RATIO_9_16;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleSizeCardDto> serializer() {
            return (KSerializer) ImmersiveArticleSizeCardDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = new ImmersiveArticleSizeCardDto("FULLSCREEN", 0);
        FULLSCREEN = immersiveArticleSizeCardDto;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto2 = new ImmersiveArticleSizeCardDto("RATIO_16_9", 1);
        RATIO_16_9 = immersiveArticleSizeCardDto2;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto3 = new ImmersiveArticleSizeCardDto("RATIO_9_16", 2);
        RATIO_9_16 = immersiveArticleSizeCardDto3;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto4 = new ImmersiveArticleSizeCardDto("RATIO_2_3", 3);
        RATIO_2_3 = immersiveArticleSizeCardDto4;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto5 = new ImmersiveArticleSizeCardDto("RATIO_4_5", 4);
        RATIO_4_5 = immersiveArticleSizeCardDto5;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto6 = new ImmersiveArticleSizeCardDto("RATIO_1_1", 5);
        RATIO_1_1 = immersiveArticleSizeCardDto6;
        ImmersiveArticleSizeCardDto[] immersiveArticleSizeCardDtoArr = {immersiveArticleSizeCardDto, immersiveArticleSizeCardDto2, immersiveArticleSizeCardDto3, immersiveArticleSizeCardDto4, immersiveArticleSizeCardDto5, immersiveArticleSizeCardDto6};
        $VALUES = immersiveArticleSizeCardDtoArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleSizeCardDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l30(9));
    }

    public static ImmersiveArticleSizeCardDto valueOf(String str) {
        return (ImmersiveArticleSizeCardDto) Enum.valueOf(ImmersiveArticleSizeCardDto.class, str);
    }

    public static ImmersiveArticleSizeCardDto[] values() {
        return (ImmersiveArticleSizeCardDto[]) $VALUES.clone();
    }
}
