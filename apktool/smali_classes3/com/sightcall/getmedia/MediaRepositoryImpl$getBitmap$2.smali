.class final Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/getmedia/MediaRepositoryImpl;->getBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0014 \u0003*\t\u0018\u00010\u0001\u00a2\u0006\u0002\u0008\u00020\u0001\u00a2\u0006\u0002\u0008\u0002*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "kotlin.jvm.PlatformType",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sightcall.getmedia.MediaRepositoryImpl$getBitmap$2"
    f = "MediaRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $photo:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/sightcall/getmedia/MediaRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/getmedia/MediaRepositoryImpl;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->this$0:Lcom/sightcall/getmedia/MediaRepositoryImpl;

    iput-object p2, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->$photo:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;

    iget-object v0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->this$0:Lcom/sightcall/getmedia/MediaRepositoryImpl;

    iget-object p0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->$photo:Landroid/net/Uri;

    invoke-direct {p1, v0, p0, p2}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;-><init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk28()Z

    move-result p1

    iget-object v0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->this$0:Lcom/sightcall/getmedia/MediaRepositoryImpl;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/sightcall/getmedia/MediaRepositoryImpl;->access$getContentResolver$p(Lcom/sightcall/getmedia/MediaRepositoryImpl;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->$photo:Landroid/net/Uri;

    invoke-static {p1, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/sightcall/getmedia/MediaRepositoryImpl;->access$getContentResolver$p(Lcom/sightcall/getmedia/MediaRepositoryImpl;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;->$photo:Landroid/net/Uri;

    invoke-static {p1, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
