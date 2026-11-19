.class Lcom/sightcall/universal/internal/model/GpsRequest$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/GpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/model/GpsRequest;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/model/GpsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/GpsRequest$1;->this$0:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/sightcall/universal/internal/model/GpsRequest$1;->this$0:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/GpsRequest;->a(Lcom/sightcall/universal/internal/model/GpsRequest;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/GpsRequest$1;->this$0:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStop()V

    return-void
.end method
