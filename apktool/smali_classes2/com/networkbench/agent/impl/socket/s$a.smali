.class public final enum Lcom/networkbench/agent/impl/socket/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/socket/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/socket/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/socket/s$a;

.field public static final enum b:Lcom/networkbench/agent/impl/socket/s$a;

.field private static final synthetic e:[Lcom/networkbench/agent/impl/socket/s$a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/socket/s$a;

    const-string v1, "http"

    const/16 v2, 0x50

    const-string v3, "HTTP"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/networkbench/agent/impl/socket/s$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/socket/s$a;->a:Lcom/networkbench/agent/impl/socket/s$a;

    new-instance v1, Lcom/networkbench/agent/impl/socket/s$a;

    const-string v2, "https"

    const/16 v3, 0x1bb

    const-string v4, "HTTPS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/networkbench/agent/impl/socket/s$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/socket/s$a;->b:Lcom/networkbench/agent/impl/socket/s$a;

    filled-new-array {v0, v1}, [Lcom/networkbench/agent/impl/socket/s$a;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/socket/s$a;->e:[Lcom/networkbench/agent/impl/socket/s$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/networkbench/agent/impl/socket/s$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/networkbench/agent/impl/socket/s$a;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/socket/s$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/s$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/socket/s$a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/socket/s$a;->d:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/socket/s$a;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/socket/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/socket/s$a;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/socket/s$a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/socket/s$a;->e:[Lcom/networkbench/agent/impl/socket/s$a;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/socket/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/socket/s$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/s$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/networkbench/agent/impl/socket/s$a;->d:I

    return p0
.end method
