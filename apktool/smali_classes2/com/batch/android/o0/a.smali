.class public Lcom/batch/android/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/o0/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;)V
    .locals 3

    .line 84
    instance-of v0, p1, Lcom/batch/android/z/a$a;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/batch/android/z/a$a;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/batch/android/z/a$b;

    const-string v1, "Messaging"

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    check-cast p1, Lcom/batch/android/z/a$b;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/batch/android/e0/g;->a(Landroid/content/Context;[BZ)Lcom/batch/android/e0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 89
    const-string p1, "Could not start GIF"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 90
    :cond_1
    const-string p0, "Could not display AsyncImageDownloadTask.Result: unknown type"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;F)V
    .locals 4

    instance-of v0, p1, Lcom/batch/android/z/a$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/batch/android/z/a$a;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    float-to-int p2, p2

    float-to-int v0, v0

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    instance-of p2, p1, Lcom/batch/android/z/a$b;

    const-string v0, "Messaging"

    if-eqz p2, :cond_2

    :try_start_0
    check-cast p1, Lcom/batch/android/z/a$b;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/batch/android/e0/g;->a(Landroid/content/Context;[BZ)Lcom/batch/android/e0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not start GIF"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-string p0, "Could not display AsyncImageDownloadTask.Result: unknown type"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
