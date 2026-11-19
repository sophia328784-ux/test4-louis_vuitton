.class public final synthetic Lcom/appsflyer/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFj1vSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFj1vSDK;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/internal/v;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/v;->c:Lcom/appsflyer/internal/AFj1vSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/appsflyer/internal/v;->b:I

    iget-object p0, p0, Lcom/appsflyer/internal/v;->c:Lcom/appsflyer/internal/AFj1vSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1vSDK;->c(Lcom/appsflyer/internal/AFj1vSDK;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFj1vSDK;->a(Lcom/appsflyer/internal/AFj1vSDK;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFj1vSDK;->b(Lcom/appsflyer/internal/AFj1vSDK;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
