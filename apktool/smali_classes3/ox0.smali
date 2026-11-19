.class public final synthetic Lox0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/ConcurrentHashMap;I)V
    .locals 0

    iput p3, p0, Lox0;->a:I

    iput-object p1, p0, Lox0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p2, p0, Lox0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lox0;->a:I

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    iget-object v3, p0, Lox0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lox0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lpx0;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[getListBySyncServerProtocol] message digest saved. messageDigests="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance v0, Lpx0;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[syncServerByProtocol] message digest saved. messageDigests="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
