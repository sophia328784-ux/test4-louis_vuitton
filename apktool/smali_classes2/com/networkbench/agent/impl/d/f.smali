.class public final enum Lcom/networkbench/agent/impl/d/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/d/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/d/f;

.field public static final enum b:Lcom/networkbench/agent/impl/d/f;

.field public static final enum c:Lcom/networkbench/agent/impl/d/f;

.field public static final enum d:Lcom/networkbench/agent/impl/d/f;

.field public static final enum e:Lcom/networkbench/agent/impl/d/f;

.field public static final enum f:Lcom/networkbench/agent/impl/d/f;

.field public static final enum g:Lcom/networkbench/agent/impl/d/f;

.field public static final enum h:Lcom/networkbench/agent/impl/d/f;

.field private static final synthetic i:[Lcom/networkbench/agent/impl/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/networkbench/agent/impl/d/f;

    const-string v1, "Network"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/d/f;->a:Lcom/networkbench/agent/impl/d/f;

    new-instance v1, Lcom/networkbench/agent/impl/d/f;

    const-string v2, "HttpError"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/d/f;->b:Lcom/networkbench/agent/impl/d/f;

    new-instance v2, Lcom/networkbench/agent/impl/d/f;

    const-string v3, "Method"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/d/f;->c:Lcom/networkbench/agent/impl/d/f;

    new-instance v3, Lcom/networkbench/agent/impl/d/f;

    const-string v4, "Activity"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/d/f;->d:Lcom/networkbench/agent/impl/d/f;

    new-instance v4, Lcom/networkbench/agent/impl/d/f;

    const-string v5, "Custom"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/d/f;->e:Lcom/networkbench/agent/impl/d/f;

    new-instance v5, Lcom/networkbench/agent/impl/d/f;

    const-string v6, "Any"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/d/f;->f:Lcom/networkbench/agent/impl/d/f;

    new-instance v6, Lcom/networkbench/agent/impl/d/f;

    const-string v7, "MEMORY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/d/f;->g:Lcom/networkbench/agent/impl/d/f;

    new-instance v7, Lcom/networkbench/agent/impl/d/f;

    const-string v8, "MixNetwork"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/networkbench/agent/impl/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/d/f;->h:Lcom/networkbench/agent/impl/d/f;

    filled-new-array/range {v0 .. v7}, [Lcom/networkbench/agent/impl/d/f;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/f;->i:[Lcom/networkbench/agent/impl/d/f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/d/f;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/d/f;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/d/f;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->i:[Lcom/networkbench/agent/impl/d/f;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/d/f;

    return-object v0
.end method
