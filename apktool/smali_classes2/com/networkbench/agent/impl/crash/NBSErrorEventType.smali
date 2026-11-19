.class public final enum Lcom/networkbench/agent/impl/crash/NBSErrorEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/crash/NBSErrorEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

.field public static final enum anr:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

.field public static final enum crash:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

.field public static final enum customError:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    const-string v1, "crash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->crash:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    new-instance v1, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    const-string v2, "anr"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->anr:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    new-instance v2, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    const-string v3, "customError"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->customError:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->a:[Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/NBSErrorEventType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/crash/NBSErrorEventType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->a:[Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    return-object v0
.end method
