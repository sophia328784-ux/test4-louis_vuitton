.class public Lcom/batch/android/BatchAlertContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInAppMessage$Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchAlertContent$CTA;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/batch/android/BatchAlertContent$CTA;


# direct methods
.method public constructor <init>(Lcom/batch/android/h0/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchAlertContent;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchAlertContent;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchAlertContent;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/h0/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchAlertContent;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/batch/android/h0/a;->j:Lcom/batch/android/f0/b;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/batch/android/BatchAlertContent$CTA;

    invoke-direct {v0, p1}, Lcom/batch/android/BatchAlertContent$CTA;-><init>(Lcom/batch/android/f0/b;)V

    iput-object v0, p0, Lcom/batch/android/BatchAlertContent;->e:Lcom/batch/android/BatchAlertContent$CTA;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAcceptCTA()Lcom/batch/android/BatchAlertContent$CTA;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchAlertContent;->e:Lcom/batch/android/BatchAlertContent$CTA;

    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchAlertContent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getCancelLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchAlertContent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchAlertContent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchAlertContent;->a:Ljava/lang/String;

    return-object p0
.end method
