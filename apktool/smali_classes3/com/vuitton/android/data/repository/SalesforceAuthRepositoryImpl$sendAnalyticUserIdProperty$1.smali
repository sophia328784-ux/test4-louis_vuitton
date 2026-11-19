.class final Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;
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
    c = "com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl"
    f = "SalesforceAuthRepositoryImpl.kt"
    l = {
        0x64,
        0x66,
        0x68,
        0x6a
    }
    m = "sendAnalyticUserIdProperty"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->e:Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    sget p1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->i:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->e:Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
