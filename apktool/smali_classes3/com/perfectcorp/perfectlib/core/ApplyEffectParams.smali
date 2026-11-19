.class public final Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;

.field public volatile f:Ljava/lang/String;

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Z

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:Z

.field public volatile s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;)V
    .locals 1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "ApplyEffectCtrl$Params"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "defaultOccluderFilePath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "defaultEyewearOccluderFilePath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "defaultNecklaceOccluderFilePath1"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "defaultNecklaceOccluderFilePath2"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "eyeshadowHdrFilePath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "eyeshadowPngFilePath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "enableFaceShaper"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableEyeEnlarger"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableMakeup"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableHairDye"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableFoundationOnly"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableFunSticker"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableDetailedReshape"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableCubeEyewear"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableReal3DEyewear"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableEarrings"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableBackground"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableTeethWhitening"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "enableNecklace"

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
