.class public final enum Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

.field public static final enum SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    const/4 v1, 0x0

    const-string v2, "skincare"

    const-string v3, "SKINCARE"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    const/4 v2, 0x1

    const-string v3, "shade_finder"

    const-string v4, "SHADE_FINDER"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    return-object v0
.end method
