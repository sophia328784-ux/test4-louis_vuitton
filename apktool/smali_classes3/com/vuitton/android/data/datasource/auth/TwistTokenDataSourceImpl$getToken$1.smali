.class final Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;
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
    c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl"
    f = "TwistTokenDataSourceImpl.kt"
    l = {
        0x18,
        0x19,
        0x1d,
        0x1f,
        0x21,
        0x22,
        0x27
    }
    m = "getToken"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

.field public k:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->j:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->i:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->j:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
