.class public final synthetic Lis0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;I)V
    .locals 0

    iput p3, p0, Lis0;->b:I

    iput-object p1, p0, Lis0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lis0;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lis0;->b:I

    iget-object v1, p0, Lis0;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object p0, p0, Lis0;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
