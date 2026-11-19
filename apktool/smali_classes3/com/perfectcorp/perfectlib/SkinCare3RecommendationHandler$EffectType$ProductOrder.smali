.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductOrder"
.end annotation


# instance fields
.field final id:J

.field final order:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;->id:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;->order:J

    return-void
.end method
