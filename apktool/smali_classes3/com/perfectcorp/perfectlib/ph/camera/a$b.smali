.class public final enum Lcom/perfectcorp/perfectlib/ph/camera/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/camera/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field public static final enum d:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field public static final enum e:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field private static final synthetic g:[Lcom/perfectcorp/perfectlib/ph/camera/a$b;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    const/4 v1, 0x0

    const-string v2, "not part of template format; for handling v14 palette only case"

    const-string v3, "V14_PALETTE_ONLY_CASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->a:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    const/4 v2, 0x1

    const-string v3, "PolishImage"

    const-string v4, "POLISH_IMAGE"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->b:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    const/4 v3, 0x2

    const-string v4, "PolishColor"

    const-string v5, "POLISH_COLOR"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->c:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    const/4 v4, 0x3

    const-string v5, "TipShape"

    const-string v6, "TIP_SHAPE"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->d:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    const/4 v5, 0x4

    const-string v6, "TipImage"

    const-string v7, "TIP_IMAGE"

    invoke-direct {v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->e:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->g:[Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()[Lcom/perfectcorp/perfectlib/ph/camera/a$b;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->g:[Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/camera/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/camera/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
