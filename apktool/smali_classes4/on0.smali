.class public final synthetic Lon0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput p1, p0, Lon0;->b:I

    iput-object p3, p0, Lon0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lon0;->d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lon0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lon0;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lon0;->d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lon0;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lon0;->d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
