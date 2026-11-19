.class public final synthetic Luo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFj1sSDK;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Luo0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo0;->d:Ljava/lang/Object;

    iput-object p2, p0, Luo0;->e:Ljava/lang/Object;

    iput-wide p3, p0, Luo0;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;JLandroidx/compose/runtime/MutableLongState;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Luo0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo0;->d:Ljava/lang/Object;

    iput-wide p2, p0, Luo0;->c:J

    iput-object p4, p0, Luo0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Luo0;->b:I

    iget-wide v1, p0, Luo0;->c:J

    iget-object v3, p0, Luo0;->e:Ljava/lang/Object;

    iget-object p0, p0, Luo0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/appsflyer/internal/AFj1sSDK;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, v1, v2}, Lcom/appsflyer/internal/AFj1sSDK;->c(Lcom/appsflyer/internal/AFj1sSDK;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Landroidx/compose/runtime/MutableLongState;

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;

    invoke-interface {v3}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;-><init>(J)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
