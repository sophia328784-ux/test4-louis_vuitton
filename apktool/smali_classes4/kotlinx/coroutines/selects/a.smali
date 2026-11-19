.class public final synthetic Lkotlinx/coroutines/selects/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/selects/SelectInstance;

.field public final synthetic c:Lkotlinx/coroutines/selects/OnTimeout;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/OnTimeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/SelectInstance;

    iput-object p2, p0, Lkotlinx/coroutines/selects/a;->c:Lkotlinx/coroutines/selects/OnTimeout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->c:Lkotlinx/coroutines/selects/OnTimeout;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p0, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {p0, v0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
