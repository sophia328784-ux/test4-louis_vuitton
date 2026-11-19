.class public final synthetic Llj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;I)V
    .locals 0

    iput p2, p0, Llj0;->b:I

    iput-object p1, p0, Llj0;->c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Llj0;->b:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Llj0;->c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    and-int/2addr p3, v2

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, p2, v3}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->b(ILandroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    and-int/2addr p3, v2

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, p2, v3}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->c(ILandroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
