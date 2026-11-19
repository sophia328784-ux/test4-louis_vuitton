.class Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$1;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "screenShare stopped"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    return-void
.end method
