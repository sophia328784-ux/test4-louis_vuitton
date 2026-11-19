.class public final enum Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/data/type/SlowStartState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageLoadingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

.field public static final enum queueIdle:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

.field public static final enum setPageLoadingEndTime:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

.field public static final enum timeOut:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    const-string v1, "queueIdle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->queueIdle:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    new-instance v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    const-string v2, "setPageLoadingEndTime"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->setPageLoadingEndTime:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    new-instance v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    const-string v3, "timeOut"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->timeOut:Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/data/type/SlowStartState$PageLoadingType;

    return-object v0
.end method
