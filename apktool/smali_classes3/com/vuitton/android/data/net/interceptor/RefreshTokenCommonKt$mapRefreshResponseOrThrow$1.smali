.class final Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

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
    c = "com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt"
    f = "RefreshTokenCommon.kt"
    l = {
        0xb,
        0xf
    }
    m = "mapRefreshResponseOrThrow"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt;->a(Lretrofit2/Response;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
