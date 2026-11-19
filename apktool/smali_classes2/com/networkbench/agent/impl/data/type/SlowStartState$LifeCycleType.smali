.class public final enum Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/data/type/SlowStartState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum ActivityCreate:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum ActivityRestart:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum ActivityResume:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum ActivityStart:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum AppCreate:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum AttachBaseContext:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum BLANK:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

.field public static final enum OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v2, "AttachBaseContext"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->AttachBaseContext:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v3, "AppCreate"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->AppCreate:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v4, "ActivityCreate"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->ActivityCreate:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v5, "ActivityStart"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->ActivityStart:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v6, "ActivityRestart"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->ActivityRestart:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v6, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v7, "ActivityResume"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->ActivityResume:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    new-instance v7, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    const-string v8, "BLANK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->BLANK:Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    filled-new-array/range {v0 .. v7}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/data/type/SlowStartState$LifeCycleType;

    return-object v0
.end method
