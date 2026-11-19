.class public final Lcom/perfectcorp/perfectlib/EffectId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/EffectId$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_ID:Ljava/lang/String; = "N/A"


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final j:Lcom/perfectcorp/perfectlib/NailPosition;

.field public final k:Lcom/perfectcorp/perfectlib/RingPosition;

.field public final l:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final m:Lcom/perfectcorp/perfectlib/EffectConfig;

.field public final n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

.field public final o:Lcom/perfectcorp/perfectlib/ph/camera/a;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/EffectId$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of v1, v0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->k:Lcom/perfectcorp/perfectlib/RingPosition;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->l:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->m:Lcom/perfectcorp/perfectlib/EffectConfig;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->n:Lcom/perfectcorp/perfectlib/ph/camera/a;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId;->o:Lcom/perfectcorp/perfectlib/ph/camera/a;

    new-instance p1, Lcom/perfectcorp/perfectlib/EffectId$1;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/EffectId$1;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/EffectId$1;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId;->p:Ljava/lang/String;

    new-instance p1, Lcom/perfectcorp/perfectlib/EffectId$2;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/EffectId$2;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/EffectId$2;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p1

    .line 132
    new-instance v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    .line 133
    invoke-virtual {v0, p2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/EffectId;-><init>(Lcom/perfectcorp/perfectlib/EffectId$Builder;)V

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/EffectId$Builder;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->l:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->m:Lcom/perfectcorp/perfectlib/EffectConfig;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    :goto_0
    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->o:Lcom/perfectcorp/perfectlib/ph/camera/a;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->n:Lcom/perfectcorp/perfectlib/ph/camera/a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "N/A"

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "N/A"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getFunStickerGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntensities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final getNailPosition()Lcom/perfectcorp/perfectlib/NailPosition;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    return-object p0
.end method

.method public final getPaletteGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getPatternGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getRingPosition()Lcom/perfectcorp/perfectlib/RingPosition;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->k:Lcom/perfectcorp/perfectlib/RingPosition;

    return-object p0
.end method

.method public final getSkuGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkuSetGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0
.end method

.method public final getWearingStyleGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "EffectId"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuSetGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "subItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "subSubItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "funStickerGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "wearingStyleGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "intensities"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nailPosition"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
