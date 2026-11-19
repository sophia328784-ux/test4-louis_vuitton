.class Lcom/batch/android/q/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/q/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/f;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/q/f$c;->a:Lcom/batch/android/q/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFetchSuccess(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method
