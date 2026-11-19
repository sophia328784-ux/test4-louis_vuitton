.class public interface abstract Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchInboxFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNewNotificationsFetchedListener"
.end annotation


# virtual methods
.method public abstract onFetchFailure(Ljava/lang/String;)V
.end method

.method public abstract onFetchSuccess(Ljava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;ZZ)V"
        }
    .end annotation
.end method
