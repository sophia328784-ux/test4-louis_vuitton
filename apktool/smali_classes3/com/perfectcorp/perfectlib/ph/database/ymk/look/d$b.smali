.class public final enum Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

.field private static final synthetic e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    const-string v1, "MAKEUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    const-string v2, "NAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    const-string v3, "JEWELRY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unknown type string "

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
