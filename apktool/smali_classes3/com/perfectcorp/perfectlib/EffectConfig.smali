.class public final Lcom/perfectcorp/perfectlib/EffectConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/EffectConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/perfectlib/EffectConfig;->builder()Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->builder()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->setHairDye(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;)Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/EffectConfig;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/EffectConfig$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectConfig;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/EffectConfig$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getHairDye()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectConfig;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "EffectConfig"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "hairDye"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectConfig;->a:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
