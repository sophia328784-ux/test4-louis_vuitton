.class public final enum Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

.field public static final enum ERROR:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

.field public static final enum INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

.field public static final enum NONE:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

.field public static final enum WARNING:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

.field private static final synthetic b:[Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->NONE:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    new-instance v1, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->DEBUG:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    new-instance v2, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    new-instance v3, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    const-string v4, "WARNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->WARNING:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    new-instance v4, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->ERROR:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->b:[Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->b:[Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->a:I

    return p0
.end method
