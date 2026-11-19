.class public final Lcom/sightcall/universal/agent/recording/RecordingV3MappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "createRecording",
        "Lcom/sightcall/universal/agent/recording/RecordingV3Request;",
        "Lcom/sightcall/universal/model/Session;",
        "toRecordingEntity",
        "Lcom/sightcall/universal/agent/recording/RecordingV3Entity;",
        "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
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
.method public static final createRecording(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/agent/recording/RecordingV3Request;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->reference()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->stats()Lnet/rtccloud/sdk/StatsModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/StatsModule;->realTimePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;

    invoke-direct {v3, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    new-instance v6, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase;->productId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v3, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase;->languageId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v3, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->locationId:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v1, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;-><init>(Ljava/lang/String;)V

    :cond_3
    move-object v9, v1

    new-instance v3, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;-><init>(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;)V

    new-instance v0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request;-><init>(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;)V

    return-object p0
.end method

.method public static final toRecordingEntity(Lcom/sightcall/universal/agent/recording/RecordingV3Response;)Lcom/sightcall/universal/agent/recording/RecordingV3Entity;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Response;->getData()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Response;->getData()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;->getAttributes()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Response;->getData()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;->getAttributes()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;->getMode()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Entity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
