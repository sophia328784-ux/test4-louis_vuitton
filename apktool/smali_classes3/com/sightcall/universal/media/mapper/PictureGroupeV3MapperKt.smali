.class public final Lcom/sightcall/universal/media/mapper/PictureGroupeV3MapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "createPictureGroupV3Request",
        "Lcom/sightcall/universal/media/PictureGroupV3Request;",
        "metadata",
        "Lcom/sightcall/universal/media/Metadata;",
        "count",
        "",
        "sdk_installedRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createPictureGroupV3Request(Lcom/sightcall/universal/media/Metadata;I)Lcom/sightcall/universal/media/PictureGroupV3Request;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/media/PictureGroupV3Request;

    new-instance v1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data;

    new-instance v2, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->reference()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->reference()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;

    new-instance v4, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->caseReportId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, p1}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->usecaseId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;-><init>(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdProduct;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLanguage;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLocations;)V

    const/4 v5, 0x1

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/PictureGroupV3Request;-><init>(Lcom/sightcall/universal/media/PictureGroupV3Request$Data;)V

    return-object v0
.end method
