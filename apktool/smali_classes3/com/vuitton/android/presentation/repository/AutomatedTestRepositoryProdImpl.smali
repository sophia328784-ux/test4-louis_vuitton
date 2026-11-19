.class public final Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AutomatedTestRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;",
        "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;",
        "<init>",
        "()V",
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


# instance fields
.field public final a:Ljava/lang/UnsupportedOperationException;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported in production"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Result$Failure;
    .locals 1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkotlin/Result$Failure;
    .locals 1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lkotlin/Result$Failure;
    .locals 1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lkotlin/Result$Failure;
    .locals 1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lkotlin/Result$Failure;
    .locals 1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;->a:Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method
