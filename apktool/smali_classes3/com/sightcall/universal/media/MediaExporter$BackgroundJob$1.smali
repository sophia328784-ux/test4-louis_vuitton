.class Lcom/sightcall/universal/media/MediaExporter$BackgroundJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob$1;->this$0:Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob$1;->this$0:Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;->doInBackground()V

    return-void
.end method
