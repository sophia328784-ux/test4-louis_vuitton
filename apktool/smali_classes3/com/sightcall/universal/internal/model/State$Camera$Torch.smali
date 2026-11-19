.class Lcom/sightcall/universal/internal/model/State$Camera$Torch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State$Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Torch"
.end annotation


# instance fields
.field final available:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "available"
    .end annotation
.end field

.field final started:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "started"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/State$Camera$Torch;->started:Z

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/model/State$Camera$Torch;->available:Z

    return-void
.end method

.method public static create(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/model/State$Camera$Torch;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sightcall/universal/internal/model/State$Camera$Torch;-><init>(ZZ)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashAvailable()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/sightcall/universal/internal/model/State$Camera$Torch;-><init>(ZZ)V

    return-object v0
.end method
