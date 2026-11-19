.class public final synthetic Lng0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/models/SearchListState;I)V
    .locals 0

    iput p2, p0, Lng0;->b:I

    iput-object p1, p0, Lng0;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lng0;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lng0;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
