.class final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
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
    c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$getCacheFile$2"
    f = "ModelRenderer.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$getCacheFile$2;->e:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v2, "nomade"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->h(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x32

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method
