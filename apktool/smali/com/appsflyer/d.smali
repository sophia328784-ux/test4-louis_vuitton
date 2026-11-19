.class public final synthetic Lcom/appsflyer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:[Lcom/appsflyer/sdk_base/logger/AFLoggerBase;


# direct methods
.method public synthetic constructor <init>([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/d;->b:I

    iput-object p1, p0, Lcom/appsflyer/d;->c:[Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/appsflyer/d;->b:I

    iget-object p0, p0, Lcom/appsflyer/d;->c:[Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->l([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->m([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
