.class public Lcom/batch/android/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e0/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 6
    return-void
.end method

.method public a([I)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(I)[B
    .locals 0

    .line 8
    new-array p0, p1, [B

    return-object p0
.end method

.method public b(I)[I
    .locals 0

    new-array p0, p1, [I

    return-object p0
.end method
