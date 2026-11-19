.class public final enum Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum JEWELRY_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field public static final enum MAKEUP_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field public static final enum NAIL_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field public static final enum SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field public static final enum TUTORIAL:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const/4 v1, 0x0

    const-string v2, "sku"

    const-string v3, "SKU"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const/4 v2, 0x1

    const-string v3, "look"

    const-string v4, "MAKEUP_LOOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->MAKEUP_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const/4 v3, 0x2

    const-string v4, "nail_look"

    const-string v5, "NAIL_LOOK"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->NAIL_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    new-instance v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const/4 v4, 0x3

    const-string v5, "jewelry_look"

    const-string v6, "JEWELRY_LOOK"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->JEWELRY_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    new-instance v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const/4 v5, 0x4

    const-string v6, "tutorial"

    const-string v7, "TUTORIAL"

    invoke-direct {v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->TUTORIAL:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->b:[Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->b:[Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    return-object v0
.end method
