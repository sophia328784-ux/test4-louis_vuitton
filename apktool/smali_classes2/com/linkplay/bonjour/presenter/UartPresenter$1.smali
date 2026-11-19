.class Lcom/linkplay/bonjour/presenter/UartPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/UartPresenter;->connectDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/UartPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$1;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$1;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$002(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$1;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$000(Lcom/linkplay/bonjour/presenter/UartPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$100(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
