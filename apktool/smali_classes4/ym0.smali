.class public final synthetic Lym0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/Map$Entry;I)V
    .locals 0

    iput p3, p0, Lym0;->b:I

    iput-object p1, p0, Lym0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lym0;->d:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lym0;->b:I

    iget-object v1, p0, Lym0;->d:Ljava/util/Map$Entry;

    iget-object p0, p0, Lym0;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MATERIAL:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->COLOR:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
