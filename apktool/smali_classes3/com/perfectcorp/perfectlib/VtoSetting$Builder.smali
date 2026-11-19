.class public final Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/VtoSetting;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/VtoSetting;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Should setup one of skuSetGuid, productGuid or skuGuid first, all of them are empty!"

    :goto_0
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Only can setup one of skuSetGuid and productGuid, both of them are not empty!"

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "Only can setup one of skuSetGuid and skuGuid, both of them are not empty!"

    goto :goto_0

    :cond_5
    :goto_3
    new-instance v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/VtoSetting;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting$Builder;)V

    return-object v0
.end method

.method public final setPaletteGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setParameter(Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    return-object p0
.end method

.method public final setPatternGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setSkuSetGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setWearingStyleGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
