.class public final synthetic Lcom/appsflyer/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/appsflyer/internal/p;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/p;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/appsflyer/internal/p;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/appsflyer/internal/p;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/appsflyer/internal/p;->b:I

    iget-object v1, p0, Lcom/appsflyer/internal/p;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/appsflyer/internal/p;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/appsflyer/internal/p;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/appsflyer/internal/AFi1aSDK;

    check-cast v2, Lcom/appsflyer/internal/AFi1gSDK;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v2, v1}, Lcom/appsflyer/internal/AFi1aSDK;->b(Lcom/appsflyer/internal/AFi1aSDK;Lcom/appsflyer/internal/AFi1gSDK;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/appsflyer/internal/AFi1aSDK;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v2, v1}, Lcom/appsflyer/internal/AFi1aSDK;->a(Lcom/appsflyer/internal/AFi1aSDK;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/appsflyer/internal/AFg1tSDK;

    check-cast v2, Lcom/appsflyer/internal/AFh1pSDK;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/appsflyer/internal/AFg1tSDK;->a(Lcom/appsflyer/internal/AFg1tSDK;Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/appsflyer/internal/AFe1ySDK;

    check-cast v2, Lcom/appsflyer/internal/AFd1cSDK;

    check-cast v1, Lcom/appsflyer/internal/AFe1wSDK;

    invoke-static {p0, v2, v1}, Lcom/appsflyer/internal/AFe1wSDK;->b(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;Lcom/appsflyer/internal/AFe1wSDK;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
