.class final Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;
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
    c = "com.vuitton.android.presentation.redirectlink.AppLinkHandler"
    f = "AppLinkHandler.kt"
    l = {
        0x7a,
        0x7d,
        0x80
    }
    m = "getContributionLinkFromAppLink"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->e:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->e:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
