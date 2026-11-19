.class public final enum Lcom/perfectcorp/perfectlib/ph/template/e$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/template/e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/template/e$c;

.field private static enum b:Lcom/perfectcorp/perfectlib/ph/template/e$c;

.field private static enum c:Lcom/perfectcorp/perfectlib/ph/template/e$c;

.field private static enum d:Lcom/perfectcorp/perfectlib/ph/template/e$c;

.field private static final synthetic f:[Lcom/perfectcorp/perfectlib/ph/template/e$c;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/e$c;

    const/4 v1, 0x0

    const-string v2, "Natural"

    const-string v3, "NATURAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/e$c;->b:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/e$c;

    const/4 v2, 0x1

    const-string v3, "Costume"

    const-string v4, "COSTUME"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/template/e$c;->c:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/e$c;

    const/4 v3, 0x2

    const-string v4, "UserMade"

    const-string v5, "USERMADE"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/template/e$c;->a:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/e$c;

    const/4 v4, 0x3

    const-string v5, "None"

    const-string v6, "NONE"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/ph/template/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ph/template/e$c;->d:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/ph/template/e$c;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/e$c;->f:[Lcom/perfectcorp/perfectlib/ph/template/e$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/template/e$c;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/e$c;
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/e$c;->f:[Lcom/perfectcorp/perfectlib/ph/template/e$c;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/template/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/template/e$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/template/e$c;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ph/template/e$c;->d:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    return-object p0
.end method
