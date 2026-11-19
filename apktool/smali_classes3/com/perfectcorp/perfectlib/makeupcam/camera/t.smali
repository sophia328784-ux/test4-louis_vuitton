.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->c:Z

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkinSmoothConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->d:I

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/t;->c:Z

    invoke-interface {v0, v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->n(IZ)V

    return-void
.end method
