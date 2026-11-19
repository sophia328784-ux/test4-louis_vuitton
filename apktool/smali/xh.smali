.class public final synthetic Lxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

.field public final synthetic d:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V
    .locals 0

    iput p3, p0, Lxh;->b:I

    iput-object p1, p0, Lxh;->c:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    iput-object p2, p0, Lxh;->d:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxh;->b:I

    iget-object v1, p0, Lxh;->d:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    iget-object p0, p0, Lxh;->c:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
