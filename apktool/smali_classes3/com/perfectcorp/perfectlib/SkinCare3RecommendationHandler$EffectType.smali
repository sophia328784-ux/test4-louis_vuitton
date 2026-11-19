.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;
    }
.end annotation


# instance fields
.field final productOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;",
            ">;"
        }
    .end annotation
.end field

.field final srcType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;->srcType:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;->productOrder:Ljava/util/List;

    return-void
.end method
