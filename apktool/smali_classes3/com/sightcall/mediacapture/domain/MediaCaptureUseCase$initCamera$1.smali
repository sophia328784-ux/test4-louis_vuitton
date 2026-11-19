.class final Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->initCamera(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sightcall.mediacapture.domain.MediaCaptureUseCase"
    f = "MediaCaptureUseCase.kt"
    l = {
        0x1f
    }
    m = "initCamera"
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->this$0:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    iget-object p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->this$0:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, p0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->initCamera(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
