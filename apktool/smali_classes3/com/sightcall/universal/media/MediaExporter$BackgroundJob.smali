.class abstract Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/MediaExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundJob"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;->execute()V

    return-void
.end method

.method private execute()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob$1;-><init>(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract doInBackground()V
.end method
