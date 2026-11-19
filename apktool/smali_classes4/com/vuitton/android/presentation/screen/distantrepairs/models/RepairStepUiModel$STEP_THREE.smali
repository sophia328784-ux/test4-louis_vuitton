.class final Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel$STEP_THREE;
.super Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STEP_THREE"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\u00ca\u0001\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_THREE",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;->d()[Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;->b()Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object p0

    return-object p0
.end method
