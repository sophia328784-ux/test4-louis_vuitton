.class public final synthetic Lcom/appsflyer/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFc1aSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFc1aSDK;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/internal/i;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/i;->c:Lcom/appsflyer/internal/AFc1aSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/appsflyer/internal/i;->b:I

    iget-object p0, p0, Lcom/appsflyer/internal/i;->c:Lcom/appsflyer/internal/AFc1aSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFc1aSDK;->c(Lcom/appsflyer/internal/AFc1aSDK;)Lcom/appsflyer/sdk_base/exception_manager/ExceptionManagerConfiguration;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1aSDK;->enableTCFDataCollection()Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1aSDK;->AFLogger()Lcom/appsflyer/internal/AFc1iSDK;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFc1aSDK;->a(Lcom/appsflyer/internal/AFc1aSDK;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
