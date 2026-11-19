.class public final synthetic Lkm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;I)V
    .locals 0

    iput p3, p0, Lkm0;->b:I

    iput-object p1, p0, Lkm0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkm0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkm0;->b:I

    iget-object v1, p0, Lkm0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    iget-object p0, p0, Lkm0;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->b:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->b:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
