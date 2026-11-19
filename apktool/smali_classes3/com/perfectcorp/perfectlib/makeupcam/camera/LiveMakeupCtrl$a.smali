.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->b:Landroid/graphics/Bitmap;

    return-void
.end method
