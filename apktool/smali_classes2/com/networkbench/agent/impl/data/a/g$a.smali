.class public final enum Lcom/networkbench/agent/impl/data/a/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/data/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/data/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/data/a/g$a;

.field public static final enum b:Lcom/networkbench/agent/impl/data/a/g$a;

.field public static final enum c:Lcom/networkbench/agent/impl/data/a/g$a;

.field public static final enum d:Lcom/networkbench/agent/impl/data/a/g$a;

.field public static final enum e:Lcom/networkbench/agent/impl/data/a/g$a;

.field private static final synthetic g:[Lcom/networkbench/agent/impl/data/a/g$a;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/networkbench/agent/impl/data/a/g$a;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/data/a/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->a:Lcom/networkbench/agent/impl/data/a/g$a;

    new-instance v1, Lcom/networkbench/agent/impl/data/a/g$a;

    const-string v2, "appCrash"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/networkbench/agent/impl/data/a/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->b:Lcom/networkbench/agent/impl/data/a/g$a;

    new-instance v2, Lcom/networkbench/agent/impl/data/a/g$a;

    const-string v3, "networkError"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/data/a/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    new-instance v3, Lcom/networkbench/agent/impl/data/a/g$a;

    const-string v4, "kartun"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/networkbench/agent/impl/data/a/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    new-instance v4, Lcom/networkbench/agent/impl/data/a/g$a;

    const-string v5, "slowAction"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/networkbench/agent/impl/data/a/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/networkbench/agent/impl/data/a/g$a;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->g:[Lcom/networkbench/agent/impl/data/a/g$a;

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

    iput p3, p0, Lcom/networkbench/agent/impl/data/a/g$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/a/g$a;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/a/g$a;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/data/a/g$a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->g:[Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/data/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/data/a/g$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/a/g$a;->f:I

    return p0
.end method
