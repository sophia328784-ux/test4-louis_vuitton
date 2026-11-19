.class public final enum Lcom/networkbench/agent/impl/i/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/i/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/i/e;

.field public static final enum b:Lcom/networkbench/agent/impl/i/e;

.field public static final enum c:Lcom/networkbench/agent/impl/i/e;

.field public static final enum d:Lcom/networkbench/agent/impl/i/e;

.field private static final synthetic f:[Lcom/networkbench/agent/impl/i/e;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/i/e;

    const-string v1, "PAGE_STATUS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/i/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/i/e;->a:Lcom/networkbench/agent/impl/i/e;

    new-instance v1, Lcom/networkbench/agent/impl/i/e;

    const-string v2, "PAGE_STATUS_TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/networkbench/agent/impl/i/e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/i/e;->b:Lcom/networkbench/agent/impl/i/e;

    new-instance v2, Lcom/networkbench/agent/impl/i/e;

    const-string v3, "PAGE_STATUS_INTERRUPT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/i/e;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/i/e;->c:Lcom/networkbench/agent/impl/i/e;

    new-instance v3, Lcom/networkbench/agent/impl/i/e;

    const-string v4, "PAGE_STATUS_UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/networkbench/agent/impl/i/e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/i/e;->d:Lcom/networkbench/agent/impl/i/e;

    filled-new-array {v0, v1, v2, v3}, [Lcom/networkbench/agent/impl/i/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/i/e;->f:[Lcom/networkbench/agent/impl/i/e;

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

    iput p3, p0, Lcom/networkbench/agent/impl/i/e;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/i/e;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/i/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/i/e;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/i/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/i/e;->f:[Lcom/networkbench/agent/impl/i/e;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/i/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/i/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/i/e;->e:I

    return p0
.end method
