.class public final synthetic Lcom/batch/android/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/batch/android/m;->b:I

    iput-object p3, p0, Lcom/batch/android/m;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/batch/android/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/batch/android/m;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/batch/android/m;->d:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    iget-object p0, p0, Lcom/batch/android/m;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/batch/android/BatchInboxFetcher$b;->c(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/batch/android/m;->d:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    iget-object p0, p0, Lcom/batch/android/m;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/batch/android/BatchInboxFetcher$a;->c(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
