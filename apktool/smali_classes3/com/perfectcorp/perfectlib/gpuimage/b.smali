.class final Lcom/perfectcorp/perfectlib/gpuimage/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/perfectcorp/perfectlib/gpuimage/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/gpuimage/a;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/gpuimage/b;->b:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/gpuimage/b;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/b;->b:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/b;->a:Landroid/graphics/Bitmap;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/gpuimage/a;->a:Landroid/graphics/Bitmap;

    return-void
.end method
