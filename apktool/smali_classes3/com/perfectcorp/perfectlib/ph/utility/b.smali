.class public final Lcom/perfectcorp/perfectlib/ph/utility/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/utility/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:F

.field public final h:Z

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:Lcom/perfectcorp/perfectlib/RingPosition;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const-string v1, "perfectEffect can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->b:Ljava/lang/String;

    const-string v1, "skuSetId can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->d:Ljava/lang/String;

    const-string v1, "productId can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->e:Ljava/lang/String;

    const-string v1, "skuGuid can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->f:Ljava/lang/String;

    const-string v1, "obbPath can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->c:Ljava/lang/String;

    const-string v1, "lookId can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->e:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->g:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->g:F

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->h:Z

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->i:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->j:F

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->k:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "HandParameter"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuSetId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "productId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "obbPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "objectDistanceRatio"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRigidBody"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "objectDistanceRatioBack"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "objectDistanceRatioPalm"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "adaptiveRotate"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ringPosition"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
