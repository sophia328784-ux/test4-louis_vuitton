.class public final enum Lcom/networkbench/agent/impl/j/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/j/d;

.field public static final enum b:Lcom/networkbench/agent/impl/j/d;

.field public static final enum c:Lcom/networkbench/agent/impl/j/d;

.field public static final enum d:Lcom/networkbench/agent/impl/j/d;

.field public static final enum e:Lcom/networkbench/agent/impl/j/d;

.field public static final enum f:Lcom/networkbench/agent/impl/j/d;

.field public static final enum g:Lcom/networkbench/agent/impl/j/d;

.field private static final synthetic i:[Lcom/networkbench/agent/impl/j/d;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/networkbench/agent/impl/j/d;

    const-string v1, "INIT_MOBILE_APP"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/j/d;->a:Lcom/networkbench/agent/impl/j/d;

    new-instance v1, Lcom/networkbench/agent/impl/j/d;

    const-string v2, "UPLOAD_MOBILE_DATA"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/j/d;->b:Lcom/networkbench/agent/impl/j/d;

    new-instance v2, Lcom/networkbench/agent/impl/j/d;

    const-string v4, "UI_TRACE_DATA"

    const/4 v6, 0x4

    invoke-direct {v2, v4, v3, v6}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/j/d;->c:Lcom/networkbench/agent/impl/j/d;

    new-instance v3, Lcom/networkbench/agent/impl/j/d;

    const-string v4, "CRASH_DATA"

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v7}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;

    new-instance v4, Lcom/networkbench/agent/impl/j/d;

    const-string v5, "ANR_DATA"

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    new-instance v5, Lcom/networkbench/agent/impl/j/d;

    const-string v6, "USER_BEHAVIOUR"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v9}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/networkbench/agent/impl/j/d;->f:Lcom/networkbench/agent/impl/j/d;

    new-instance v6, Lcom/networkbench/agent/impl/j/d;

    const-string v7, "CONTROLLER"

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Lcom/networkbench/agent/impl/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/networkbench/agent/impl/j/d;->g:Lcom/networkbench/agent/impl/j/d;

    filled-new-array/range {v0 .. v6}, [Lcom/networkbench/agent/impl/j/d;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/j/d;->i:[Lcom/networkbench/agent/impl/j/d;

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

    iput p3, p0, Lcom/networkbench/agent/impl/j/d;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/j/d;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/j/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/j/d;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/j/d;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/j/d;->i:[Lcom/networkbench/agent/impl/j/d;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/j/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/j/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/j/d;->h:I

    return p0
.end method
