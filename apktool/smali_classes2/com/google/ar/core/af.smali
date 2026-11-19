.class final Lcom/google/ar/core/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/google/ar/core/ag;

.field final synthetic d:Lcom/google/ar/core/w;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/ag;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/google/ar/core/w;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/af;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/ar/core/af;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/ar/core/af;->d:Lcom/google/ar/core/w;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ar/core/af;->c:Lcom/google/ar/core/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ar/core/af;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ar/core/af;->c:Lcom/google/ar/core/ag;

    iget-object v1, p0, Lcom/google/ar/core/af;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/af;->d:Lcom/google/ar/core/w;

    iget-object v0, v0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/google/ar/core/y;->e(Landroid/app/Activity;Lcom/google/ar/core/w;)V

    :cond_0
    return-void
.end method
