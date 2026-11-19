.class public final enum Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

.field private static final synthetic e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    const/4 v1, 0x0

    const-string v2, "sku"

    const-string v3, "SKU"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    const/4 v2, 0x1

    const-string v3, "look"

    const-string v4, "LOOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    const/4 v3, 0x2

    const-string v4, "sku_set"

    const-string v5, "SKU_SET"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->e:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    return-object v0
.end method
