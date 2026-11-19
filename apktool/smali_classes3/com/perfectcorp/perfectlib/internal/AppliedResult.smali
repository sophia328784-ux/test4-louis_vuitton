.class public Lcom/perfectcorp/perfectlib/internal/AppliedResult;
.super Ljava/lang/Object;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final configuration:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->configuration:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getConfiguration()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->configuration:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    return-object p0
.end method
