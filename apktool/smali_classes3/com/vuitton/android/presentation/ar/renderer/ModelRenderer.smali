.class public final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$Companion;,
        Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "Lcom/vuitton/android/presentation/ar/arcore/ArCore;",
        "arCore",
        "Lcom/vuitton/android/presentation/ar/filament/Filament;",
        "filament",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ljava/lang/String;Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lcom/vuitton/android/presentation/ar/filament/Filament;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "ModelEvent",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

.field public final e:Lcom/vuitton/android/presentation/ar/filament/Filament;

.field public final f:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final g:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public i:Lcom/vuitton/android/presentation/ar/V3;

.field public j:F

.field public k:F

.field public final l:Lkotlinx/coroutines/internal/ContextScope;

.field public m:Lcom/google/android/filament/gltfio/FilamentAsset;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ljava/lang/String;Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lcom/vuitton/android/presentation/ar/filament/Filament;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->d:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object p5, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p2, p3, p1, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->f:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2, p3, p1, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p2, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->i:Lcom/vuitton/android/presentation/ar/V3;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->l:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p3, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;

    invoke-direct {p3, p0, p1}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, p1, p1, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
