.class public final synthetic Lcom/appsflyer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/appsflyer/sdk_base/logger/LogTag;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZI)V
    .locals 0

    iput p4, p0, Lcom/appsflyer/a;->b:I

    iput-object p1, p0, Lcom/appsflyer/a;->c:Lcom/appsflyer/sdk_base/logger/LogTag;

    iput-object p2, p0, Lcom/appsflyer/a;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/appsflyer/a;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/appsflyer/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/appsflyer/a;->e:Z

    check-cast p1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    iget-object v1, p0, Lcom/appsflyer/a;->c:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object p0, p0, Lcom/appsflyer/a;->d:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/appsflyer/AFLogger;->c(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/appsflyer/a;->e:Z

    check-cast p1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    iget-object v1, p0, Lcom/appsflyer/a;->c:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object p0, p0, Lcom/appsflyer/a;->d:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/appsflyer/AFLogger;->j(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-boolean v0, p0, Lcom/appsflyer/a;->e:Z

    check-cast p1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    iget-object v1, p0, Lcom/appsflyer/a;->c:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object p0, p0, Lcom/appsflyer/a;->d:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/appsflyer/AFLogger;->h(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-boolean v0, p0, Lcom/appsflyer/a;->e:Z

    check-cast p1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    iget-object v1, p0, Lcom/appsflyer/a;->c:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object p0, p0, Lcom/appsflyer/a;->d:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/appsflyer/AFLogger;->b(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

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
