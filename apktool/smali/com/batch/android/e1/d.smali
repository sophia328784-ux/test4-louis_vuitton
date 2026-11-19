.class public Lcom/batch/android/e1/d;
.super Lcom/batch/android/e1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e1/c;


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/e1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-boolean p5, p0, Lcom/batch/android/e1/d;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 0

    .line 61
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Landroidx/core/app/NotificationCompat$Style;
    .locals 4

    iget-object v0, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v1, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->e:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, p0, Lcom/batch/android/e1/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Style;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Style;->d:Z

    iget-object v3, p0, Lcom/batch/android/e1/b;->c:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/batch/android/e1/d;->e:Z

    if-nez p0, :cond_1

    iput-object v2, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->f:Landroidx/core/graphics/drawable/IconCompat;

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->g:Z

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object p0, p0, Lcom/batch/android/e1/b;->b:Ljava/lang/String;

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/app/NotificationCompat$BigTextStyle;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/batch/android/e1/d;->e:Z

    if-nez v1, :cond_1

    .line 63
    iget-object p0, p0, Lcom/batch/android/e1/b;->c:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    return-void

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/batch/android/e1/b;->c:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 65
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    .line 60
    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
