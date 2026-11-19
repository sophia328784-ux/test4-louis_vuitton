.class public final synthetic Lim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;I)V
    .locals 0

    iput p2, p0, Lim;->b:I

    iput-object p1, p0, Lim;->c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lim;->b:I

    iget-object p0, p0, Lim;->c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    if-nez v1, :cond_0

    const-string v0, "unTrackUser skipped, no tracked view"

    const/4 v1, 0x0

    const-string v2, "ChatTracker"

    invoke-interface {p0, v2, v0, v1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->p()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
