.class public final enum Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

.field private static enum d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

.field private static final synthetic f:[Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    const-string v2, "OK"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    const-string v3, "NOT_FOUND"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    const-string v4, "NOT_SUPPORT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->f:[Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;)I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->e:I

    return p0
.end method

.method public static b(I)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->c()[Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->e:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    return-object p0
.end method

.method public static c()[Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->f:[Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    return-object v0
.end method
