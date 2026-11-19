.class public Lcom/batch/android/BatchInterstitialContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInAppMessage$Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchInterstitialContent$CTA;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInterstitialContent$CTA;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/batch/android/h0/g;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/g;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/g;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/batch/android/h0/g;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchInterstitialContent;->f:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/batch/android/h0/g;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/f0/b;

    iget-object v2, p0, Lcom/batch/android/BatchInterstitialContent;->e:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchInterstitialContent$CTA;

    invoke-direct {v3, v1}, Lcom/batch/android/BatchInterstitialContent$CTA;-><init>(Lcom/batch/android/f0/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/batch/android/h0/g;->p:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/batch/android/BatchInterstitialContent;->h:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getCtas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInterstitialContent$CTA;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->e:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaAccessibilityDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInterstitialContent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public shouldShowCloseButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/BatchInterstitialContent;->h:Z

    return p0
.end method
