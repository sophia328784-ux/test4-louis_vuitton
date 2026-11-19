.class public final enum Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    const-string v2, "DOWNLOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->c:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    return-void
.end method

.method public static a()[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->c:[Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    return-object v0
.end method
