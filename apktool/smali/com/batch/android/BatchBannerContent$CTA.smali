.class public Lcom/batch/android/BatchBannerContent$CTA;
.super Lcom/batch/android/BatchBannerContent$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchBannerContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTA"
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/batch/android/f0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/BatchBannerContent$Action;-><init>(Lcom/batch/android/f0/a;)V

    iget-object p1, p1, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/batch/android/BatchBannerContent$CTA;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchBannerContent$CTA;->c:Ljava/lang/String;

    return-object p0
.end method
