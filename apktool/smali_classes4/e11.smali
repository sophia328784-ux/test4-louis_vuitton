.class public final synthetic Le11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;ILjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;I)V
    .locals 0

    iput p7, p0, Le11;->b:I

    iput-object p1, p0, Le11;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iput-object p4, p0, Le11;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Le11;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Le11;->f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le11;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Le11;->f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v3, p0, Le11;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Le11;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Le11;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
