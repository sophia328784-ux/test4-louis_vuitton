.class public final enum Lcom/networkbench/agent/impl/g/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/g/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum b:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum c:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum d:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum e:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum f:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum g:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum h:Lcom/networkbench/agent/impl/g/a/a;

.field public static final enum i:Lcom/networkbench/agent/impl/g/a/a;

.field private static final synthetic j:[Lcom/networkbench/agent/impl/g/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/networkbench/agent/impl/g/a/a;

    const-string v1, "SINGLE_TAP_CONFIRMED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/g/a/a;->a:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v1, Lcom/networkbench/agent/impl/g/a/a;

    const-string v2, "DOUBLE_TAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/g/a/a;->b:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v2, Lcom/networkbench/agent/impl/g/a/a;

    const-string v3, "DOUBLE_TAP_EVENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/g/a/a;->c:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v3, Lcom/networkbench/agent/impl/g/a/a;

    const-string v4, "DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/g/a/a;->d:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v4, Lcom/networkbench/agent/impl/g/a/a;

    const-string v5, "SHOW_PRESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/g/a/a;->e:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v5, Lcom/networkbench/agent/impl/g/a/a;

    const-string v6, "SINGLE_TAP_UP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/g/a/a;->f:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v6, Lcom/networkbench/agent/impl/g/a/a;

    const-string v7, "SCROLL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/g/a/a;->g:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v7, Lcom/networkbench/agent/impl/g/a/a;

    const-string v8, "LONG_PRESS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/g/a/a;->h:Lcom/networkbench/agent/impl/g/a/a;

    new-instance v8, Lcom/networkbench/agent/impl/g/a/a;

    const-string v9, "FLING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/networkbench/agent/impl/g/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/networkbench/agent/impl/g/a/a;->i:Lcom/networkbench/agent/impl/g/a/a;

    filled-new-array/range {v0 .. v8}, [Lcom/networkbench/agent/impl/g/a/a;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/g/a/a;->j:[Lcom/networkbench/agent/impl/g/a/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/g/a/a;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/g/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/g/a/a;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/g/a/a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/g/a/a;->j:[Lcom/networkbench/agent/impl/g/a/a;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/g/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/g/a/a;

    return-object v0
.end method
