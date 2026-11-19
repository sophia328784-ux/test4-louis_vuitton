.class public Lcom/batch/android/e1/a;
.super Lcom/batch/android/e1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e1/a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "apen_layout_type"


# instance fields
.field private e:Lcom/batch/android/e1/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/e1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/batch/android/e1/a$a;->g:Lcom/batch/android/e1/a$a;

    iput-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    invoke-virtual {v0}, Lcom/batch/android/e1/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Landroid/widget/RemoteViews;

    sget v1, Lcom/batch/android/R$layout;->com_batchsdk_notification_layout_apen_expanded_200dp:I

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    sget v1, Lcom/batch/android/R$layout;->com_batchsdk_notification_layout_apen_expanded:I

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 86
    :goto_0
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_title:I

    iget-object v1, p0, Lcom/batch/android/e1/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_body:I

    iget-object v1, p0, Lcom/batch/android/e1/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 88
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_icon_centercrop:I

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_icon_fitcenter:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    iget-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    invoke-virtual {p1}, Lcom/batch/android/e1/a$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_icon_fitcenter:I

    goto :goto_1

    .line 92
    :cond_1
    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_icon_centercrop:I

    .line 93
    :goto_1
    iget-object p0, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 94
    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    .line 95
    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    return-object v0
.end method

.method public a()Landroidx/core/app/NotificationCompat$Style;
    .locals 0

    .line 96
    new-instance p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    return-object p0
.end method

.method public a(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 97
    return-void
.end method

.method public a(Lcom/batch/android/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_5

    const-string v0, "apen_layout_type"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4bf3df6f

    if-eq v0, v1, :cond_3

    const v1, -0x32f31621

    if-eq v0, v1, :cond_2

    const v1, -0x3288f37c

    if-eq v0, v1, :cond_1

    const v1, -0x2b70930a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "fill_200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/batch/android/e1/a$a;->e:Lcom/batch/android/e1/a$a;

    iput-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    return-void

    :cond_1
    const-string v0, "fit_200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "fill_mp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/batch/android/e1/a$a;->d:Lcom/batch/android/e1/a$a;

    iput-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    return-void

    :cond_3
    const-string v0, "fit_mp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/batch/android/e1/a$a;->f:Lcom/batch/android/e1/a$a;

    iput-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    return-void

    :cond_4
    :goto_0
    sget-object p1, Lcom/batch/android/e1/a$a;->g:Lcom/batch/android/e1/a$a;

    iput-object p1, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews;

    sget v1, Lcom/batch/android/R$layout;->com_batchsdk_notification_layout_apen_collapsed:I

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_title:I

    iget-object v1, p0, Lcom/batch/android/e1/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/batch/android/R$id;->com_batchsdk_notification_body:I

    iget-object v1, p0, Lcom/batch/android/e1/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/batch/android/e1/b;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/batch/android/e1/b;->d:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p1, :cond_1

    sget p0, Lcom/batch/android/R$id;->com_batchsdk_notification_icon1:I

    invoke-virtual {v0, p0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    sget p0, Lcom/batch/android/R$id;->com_batchsdk_notification_icon1:I

    const/16 p1, 0x8

    invoke-virtual {v0, p0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0
.end method

.method public b()Lcom/batch/android/e1/a$a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/batch/android/e1/a;->e:Lcom/batch/android/e1/a$a;

    return-object p0
.end method
