.class public final synthetic Lcom/appsflyer/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFd1jSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFd1jSDK;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/internal/l;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/l;->c:Lcom/appsflyer/internal/AFd1jSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/appsflyer/internal/l;->b:I

    iget-object p0, p0, Lcom/appsflyer/internal/l;->c:Lcom/appsflyer/internal/AFd1jSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1jSDK;->b(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1jSDK;->a(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
