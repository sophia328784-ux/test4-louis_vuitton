.class public final Lcom/perfectcorp/perfectlib/ReshapeEffectId;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ReshapeEffect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->a:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    iput p2, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->b:I

    return-void
.end method


# virtual methods
.method public final getIntensity()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->b:I

    return p0
.end method

.method public final getType()Lcom/perfectcorp/perfectlib/ReshapeEffect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->a:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "ReshapeEffectId"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->a:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/ReshapeEffectId;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "intensity"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
