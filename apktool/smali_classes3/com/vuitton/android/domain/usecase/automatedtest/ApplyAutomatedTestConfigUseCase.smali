.class public final Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;",
        "saveSecurityCookieUseCase",
        "Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;",
        "updateEnvironmentUseCase",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "inAppDispatchRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;

.field public final c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->a:Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->b:Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/environment/Environment;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->c:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->c:Ljava/lang/String;

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->c:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    iget-object p4, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->a:Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;

    invoke-virtual {p4, p1, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->b:Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;

    iget-object p4, p1, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p4, p2}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->h(Lcom/vuitton/foundation/model/domain/model/environment/Environment;)V

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;->a:Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

    invoke-virtual {p1, v5, v0}, Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, p3

    :goto_3
    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
