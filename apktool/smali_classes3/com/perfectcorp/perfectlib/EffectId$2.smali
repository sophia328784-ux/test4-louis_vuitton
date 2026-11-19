.class Lcom/perfectcorp/perfectlib/EffectId$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/EffectId;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/EffectId;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$2;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$2;->a:Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v2, :cond_0

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_1

    const-string p0, "N/A"

    return-object p0

    :cond_1
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/EffectId$2;->a:Lcom/perfectcorp/perfectlib/EffectId;

    if-eqz v0, :cond_2

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId$2;->a:Lcom/perfectcorp/perfectlib/EffectId;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId$2;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
