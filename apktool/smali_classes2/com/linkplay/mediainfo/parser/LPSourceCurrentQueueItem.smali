.class public Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;
.super Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;
.source "SourceFile"


# instance fields
.field public tracksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/mediainfo/LPMediaInfo;",
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

    iput-object v0, p0, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    return-void
.end method
