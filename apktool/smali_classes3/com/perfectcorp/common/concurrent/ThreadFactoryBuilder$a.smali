.class final Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;->a:Ljava/lang/Runnable;

    iput p2, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;IB)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;-><init>(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object p0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
