.class Lcom/sightcall/universal/internal/model/State$Micro;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Micro"
.end annotation


# instance fields
.field final started:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "started"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/State$Micro;->started:Z

    return-void
.end method

.method public static create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Micro;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/internal/model/State$Micro;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/State$Micro;-><init>(Z)V

    return-object v0
.end method
