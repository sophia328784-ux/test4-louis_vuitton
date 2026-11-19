.class final Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
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
    c = "com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl"
    f = "CivilityRepositoryImpl.kt"
    l = {
        0xf
    }
    m = "getCivilityMappingList-ucXmAVc"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->d:Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->d:Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
