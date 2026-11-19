.class public final Lcom/kakao/sdk/user/AppLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/user/AppLifecycleObserver;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "()V",
        "prevTimeMillis",
        "",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "Companion",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;

.field private static final INTERVAL_HOUR:I = 0x6

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/user/AppLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private prevTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/AppLifecycleObserver;->Companion:Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;

    sget-object v0, Lcom/kakao/sdk/user/AppLifecycleObserver$Companion$instance$2;->c:Lcom/kakao/sdk/user/AppLifecycleObserver$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/AppLifecycleObserver;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/AppLifecycleObserver;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final getInstance()Lcom/kakao/sdk/user/AppLifecycleObserver;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/AppLifecycleObserver;->Companion:Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;->getInstance()Lcom/kakao/sdk/user/AppLifecycleObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/kakao/sdk/user/AppLifecycleObserver;->prevTimeMillis:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-wide p1, p0, Lcom/kakao/sdk/user/AppLifecycleObserver;->prevTimeMillis:J

    sget-object p0, Lcom/kakao/sdk/user/UserApiClient;->c:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient$Companion;->a()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p0

    sget-object p1, Lcom/kakao/sdk/user/AppLifecycleObserver$onStateChanged$1;->c:Lcom/kakao/sdk/user/AppLifecycleObserver$onStateChanged$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/kakao/sdk/user/UserApiClient;->b:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {p0}, Lcom/kakao/sdk/user/UserApi;->checkAccessToken()Lretrofit2/Call;

    move-result-object p0

    new-instance p2, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;

    invoke-direct {p2, p1}, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p0, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
