.class public final synthetic Lcom/appsflyer/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/appsflyer/internal/m;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/appsflyer/internal/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/appsflyer/internal/m;->b:I

    iget-object v1, p0, Lcom/appsflyer/internal/m;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/appsflyer/internal/m;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/appsflyer/internal/AFi1iSDK;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFi1iSDK;->a(Lcom/appsflyer/internal/AFi1iSDK;Landroid/content/Context;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/appsflyer/internal/AFi1gSDK;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFi1gSDK;->a(Lcom/appsflyer/internal/AFi1gSDK;Landroid/content/Context;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/appsflyer/internal/AFi1dSDK;

    check-cast v1, Landroid/hardware/SensorEvent;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFi1dSDK;->a(Lcom/appsflyer/internal/AFi1dSDK;Landroid/hardware/SensorEvent;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/appsflyer/internal/AFi1bSDK;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFi1bSDK;->a(Lcom/appsflyer/internal/AFi1bSDK;Landroid/content/Context;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/appsflyer/internal/AFi1aSDK;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFi1aSDK;->f(Lcom/appsflyer/internal/AFi1aSDK;Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/appsflyer/sdk_base/referrer/Referrer;

    check-cast v1, Lcom/appsflyer/internal/AFe1fSDK;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFe1fSDK;->a(Lcom/appsflyer/sdk_base/referrer/Referrer;Lcom/appsflyer/internal/AFe1fSDK;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
