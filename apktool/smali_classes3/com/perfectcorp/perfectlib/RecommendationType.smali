.class public abstract enum Lcom/perfectcorp/perfectlib/RecommendationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SHADE_FINDER:Lcom/perfectcorp/perfectlib/RecommendationType;

.field public static final enum SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/RecommendationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/RecommendationType$1;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/RecommendationType$1;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/RecommendationType;->SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

    new-instance v1, Lcom/perfectcorp/perfectlib/RecommendationType$2;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/RecommendationType$2;-><init>()V

    sput-object v1, Lcom/perfectcorp/perfectlib/RecommendationType;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/RecommendationType;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/perfectcorp/perfectlib/RecommendationType;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/perfectcorp/perfectlib/RecommendationType;->a:[Lcom/perfectcorp/perfectlib/RecommendationType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RecommendationType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/RecommendationType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/RecommendationType;->a:[Lcom/perfectcorp/perfectlib/RecommendationType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/RecommendationType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
