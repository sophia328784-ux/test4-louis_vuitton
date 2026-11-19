.class final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroid/net/Uri;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;",
            "Landroid/net/Uri;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroidx/camera/video/VideoRecordEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/camera/video/VideoRecordEvent$Start;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/camera/video/VideoRecordEvent$Finalize;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/video/VideoRecordEvent$Finalize;

    iget p1, p1, Landroidx/camera/video/VideoRecordEvent$Finalize;->b:I

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sightcall/pratik/Result$Success;

    new-instance v1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {v3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getMediaRepository$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Lcom/sightcall/getmedia/MediaRepository;

    move-result-object v3

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->$uri:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, p0}, Lcom/sightcall/getmedia/MediaRepository;->getVideoSize(Landroid/net/Uri;)Landroid/util/Size;

    move-result-object p0

    const-string v3, "video/mp4"

    invoke-direct {v1, v2, v3, p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    invoke-direct {p1, v1}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to write video du to error: "

    invoke-static {p1, v3}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Landroidx/camera/video/VideoRecordEvent;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;->accept(Landroidx/camera/video/VideoRecordEvent;)V

    return-void
.end method
