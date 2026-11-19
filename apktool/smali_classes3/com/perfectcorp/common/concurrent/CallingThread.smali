.class public abstract enum Lcom/perfectcorp/common/concurrent/CallingThread;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/concurrent/CallingThread;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

.field public static final enum MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

.field private static final synthetic a:[Lcom/perfectcorp/common/concurrent/CallingThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/common/concurrent/a;

    invoke-direct {v0}, Lcom/perfectcorp/common/concurrent/a;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    new-instance v1, Lcom/perfectcorp/common/concurrent/b;

    invoke-direct {v1}, Lcom/perfectcorp/common/concurrent/b;-><init>()V

    sput-object v1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/perfectcorp/common/concurrent/CallingThread;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/perfectcorp/common/concurrent/CallingThread;->a:[Lcom/perfectcorp/common/concurrent/CallingThread;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/common/concurrent/CallingThread;
    .locals 1

    const-class v0, Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/concurrent/CallingThread;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/common/concurrent/CallingThread;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->a:[Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-virtual {v0}, [Lcom/perfectcorp/common/concurrent/CallingThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/common/concurrent/CallingThread;

    return-object v0
.end method
