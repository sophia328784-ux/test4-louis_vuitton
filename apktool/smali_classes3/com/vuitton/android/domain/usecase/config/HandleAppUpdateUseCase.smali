.class public final Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/repository/AppVersionRepository;",
        "appVersionRepository",
        "Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;",
        "onAppUpdatedUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppVersionRepository;Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;)V",
        "Companion",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/repository/AppVersionRepository;

.field public final c:Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppVersionRepository;Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->b:Lcom/vuitton/android/domain/repository/AppVersionRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->c:Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->b:Lcom/vuitton/android/domain/repository/AppVersionRepository;

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget p0, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move v10, v2

    move-object v2, p1

    move p1, v10

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    invoke-interface {v9}, Lcom/vuitton/android/domain/repository/AppVersionRepository;->a()Ljava/lang/Integer;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_7

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->b:I

    iput v6, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    invoke-interface {v9, v0}, Lcom/vuitton/android/domain/repository/AppVersionRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_7

    :cond_7
    :goto_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v2, Lkotlin/Result$Failure;

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move-object v8, v2

    :goto_3
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p1, v2, :cond_e

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p1, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->b:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->c:Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;->a:Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_5

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    if-ne p0, v1, :cond_b

    goto :goto_7

    :cond_b
    move p0, p1

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p0, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->b:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$run$1;->e:I

    invoke-interface {v9, p0, v0}, Lcom/vuitton/android/domain/repository/AppVersionRepository;->b(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_7
    return-object v1

    :cond_c
    :goto_8
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_d

    move-object p1, p0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
