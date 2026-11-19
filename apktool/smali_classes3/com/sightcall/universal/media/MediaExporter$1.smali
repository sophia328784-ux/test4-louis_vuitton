.class Lcom/sightcall/universal/media/MediaExporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/MediaExporter;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/MediaExporter;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/MediaExporter;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->media()Lcom/sightcall/universal/media/UniversalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/media/UniversalMedia;->exports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    new-instance v2, Lcom/sightcall/universal/media/MediaExporter$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sightcall/universal/media/MediaExporter$1$1;-><init>(Lcom/sightcall/universal/media/MediaExporter$1;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/sightcall/universal/media/MediaExporter;->b(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/MediaExporter$1$1;)V

    return-void
.end method
