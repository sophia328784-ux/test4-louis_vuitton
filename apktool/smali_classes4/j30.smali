.class public final synthetic Lj30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;ILcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;I)V
    .locals 0

    iput p4, p0, Lj30;->b:I

    iput-object p1, p0, Lj30;->c:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Lj30;->d:I

    iput-object p3, p0, Lj30;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj30;->b:I

    iget-object v1, p0, Lj30;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;

    iget v2, p0, Lj30;->d:I

    iget-object p0, p0, Lj30;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
