.class public final synthetic Lps0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lps0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps0;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iput-object p2, p0, Lps0;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;I)V
    .locals 0

    .line 11
    iput p3, p0, Lps0;->b:I

    iput-object p1, p0, Lps0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lps0;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lps0;->b:I

    iget-object v1, p0, Lps0;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iget-object p0, p0, Lps0;->d:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
