.class final Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;
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
    c = "com.vuitton.android.data.repository.AppConfigRepositoryImpl"
    f = "AppConfigRepositoryImpl.kt"
    l = {
        0x2e,
        0x32,
        0x34
    }
    m = "persistAppConfig-G3ZMdxE"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/Iterator;

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->i:Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->i:Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
