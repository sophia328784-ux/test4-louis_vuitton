.class public final synthetic Lcom/appsflyer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p2, p0, Lcom/appsflyer/b;->b:I

    iput-object p1, p0, Lcom/appsflyer/b;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/appsflyer/b;->b:I

    iget-object p0, p0, Lcom/appsflyer/b;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/appsflyer/a;

    :goto_0
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->n(Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_1
    check-cast p0, Lc61;

    goto :goto_0

    :pswitch_2
    check-cast p0, Lcom/appsflyer/c;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
