.class Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/media/UploaderClient$UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploaderCallback"
.end annotation


# instance fields
.field private final media:Lcom/sightcall/universal/media/Media;

.field private final metadata:Lcom/sightcall/universal/media/Metadata;

.field private final random:Ljava/util/Random;

.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/universal/media/UploaderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->random:Ljava/util/Random;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->service:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    iput-object p3, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->lambda$replayRequest$0(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V

    return-void
.end method

.method private synthetic lambda$replayRequest$0(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    invoke-static {v0, p0, p1}, Lcom/sightcall/universal/media/UploaderClient;->upload(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V

    return-void
.end method

.method private replayRequest(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->random:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/sightcall/universal/media/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sightcall/universal/media/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    int-to-long p0, v1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onMediaUploadError()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error to upload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Media;->delete()Z

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {v0, v1, p0}, Lcom/sightcall/universal/media/UploaderService;->onUploadError(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    :cond_0
    return-void
.end method

.method public onMediaUploadFailure()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to upload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Metadata;->uploadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {v0, v1, p0}, Lcom/sightcall/universal/media/UploaderService;->onUploadFailure(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->replayRequest(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V

    return-void
.end method

.method public onMediaUploadSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Media;->delete()Z

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->media:Lcom/sightcall/universal/media/Media;

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {v0, v1, p0}, Lcom/sightcall/universal/media/UploaderService;->onUploadSuccess(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    :cond_0
    return-void
.end method
