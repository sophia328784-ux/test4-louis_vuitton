.class public final enum Lcom/networkbench/agent/impl/harvest/RequestMethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/harvest/RequestMethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum CONNECT:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum DELETE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum HEAD:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum OPTIONS:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum POST:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum PUT:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field public static final enum TRACE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v1, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->POST:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v2, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v3, "PUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->PUT:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v3, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v4, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->DELETE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v4, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v5, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->HEAD:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v5, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v6, "TRACE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->TRACE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v6, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v7, "OPTIONS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->OPTIONS:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    new-instance v7, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    const-string v8, "CONNECT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/networkbench/agent/impl/harvest/RequestMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->CONNECT:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    filled-new-array/range {v0 .. v7}, [Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->$VALUES:[Lcom/networkbench/agent/impl/harvest/RequestMethodType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->$VALUES:[Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/harvest/RequestMethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object v0
.end method
