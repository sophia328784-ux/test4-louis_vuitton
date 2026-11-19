.class final enum Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

.field public static final enum b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

.field public static final enum c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

.field private static final synthetic d:[Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    const-string v2, "SENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    const-string v3, "COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->d:[Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->d:[Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-object v0
.end method
