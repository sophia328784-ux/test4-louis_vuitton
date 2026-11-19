.class public final enum Lcom/networkbench/agent/impl/plugin/c/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/plugin/c/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/plugin/c/b$a;

.field public static final enum b:Lcom/networkbench/agent/impl/plugin/c/b$a;

.field public static final enum c:Lcom/networkbench/agent/impl/plugin/c/b$a;

.field public static final enum d:Lcom/networkbench/agent/impl/plugin/c/b$a;

.field private static final synthetic f:[Lcom/networkbench/agent/impl/plugin/c/b$a;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/networkbench/agent/impl/plugin/c/b$a;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/plugin/c/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->a:Lcom/networkbench/agent/impl/plugin/c/b$a;

    new-instance v1, Lcom/networkbench/agent/impl/plugin/c/b$a;

    const-string v2, "INFO"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/plugin/c/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/plugin/c/b$a;->b:Lcom/networkbench/agent/impl/plugin/c/b$a;

    new-instance v2, Lcom/networkbench/agent/impl/plugin/c/b$a;

    const-string v3, "WARM"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/networkbench/agent/impl/plugin/c/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/plugin/c/b$a;->c:Lcom/networkbench/agent/impl/plugin/c/b$a;

    new-instance v3, Lcom/networkbench/agent/impl/plugin/c/b$a;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "ERROR"

    invoke-direct {v3, v6, v4, v5}, Lcom/networkbench/agent/impl/plugin/c/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/plugin/c/b$a;->d:Lcom/networkbench/agent/impl/plugin/c/b$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/networkbench/agent/impl/plugin/c/b$a;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->f:[Lcom/networkbench/agent/impl/plugin/c/b$a;

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

    iput p3, p0, Lcom/networkbench/agent/impl/plugin/c/b$a;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/c/b$a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/c/b$a;->e:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/plugin/c/b$a;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/plugin/c/b$a;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/plugin/c/b$a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->f:[Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/plugin/c/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/plugin/c/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/networkbench/agent/impl/plugin/c/b$a;->e:I

    return p0
.end method
