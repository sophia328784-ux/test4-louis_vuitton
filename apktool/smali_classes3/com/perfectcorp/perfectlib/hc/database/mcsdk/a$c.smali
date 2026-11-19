.class public final enum Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

.field public static final enum b:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

.field private static final synthetic d:[Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    const/4 v1, 0x0

    const-string v2, "sku"

    const-string v3, "SKU"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->a:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    const/4 v2, 0x1

    const-string v3, "look"

    const-string v4, "LOOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->b:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->d:[Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->d:[Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unknown type="

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
