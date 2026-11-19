.class public final enum Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

.field public static final enum OK:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->OK:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    new-instance v1, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    const-string v2, "MAPPING_INCOMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->a:[Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->a:[Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    return-object v0
.end method
