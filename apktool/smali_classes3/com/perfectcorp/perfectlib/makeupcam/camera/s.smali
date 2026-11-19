.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;ILcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->d:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    if-ne v3, v2, :cond_0

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz p0, :cond_1

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    :cond_1
    return-void
.end method
