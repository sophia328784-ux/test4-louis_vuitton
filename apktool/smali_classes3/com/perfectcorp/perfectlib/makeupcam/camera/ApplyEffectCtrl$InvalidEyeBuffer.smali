.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidEyeBuffer"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x20f58

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->a:[I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->b:[B

    return-void
.end method
