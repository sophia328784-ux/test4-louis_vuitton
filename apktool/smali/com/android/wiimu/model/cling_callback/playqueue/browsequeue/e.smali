.class public Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/e;
.super Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/e;->a:Ljava/util/List;

    return-void
.end method
