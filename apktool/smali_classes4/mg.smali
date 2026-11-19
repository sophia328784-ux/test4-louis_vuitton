.class public final synthetic Lmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;I)V
    .locals 0

    iput p3, p0, Lmg;->b:I

    iput-object p1, p0, Lmg;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lmg;->d:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmg;->b:I

    iget-object v1, p0, Lmg;->d:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    iget-object p0, p0, Lmg;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
