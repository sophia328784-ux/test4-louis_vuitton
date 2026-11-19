.class public final Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;,
        Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;-><init>(Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;)V

    return-object v0
.end method
