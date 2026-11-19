.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eyebrow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;
    }
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    return-void

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    goto :goto_0
.end method
