.class public final synthetic Lcom/perfectcorp/perfectlib/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/d2;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/d2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/d2;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput p4, p0, Lcom/perfectcorp/perfectlib/d2;->e:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/d2;->f:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/d2;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/d2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->k(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->u(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v6, Lcom/perfectcorp/perfectlib/e2;

    iget v2, p0, Lcom/perfectcorp/perfectlib/d2;->e:I

    iget v3, p0, Lcom/perfectcorp/perfectlib/d2;->f:I

    invoke-direct {v6, v2, v3}, Lcom/perfectcorp/perfectlib/e2;-><init>(II)V

    new-instance v7, Lcom/perfectcorp/perfectlib/MakeupCamInternal$1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v1, v7, Lcom/perfectcorp/perfectlib/MakeupCamInternal$1;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/d2;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;ILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreator;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    return-object p0
.end method
