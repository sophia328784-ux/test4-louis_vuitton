.class public final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->f:Landroidx/compose/material3/SnackbarHostState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-direct {v0, v1, v2, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$21$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->f:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->h:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$21$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
