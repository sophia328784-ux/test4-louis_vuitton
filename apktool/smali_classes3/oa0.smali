.class public final synthetic Loa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;I)V
    .locals 0

    iput p2, p0, Loa0;->a:I

    iput-object p1, p0, Loa0;->b:Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Loa0;->a:I

    const-string v1, "LookHandler"

    iget-object p0, p0, Loa0;->b:Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[getLookInfosWithGuids] shouldn\'t failed!!!"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;->onComplete(Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[getLookInfosWithGuids] success, result.size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {p1, v0, v2, v1}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;->onComplete(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
