.class public final enum Lcom/networkbench/agent/impl/plugin/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/plugin/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum b:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum c:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum d:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum e:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum f:Lcom/networkbench/agent/impl/plugin/e;

.field public static final enum g:Lcom/networkbench/agent/impl/plugin/e;

.field private static final synthetic h:[Lcom/networkbench/agent/impl/plugin/e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/networkbench/agent/impl/plugin/e;

    const-string v1, "after_net"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/e;->a:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v1, Lcom/networkbench/agent/impl/plugin/e;

    const-string v2, "after_error"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/plugin/e;->b:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v2, Lcom/networkbench/agent/impl/plugin/e;

    const-string v3, "on_background"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/plugin/e;->c:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v3, Lcom/networkbench/agent/impl/plugin/e;

    const-string v4, "on_foreground"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/plugin/e;->d:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v4, Lcom/networkbench/agent/impl/plugin/e;

    const-string v5, "on_task"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/plugin/e;->e:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v5, Lcom/networkbench/agent/impl/plugin/e;

    const-string v6, "after_anr"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/plugin/e;->f:Lcom/networkbench/agent/impl/plugin/e;

    new-instance v6, Lcom/networkbench/agent/impl/plugin/e;

    const-string v7, "after_crash"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/plugin/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/plugin/e;->g:Lcom/networkbench/agent/impl/plugin/e;

    filled-new-array/range {v0 .. v6}, [Lcom/networkbench/agent/impl/plugin/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/e;->h:[Lcom/networkbench/agent/impl/plugin/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/plugin/e;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/plugin/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/plugin/e;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/plugin/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->h:[Lcom/networkbench/agent/impl/plugin/e;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/plugin/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/plugin/e;

    return-object v0
.end method
