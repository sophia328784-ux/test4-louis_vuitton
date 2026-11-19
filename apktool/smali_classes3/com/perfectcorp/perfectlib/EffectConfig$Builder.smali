.class public final Lcom/perfectcorp/perfectlib/EffectConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/EffectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/EffectConfig;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/EffectConfig;-><init>(Lcom/perfectcorp/perfectlib/EffectConfig$Builder;)V

    return-object v0
.end method

.method public final setHairDye(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;)Lcom/perfectcorp/perfectlib/EffectConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    return-object p0
.end method
