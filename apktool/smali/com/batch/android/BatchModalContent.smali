.class public Lcom/batch/android/BatchModalContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInAppMessage$Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchModalContent$Action;,
        Lcom/batch/android/BatchModalContent$CTA;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/BatchModalContent$CTA;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/batch/android/BatchModalContent$Action;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/batch/android/h0/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->d:Ljava/util/List;

    iget-object v0, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/c;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchModalContent;->g:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/batch/android/h0/c;->p:Z

    iput-boolean v0, p0, Lcom/batch/android/BatchModalContent;->h:Z

    iget-object v0, p1, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/batch/android/BatchModalContent$Action;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchModalContent$Action;-><init>(Lcom/batch/android/f0/a;)V

    iput-object v1, p0, Lcom/batch/android/BatchModalContent;->e:Lcom/batch/android/BatchModalContent$Action;

    :cond_0
    iget-object v0, p1, Lcom/batch/android/h0/c;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/f0/b;

    iget-object v2, p0, Lcom/batch/android/BatchModalContent;->d:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchModalContent$CTA;

    invoke-direct {v3, v1}, Lcom/batch/android/BatchModalContent$CTA;-><init>(Lcom/batch/android/f0/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/batch/android/h0/c;->q:I

    if-lez p1, :cond_2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchModalContent;->i:Ljava/lang/Long;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAutoCloseTimeMillis()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->i:Ljava/lang/Long;

    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getCtas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchModalContent$CTA;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->d:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGlobalTapAction()Lcom/batch/android/BatchModalContent$Action;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->e:Lcom/batch/android/BatchModalContent$Action;

    return-object p0
.end method

.method public getMediaAccessibilityDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchModalContent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public isShowCloseButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/BatchModalContent;->h:Z

    return p0
.end method
