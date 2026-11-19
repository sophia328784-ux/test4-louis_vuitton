.class final Lcom/perfectcorp/perfectlib/EffectId$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/EffectId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;

.field public j:Lcom/perfectcorp/perfectlib/NailPosition;

.field public k:Ljava/util/List;

.field public l:Lcom/perfectcorp/perfectlib/EffectConfig;

.field public m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

.field public n:Lcom/perfectcorp/perfectlib/ph/camera/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->k:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/EffectId;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Only can setup one of skuSetGuid and skuGuid, both of them are not empty!"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/EffectId;-><init>(Lcom/perfectcorp/perfectlib/EffectId$Builder;)V

    return-object v0

    :cond_2
    const-string p0, "Size of intensity and color list is not the same!"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->i:Ljava/util/List;

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->k:Ljava/util/List;

    return-void
.end method
