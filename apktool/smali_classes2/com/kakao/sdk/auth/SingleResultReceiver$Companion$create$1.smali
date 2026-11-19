.class public final Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;
.super Lcom/kakao/sdk/auth/SingleResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/auth/SingleResultReceiver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/kakao/sdk/auth/SingleResultReceiver$Companion$create$1",
        "Lcom/kakao/sdk/auth/SingleResultReceiver;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->f:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->g:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    const-string p2, "Auth Code"

    invoke-direct {p0, p2, p1}, Lcom/kakao/sdk/auth/SingleResultReceiver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->f:Lkotlin/jvm/functions/Function1;

    check-cast p0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final e(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
