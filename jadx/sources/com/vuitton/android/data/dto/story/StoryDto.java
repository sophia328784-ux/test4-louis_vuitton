package com.vuitton.android.data.dto.story;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0005\u0011\u0012\u0013\u0014\u0010B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nBI\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto;", "", "", ConfigurationName.KEY, "title", "faviconUrl", "", "Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;", "slides", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "StorySlideDto", "StoryCtaDto", "StoryAssetDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f46870e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(12))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46873c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/story/StoryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoryDto> serializer() {
            return StoryDto$$serializer.f46874a;
        }
    }

    public /* synthetic */ StoryDto(int i2, String str, String str2, String str3, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46871a = null;
        } else {
            this.f46871a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46872b = null;
        } else {
            this.f46872b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46873c = null;
        } else {
            this.f46873c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoryDto)) {
            return false;
        }
        StoryDto storyDto = (StoryDto) obj;
        return Intrinsics.c(this.f46871a, storyDto.f46871a) && Intrinsics.c(this.f46872b, storyDto.f46872b) && Intrinsics.c(this.f46873c, storyDto.f46873c) && Intrinsics.c(this.d, storyDto.d);
    }

    public final int hashCode() {
        String str = this.f46871a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46872b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46873c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.d;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return o60.o(this.f46873c, ", slides=", ")", fc.s("StoryDto(key=", this.f46871a, ", title=", this.f46872b, ", faviconUrl="), this.d);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;", "", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "video", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StoryAssetDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AssetImageDto f46875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetVideoDto f46876b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StoryAssetDto> serializer() {
                return StoryDto$StoryAssetDto$$serializer.f46877a;
            }
        }

        public /* synthetic */ StoryAssetDto(int i2, AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i2 & 1) == 0) {
                this.f46875a = null;
            } else {
                this.f46875a = assetImageDto;
            }
            if ((i2 & 2) == 0) {
                this.f46876b = null;
            } else {
                this.f46876b = assetVideoDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoryAssetDto)) {
                return false;
            }
            StoryAssetDto storyAssetDto = (StoryAssetDto) obj;
            return Intrinsics.c(this.f46875a, storyAssetDto.f46875a) && Intrinsics.c(this.f46876b, storyAssetDto.f46876b);
        }

        public final int hashCode() {
            AssetImageDto assetImageDto = this.f46875a;
            int iHashCode = (assetImageDto == null ? 0 : assetImageDto.hashCode()) * 31;
            AssetVideoDto assetVideoDto = this.f46876b;
            return iHashCode + (assetVideoDto != null ? assetVideoDto.hashCode() : 0);
        }

        public final String toString() {
            return "StoryAssetDto(image=" + this.f46875a + ", video=" + this.f46876b + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public StoryAssetDto() {
            this((AssetImageDto) null, (AssetVideoDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public StoryAssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto) {
            this.f46875a = assetImageDto;
            this.f46876b = assetVideoDto;
        }

        public /* synthetic */ StoryAssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : assetImageDto, (i2 & 2) != 0 ? null : assetVideoDto);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;", "", "", "title", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StoryCtaDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f46879b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StoryCtaDto> serializer() {
                return StoryDto$StoryCtaDto$$serializer.f46880a;
            }
        }

        public /* synthetic */ StoryCtaDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i2 & 1) == 0) {
                this.f46878a = null;
            } else {
                this.f46878a = str;
            }
            if ((i2 & 2) == 0) {
                this.f46879b = null;
            } else {
                this.f46879b = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoryCtaDto)) {
                return false;
            }
            StoryCtaDto storyCtaDto = (StoryCtaDto) obj;
            return Intrinsics.c(this.f46878a, storyCtaDto.f46878a) && Intrinsics.c(this.f46879b, storyCtaDto.f46879b);
        }

        public final int hashCode() {
            String str = this.f46878a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f46879b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("StoryCtaDto(title=", this.f46878a, ", url=", this.f46879b, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public StoryCtaDto() {
            this((String) null, (String) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public StoryCtaDto(String str, String str2) {
            this.f46878a = str;
            this.f46879b = str2;
        }

        public /* synthetic */ StoryCtaDto(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2);
        }
    }

    public StoryDto() {
        this((String) null, (String) null, (String) null, (List) null, 15, (DefaultConstructorMarker) null);
    }

    public StoryDto(String str, String str2, String str3, List<StorySlideDto> list) {
        this.f46871a = str;
        this.f46872b = str2;
        this.f46873c = str3;
        this.d = list;
    }

    public /* synthetic */ StoryDto(String str, String str2, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : list);
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBW\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;", "", "", b.a.f24015b, "title", "surtitle", "description", "Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;", "asset", "Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StorySlideDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46881a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f46882b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f46883c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final StoryAssetDto f46884e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final StoryCtaDto f46885f;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StorySlideDto> serializer() {
                return StoryDto$StorySlideDto$$serializer.f46886a;
            }
        }

        public /* synthetic */ StorySlideDto(int i2, String str, String str2, String str3, String str4, StoryAssetDto storyAssetDto, StoryCtaDto storyCtaDto, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i2 & 1) == 0) {
                this.f46881a = null;
            } else {
                this.f46881a = str;
            }
            if ((i2 & 2) == 0) {
                this.f46882b = null;
            } else {
                this.f46882b = str2;
            }
            if ((i2 & 4) == 0) {
                this.f46883c = null;
            } else {
                this.f46883c = str3;
            }
            if ((i2 & 8) == 0) {
                this.d = null;
            } else {
                this.d = str4;
            }
            if ((i2 & 16) == 0) {
                this.f46884e = null;
            } else {
                this.f46884e = storyAssetDto;
            }
            if ((i2 & 32) == 0) {
                this.f46885f = null;
            } else {
                this.f46885f = storyCtaDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StorySlideDto)) {
                return false;
            }
            StorySlideDto storySlideDto = (StorySlideDto) obj;
            return Intrinsics.c(this.f46881a, storySlideDto.f46881a) && Intrinsics.c(this.f46882b, storySlideDto.f46882b) && Intrinsics.c(this.f46883c, storySlideDto.f46883c) && Intrinsics.c(this.d, storySlideDto.d) && Intrinsics.c(this.f46884e, storySlideDto.f46884e) && Intrinsics.c(this.f46885f, storySlideDto.f46885f);
        }

        public final int hashCode() {
            String str = this.f46881a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f46882b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f46883c;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.d;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            StoryAssetDto storyAssetDto = this.f46884e;
            int iHashCode5 = (iHashCode4 + (storyAssetDto == null ? 0 : storyAssetDto.hashCode())) * 31;
            StoryCtaDto storyCtaDto = this.f46885f;
            return iHashCode5 + (storyCtaDto != null ? storyCtaDto.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("StorySlideDto(id=", this.f46881a, ", title=", this.f46882b, ", surtitle=");
            cj.C(sbS, this.f46883c, ", description=", this.d, ", asset=");
            sbS.append(this.f46884e);
            sbS.append(", cta=");
            sbS.append(this.f46885f);
            sbS.append(")");
            return sbS.toString();
        }

        public StorySlideDto() {
            this((String) null, (String) null, (String) null, (String) null, (StoryAssetDto) null, (StoryCtaDto) null, 63, (DefaultConstructorMarker) null);
        }

        public StorySlideDto(String str, String str2, String str3, String str4, StoryAssetDto storyAssetDto, StoryCtaDto storyCtaDto) {
            this.f46881a = str;
            this.f46882b = str2;
            this.f46883c = str3;
            this.d = str4;
            this.f46884e = storyAssetDto;
            this.f46885f = storyCtaDto;
        }

        public /* synthetic */ StorySlideDto(String str, String str2, String str3, String str4, StoryAssetDto storyAssetDto, StoryCtaDto storyCtaDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : storyAssetDto, (i2 & 32) != 0 ? null : storyCtaDto);
        }
    }
}
