.class public final synthetic Lcom/appsflyer/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/internal/AFe1iSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFe1iSDK;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/internal/n;->b:I

    iput-object p1, p0, Lcom/appsflyer/internal/n;->c:Lcom/appsflyer/internal/AFe1iSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/appsflyer/internal/n;->b:I

    iget-object p0, p0, Lcom/appsflyer/internal/n;->c:Lcom/appsflyer/internal/AFe1iSDK;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFe1iSDK;->a(Lcom/appsflyer/internal/AFe1iSDK;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFe1iSDK;->b(Lcom/appsflyer/internal/AFe1iSDK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
