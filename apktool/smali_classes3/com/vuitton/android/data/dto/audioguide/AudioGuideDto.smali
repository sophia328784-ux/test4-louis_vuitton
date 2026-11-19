.class public final Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;,
        Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u0000  2\u00020\u0001:\u0007!\"#$%& B\u0093\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000f\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bB\u00b1\u0001\u0008\u0010\u0012\u0006\u0010\u001c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000f\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001a\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;",
        "",
        "",
        "id",
        "title",
        "subtitle",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "image",
        "backgroundColor",
        "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;",
        "theme",
        "",
        "accessDurationHours",
        "immersiveArticleId",
        "selectedLanguageCode",
        "",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;",
        "availableLanguages",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;",
        "card",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;",
        "summary",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;",
        "tracks",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;",
        "creditsInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "AvailableLanguageDto",
        "AudioGuideCardDto",
        "SummaryDto",
        "TrackDto",
        "CreditsDto",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

.field public static final o:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public final k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

.field public final l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

.field public final m:Ljava/util/List;

.field public final n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lw9;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lw9;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lw9;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lw9;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Lw9;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lw9;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v6, 0xe

    new-array v6, v6, [Lkotlin/Lazy;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v8, 0x2

    aput-object v1, v6, v8

    const/4 v8, 0x3

    aput-object v1, v6, v8

    aput-object v1, v6, v3

    aput-object v2, v6, v5

    aput-object v1, v6, v7

    const/4 v2, 0x7

    aput-object v1, v6, v2

    const/16 v2, 0x8

    aput-object v1, v6, v2

    const/16 v2, 0x9

    aput-object v4, v6, v2

    const/16 v2, 0xa

    aput-object v1, v6, v2

    const/16 v2, 0xb

    aput-object v1, v6, v2

    const/16 v2, 0xc

    aput-object v0, v6, v2

    const/16 v0, 0xd

    aput-object v1, v6, v0

    sput-object v6, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->o:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1b7b

    const/4 v1, 0x0

    const/16 v2, 0x1b7b

    if-ne v2, v0, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    iput p8, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p9, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    :goto_1
    iput-object p10, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    :goto_2
    move-object/from16 p2, p13

    goto :goto_3

    :cond_2
    iput-object p12, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    goto :goto_2

    :goto_3
    iput-object p2, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_3

    iput-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    return-void

    :cond_3
    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;",
            "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    .line 89
    iput-object p5, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    .line 91
    iput p7, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    .line 92
    iput-object p8, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    .line 93
    iput-object p9, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    .line 94
    iput-object p10, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    .line 95
    iput-object p11, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    .line 96
    iput-object p12, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    .line 97
    iput-object p13, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    .line 98
    iput-object p14, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    move-object/from16 v17, v2

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    goto :goto_4

    :cond_3
    move-object/from16 v17, p14

    goto :goto_3

    .line 99
    :goto_4
    invoke-direct/range {v3 .. v17}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    iget v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", subtitle="

    const-string v2, "AudioGuideDto(id="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessDurationHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", immersiveArticleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", availableLanguages="

    const-string v2, ", card="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creditsInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
