.class public final synthetic Lcz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;I)V
    .locals 0

    iput p2, p0, Lcz0;->b:I

    iput-object p1, p0, Lcz0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcz0;->b:I

    iget-object p0, p0, Lcz0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->progress(D)V

    return-void

    :pswitch_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
