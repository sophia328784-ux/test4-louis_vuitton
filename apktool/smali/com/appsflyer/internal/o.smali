.class public final synthetic Lcom/appsflyer/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFe1wSDK;

.field public final synthetic d:Lcom/appsflyer/internal/AFe1ySDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;I)V
    .locals 0

    iput p3, p0, Lcom/appsflyer/internal/o;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/o;->c:Lcom/appsflyer/internal/AFe1wSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/o;->d:Lcom/appsflyer/internal/AFe1ySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/appsflyer/internal/o;->b:I

    iget-object v1, p0, Lcom/appsflyer/internal/o;->d:Lcom/appsflyer/internal/AFe1ySDK;

    iget-object p0, p0, Lcom/appsflyer/internal/o;->c:Lcom/appsflyer/internal/AFe1wSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void

    :pswitch_0
    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->c(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
