.class public final synthetic Lcom/appsflyer/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFa1tSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFa1tSDK;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/internal/b;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/b;->c:Lcom/appsflyer/internal/AFa1tSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/appsflyer/internal/b;->b:I

    iget-object p0, p0, Lcom/appsflyer/internal/b;->c:Lcom/appsflyer/internal/AFa1tSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1tSDK;->a(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1tSDK;->c(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1tSDK;->f(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
