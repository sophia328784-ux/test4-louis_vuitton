.class public final enum Lcom/networkbench/agent/impl/logtrack/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/logtrack/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/networkbench/agent/impl/logtrack/c;

.field public static final enum c:Lcom/networkbench/agent/impl/logtrack/c;

.field public static final enum d:Lcom/networkbench/agent/impl/logtrack/c;

.field public static final enum e:Lcom/networkbench/agent/impl/logtrack/c;

.field public static final enum f:Lcom/networkbench/agent/impl/logtrack/c;

.field private static final synthetic g:[Lcom/networkbench/agent/impl/logtrack/c;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/networkbench/agent/impl/logtrack/c;

    const-string v1, "LOG_LEVEL_DEBUG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/logtrack/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/logtrack/c;->b:Lcom/networkbench/agent/impl/logtrack/c;

    new-instance v1, Lcom/networkbench/agent/impl/logtrack/c;

    const-string v2, "LOG_LEVEL_INFO"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/logtrack/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/logtrack/c;->c:Lcom/networkbench/agent/impl/logtrack/c;

    new-instance v2, Lcom/networkbench/agent/impl/logtrack/c;

    const-string v3, "LOG_LEVEL_VERBOSE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/networkbench/agent/impl/logtrack/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/logtrack/c;->d:Lcom/networkbench/agent/impl/logtrack/c;

    new-instance v3, Lcom/networkbench/agent/impl/logtrack/c;

    const-string v4, "LOG_LEVEL_WARNING"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/networkbench/agent/impl/logtrack/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/logtrack/c;->e:Lcom/networkbench/agent/impl/logtrack/c;

    new-instance v4, Lcom/networkbench/agent/impl/logtrack/c;

    const-string v5, "LOG_LEVEL_ERROR"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/networkbench/agent/impl/logtrack/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/logtrack/c;->f:Lcom/networkbench/agent/impl/logtrack/c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/networkbench/agent/impl/logtrack/c;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/logtrack/c;->g:[Lcom/networkbench/agent/impl/logtrack/c;

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

    iput p3, p0, Lcom/networkbench/agent/impl/logtrack/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/logtrack/c;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/logtrack/c;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/logtrack/c;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/c;->g:[Lcom/networkbench/agent/impl/logtrack/c;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/logtrack/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/logtrack/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/logtrack/c;->a:I

    return p0
.end method
