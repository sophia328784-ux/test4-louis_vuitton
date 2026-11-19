.class public Lcom/batch/android/BatchImageContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInAppMessage$Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchImageContent$Action;
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/BatchImageContent$Action;

.field private b:J

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/batch/android/messaging/Size2D;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/batch/android/h0/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/batch/android/h0/d;->j:J

    iput-wide v0, p0, Lcom/batch/android/BatchImageContent;->b:J

    iget-boolean v0, p1, Lcom/batch/android/h0/d;->k:Z

    iput-boolean v0, p0, Lcom/batch/android/BatchImageContent;->c:Z

    iget-object v0, p1, Lcom/batch/android/h0/d;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchImageContent;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchImageContent;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/d;->n:Lcom/batch/android/messaging/Size2D;

    iput-object v0, p0, Lcom/batch/android/BatchImageContent;->f:Lcom/batch/android/messaging/Size2D;

    iget v0, p1, Lcom/batch/android/h0/d;->o:I

    iput v0, p0, Lcom/batch/android/BatchImageContent;->g:I

    iget-boolean v0, p1, Lcom/batch/android/h0/d;->p:Z

    iput-boolean v0, p0, Lcom/batch/android/BatchImageContent;->h:Z

    iget-object p1, p1, Lcom/batch/android/h0/d;->i:Lcom/batch/android/f0/a;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/batch/android/BatchImageContent$Action;

    invoke-direct {v0, p1}, Lcom/batch/android/BatchImageContent$Action;-><init>(Lcom/batch/android/f0/a;)V

    iput-object v0, p0, Lcom/batch/android/BatchImageContent;->a:Lcom/batch/android/BatchImageContent$Action;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoCloseDelay()I
    .locals 0

    iget p0, p0, Lcom/batch/android/BatchImageContent;->g:I

    return p0
.end method

.method public getGlobalTapAction()Lcom/batch/android/BatchImageContent$Action;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchImageContent;->a:Lcom/batch/android/BatchImageContent$Action;

    return-object p0
.end method

.method public getGlobalTapDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/BatchImageContent;->b:J

    return-wide v0
.end method

.method public getImageDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchImageContent;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getImageSize()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchImageContent;->f:Lcom/batch/android/messaging/Size2D;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/batch/android/BatchImageContent;->f:Lcom/batch/android/messaging/Size2D;

    iget v1, p0, Lcom/batch/android/messaging/Size2D;->b:I

    iget p0, p0, Lcom/batch/android/messaging/Size2D;->c:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchImageContent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public isAllowSwipeToDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/BatchImageContent;->c:Z

    return p0
.end method

.method public isFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/BatchImageContent;->h:Z

    return p0
.end method
